import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/config/logging/app_logger.dart';
import '../../../../../core/network/dio_provider.dart';

import '../../../../../core/storage/secure_storage.dart';
import '../../domain/entities/user.dart';

// CORREÇÃO: Mudança do provider para usar Dio em vez de DioClient
final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>(
    (ref) => AuthRemoteDataSourceImpl(ref.read(dioProvider)));

abstract class AuthRemoteDataSource {
  Future<AuthTokens> login(LoginRequest loginRequest);
  Future<User> register(RegisterRequest registerRequest);
  Future<void> logout();
  Future<AuthTokens> refreshToken(String refreshToken);
  Future<User> getUserProfile();
  Future<User> updateProfile({
    String? firstName,
    String? lastName,
    String? email,
  });
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  // CORREÇÃO: Mudança para usar Dio em vez de DioClient
  AuthRemoteDataSourceImpl(this._dio);
  final Dio _dio;

  @override
  Future<AuthTokens> login(LoginRequest loginRequest) async {
    try {
      AppLogger.network('Attempting login', data: loginRequest.toJson());
      AppLogger.info('Login URL: ${_dio.options.baseUrl}/auth/login/');

      // CORREÇÃO: Usar a instância _dio em vez dos métodos estáticos DioClient
      final response = await _dio.post(
        '/auth/login/',
        data: loginRequest.toJson(),
      );

      AppLogger.info('Login response status: ${response.statusCode}');
      AppLogger.info('Login response data: ${response.data}');

      // Handle different response formats
      if (response.statusCode == 200) {
        final data = response.data;

        // Check for different possible response formats
        String? accessToken;
        String? refreshToken;
        Map<String, dynamic>? userData;

        // Format 1: success field with token/refresh/user
        if (data['success'] == true) {
          accessToken = data['token'];
          refreshToken = data['refresh'];
          userData = data['user'];
        }
        // Format 2: direct access/refresh tokens (API format)
        else if (data['access'] != null) {
          accessToken = data['access'];
          refreshToken = data['refresh'];
          userData = data['user']; // May be null, we'll handle this
        }
        // Format 3: just token field
        else if (data['token'] != null) {
          accessToken = data['token'];
          refreshToken = data['refresh'];
          userData = data['user'];
        }

        if (accessToken != null) {
          // If no user data in response, we'll need to fetch it separately
          // For now, create a minimal user object or fetch user profile
          User user;
          if (userData != null) {
            user = User.fromJson(userData);
          } else {
            // Create a minimal user object - we'll fetch full profile later
            user = User(
              id: 0, // Will be updated when we fetch user profile
              username: '', // Will be updated when we fetch user profile
              email: '', // Will be updated when we fetch user profile
              isStaff: false, // Will be updated when we fetch user profile
              isActive: true, // Will be updated when we fetch user profile
              dateJoined:
                  DateTime.now(), // Will be updated when we fetch user profile
              name: '', // Will be updated when we fetch user profile
              firstName: '', // Will be updated when we fetch user profile
              lastName: '', // Will be updated when we fetch user profile
            );
          }

          final authTokens = AuthTokens(
            accessToken: accessToken,
            refreshToken: refreshToken ?? '',
            user: user,
          );

          AppLogger.info('Login successful - tokens received');
          return authTokens;
        } else {
          throw Exception('Invalid response format: missing access token');
        }
      } else {
        // Log the actual response for debugging
        AppLogger.error(
            'Login failed with status ${response.statusCode} - Response: ${response.data}');

        // Handle different error response formats
        var errorMessage = 'Login failed';

        if (response.data is Map<String, dynamic>) {
          final data = response.data as Map<String, dynamic>;

          // Try different possible error message fields
          if (data['message'] != null) {
            errorMessage = data['message'].toString();
          } else if (data['error'] != null) {
            errorMessage = data['error'].toString();
          } else if (data['detail'] != null) {
            errorMessage = data['detail'].toString();
          } else {
            errorMessage = 'Login failed with status ${response.statusCode}';
          }
        } else {
          errorMessage = 'Login failed with status ${response.statusCode}';
        }

        throw Exception(errorMessage);
      }
    } on DioException catch (e) {
      AppLogger.error('Login request failed with DioException', e);
      AppLogger.error('Error response: ${e.response?.data}');
      AppLogger.error('Error status: ${e.response?.statusCode}');

      // Provide more specific error messages
      String errorMessage = 'Login failed';

      if (e.response?.statusCode == 401) {
        errorMessage = 'Credenciais inválidas. Verifique seu usuário e senha.';
      } else if (e.response?.statusCode == 400) {
        errorMessage = 'Dados de login inválidos.';
      } else if (e.response?.statusCode == 500) {
        errorMessage = 'Erro interno do servidor. Tente novamente.';
      } else if (e.type == DioExceptionType.connectionTimeout) {
        errorMessage = 'Timeout na conexão. Verifique sua internet.';
      } else if (e.type == DioExceptionType.connectionError) {
        errorMessage = 'Erro de conexão. Verifique sua internet.';
      }

      throw Exception(errorMessage);
    } catch (e) {
      AppLogger.error('Login request failed with unexpected error', e);
      rethrow;
    }
  }

