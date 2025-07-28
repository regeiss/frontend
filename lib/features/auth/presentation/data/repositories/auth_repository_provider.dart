import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/config/logging/app_logger.dart';

import '../../domain/entities/user.dart';
import '../datasources/auth_remote_datasource_provider.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) => AuthRepositoryImpl(ref.read(authRemoteDataSourceProvider)));

abstract class AuthRepository {
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

class AuthRepositoryImpl implements AuthRepository {

  AuthRepositoryImpl(this._remoteDataSource);
  final AuthRemoteDataSource _remoteDataSource;

  @override
  Future<AuthTokens> login(LoginRequest loginRequest) async {
    try {
      AppLogger.info('Repository: Attempting login for ${loginRequest.username}');
      
      final result = await _remoteDataSource.login(loginRequest);
      
      AppLogger.info('Repository: Login successful');
      return result;
    } catch (e) {
      AppLogger.error('Repository: Login failed', e);
      rethrow;
    }
  }

  @override
  Future<User> register(RegisterRequest registerRequest) async {
    try {
      AppLogger.info('Repository: Attempting registration for ${registerRequest.username}');
      
      final result = await _remoteDataSource.register(registerRequest);
      
      AppLogger.info('Repository: Registration successful');
      return result;
    } catch (e) {
      AppLogger.error('Repository: Registration failed', e);
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      AppLogger.info('Repository: Attempting logout');
      
      await _remoteDataSource.logout();
      
      AppLogger.info('Repository: Logout successful');
    } catch (e) {
      AppLogger.error('Repository: Logout failed', e);
      rethrow;
    }
  }

  @override
  Future<AuthTokens> refreshToken(String refreshToken) async {
    try {
      AppLogger.info('Repository: Attempting token refresh');
      
      final result = await _remoteDataSource.refreshToken(refreshToken);
      
      AppLogger.info('Repository: Token refresh successful');
      return result;
    } catch (e) {
      AppLogger.error('Repository: Token refresh failed', e);
      rethrow;
    }
  }

  @override
  Future<User> getUserProfile() async {
    try {
      AppLogger.info('Repository: Fetching user profile');
      
      final result = await _remoteDataSource.getUserProfile();
      
      AppLogger.info('Repository: User profile fetched successfully');
      return result;
    } catch (e) {
      AppLogger.error('Repository: Failed to fetch user profile', e);
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
      AppLogger.info('Repository: Updating user profile');
      
      final result = await _remoteDataSource.updateProfile(
        firstName: firstName,
        lastName: lastName,
        email: email,
      );
      
      AppLogger.info('Repository: Profile updated successfully');
      return result;
    } catch (e) {
      AppLogger.error('Repository: Profile update failed', e);
      rethrow;
    }
  }

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      AppLogger.info('Repository: Attempting password change');
      
      await _remoteDataSource.changePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
      
      AppLogger.info('Repository: Password changed successfully');
    } catch (e) {
      AppLogger.error('Repository: Password change failed', e);
      rethrow;
    }
  }
}