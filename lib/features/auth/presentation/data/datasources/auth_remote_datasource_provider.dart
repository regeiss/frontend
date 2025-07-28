import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/config/logging/app_logger.dart';
import '../../../../../core/network/dio_provider.dart';

import '../../../../../core/storage/secure_storage.dart';
import '../../domain/entities/user.dart';

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
  AuthRemoteDataSourceImpl(this._dioClient);
  final DioClient _dioClient;

  @override
  Future<AuthTokens> login(LoginRequest loginRequest) async {
    try {
      AppLogger.network('Attempting login', data: loginRequest.toJson());

      final response = await DioClient.post(
        '/auth/login/',
        data: loginRequest.toJson(),
      );

      if (response.statusCode == 200 && response.data['success'] == true) {
        final authTokens = AuthTokens(
          accessToken: response.data['token'],
          refreshToken: response.data['refresh'],
          user: User.fromJson(response.data['user']),
        );

        AppLogger.info(
            'Login successful for user: ${authTokens.user.username}');
        return authTokens;
      } else {
        throw Exception(response.data['message'] ?? 'Login failed');
      }
    } catch (e) {
      AppLogger.error('Login request failed', e);
      rethrow;
    }
  }

  @override
  Future<User> register(RegisterRequest registerRequest) async {
    try {
      AppLogger.network('Attempting registration',
          data: registerRequest.toJson());

      final response = await DioClient.post(
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
        await DioClient.post(
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

      final response = await DioClient.post(
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

      final response = await DioClient.get('/auth/profile/');

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
      if (firstName != null) data['first_name'] = firstName;
      if (lastName != null) data['last_name'] = lastName;
      if (email != null) data['email'] = email;

      AppLogger.network('Updating user profile', data: data);

      final response = await DioClient.patch(
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

      final response = await DioClient.post(
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