  @override
  Future<User> register(RegisterRequest registerRequest) async {
    try {
      AppLogger.network('Attempting registration',
          data: registerRequest.toJson());

      final response = await _dio.post(
        '/auth/register/',
        data: registerRequest.toJson(),
      );

      if (response.statusCode == 201) {
        final user = User.fromJson(response.data);
        AppLogger.info('Registration successful for user: ${user.username}');
        return user;
      } else {
        throw Exception('Registration failed');
      }
    } catch (e) {
      AppLogger.error('Registration request failed', e);
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      final refreshToken = await SecureStorage.getRefreshToken();

      if (refreshToken != null) {
        await _dio.post(
          '/auth/logout/',
          data: {'refresh': refreshToken},
        );
      }

      AppLogger.info('Logout request completed');
    } catch (e) {
      AppLogger.warning('Logout request failed: $e');
      // Don't rethrow as local logout should still work
    }
  }

  @override
  Future<AuthTokens> refreshToken(String refreshToken) async {
    try {
      AppLogger.network('Attempting token refresh');

      final response = await _dio.post(
        '/auth/refresh/',
        data: {'refresh': refreshToken},
      );

      if (response.statusCode == 200) {
        // Get user profile to include in auth tokens
        final userProfile = await getUserProfile();

        final authTokens = AuthTokens(
          accessToken: response.data['access'],
          refreshToken: response.data['refresh'] ?? refreshToken,
          user: userProfile,
        );

        AppLogger.info('Token refresh successful');
        return authTokens;
      } else {
        throw Exception('Token refresh failed');
      }
    } catch (e) {
      AppLogger.error('Token refresh request failed', e);
      rethrow;
    }
  }

  @override
  Future<User> getUserProfile() async {
    try {
      AppLogger.network('Fetching user profile');

      final response = await _dio.get('/auth/profile/');

      if (response.statusCode == 200) {
        final user = User.fromJson(response.data);
        AppLogger.info('User profile fetched successfully');
        return user;
      } else {
        throw Exception('Failed to fetch user profile');
      }
    } catch (e) {
      AppLogger.error('Get user profile request failed', e);
      rethrow;
    }
  }

  @override
  Future<User> updateProfile({
    String? firstName,
    String? lastName,
    String? email,
  }) async {
    try {
      final data = <String, dynamic>{};
      if (firstName != null) {
        data['first_name'] = firstName;
      }
      if (lastName != null) {
        data['last_name'] = lastName;
      }
      if (email != null) {
        data['email'] = email;
      }

      AppLogger.network('Updating user profile', data: data);

      final response = await _dio.patch(
        '/auth/profile/',
        data: data,
      );

      if (response.statusCode == 200) {
        final user = User.fromJson(response.data);
        AppLogger.info('Profile updated successfully');
        return user;
      } else {
        throw Exception('Failed to update profile');
      }
    } catch (e) {
      AppLogger.error('Update profile request failed', e);
      rethrow;
    }
  }

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      AppLogger.network('Attempting password change');

      final response = await _dio.post(
        '/auth/change-password/',
        data: {
          'current_password': currentPassword,
          'new_password': newPassword,
        },
      );

      if (response.statusCode == 200 && response.data['success'] == true) {
        AppLogger.info('Password changed successfully');
      } else {
        throw Exception(response.data['message'] ?? 'Password change failed');
      }
    } catch (e) {
      AppLogger.error('Change password request failed', e);
      rethrow;
    }
  }
}
