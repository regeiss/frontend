import 'package:dio/dio.dart';
import '../../config/logging/app_logger.dart';
import '../../storage/secure_storage.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // Debug logging
    AppLogger.info('Request: ${options.method} ${options.path}');
    AppLogger.info('Headers: ${options.headers}');

    // Don't add authorization header for login/register requests
    if (options.path.contains('/auth/login/') ||
        options.path.contains('/auth/register/') ||
        options.path.contains('/auth/refresh/')) {
      AppLogger.info('Skipping auth header for auth endpoint');
      super.onRequest(options, handler);
      return;
    }

    // Add authorization header if token exists for other requests
    final token = await SecureStorage.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
      AppLogger.info('Added auth header for request');
    } else {
      AppLogger.info('No auth token available');
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401 Unauthorized errors
    if (err.response?.statusCode == 401) {
      AppLogger.warning('Unauthorized request - attempting token refresh');

      final refreshToken = await SecureStorage.getRefreshToken();
      if (refreshToken != null && refreshToken.isNotEmpty) {
        try {
          // Attempt to refresh token
          final newToken = await _refreshToken(refreshToken);
          if (newToken != null) {
            // Retry the original request with new token
            final options = err.requestOptions;
            options.headers['Authorization'] = 'Bearer $newToken';

            final dio = Dio();
            final response = await dio.fetch(options);
            return handler.resolve(response);
          }
        } catch (e) {
          AppLogger.error('Token refresh failed', e);
          await _clearTokensAndRedirectToLogin();
        }
      } else {
        await _clearTokensAndRedirectToLogin();
      }
    }

    super.onError(err, handler);
  }

  Future<String?> _refreshToken(String refreshToken) async {
    try {
      final dio = Dio();
      final response = await dio.post(
        '/auth/refresh/',
        data: {'refresh': refreshToken},
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final newAccessToken = data['access'] as String?;
        final newRefreshToken = data['refresh'] as String?;

        if (newAccessToken != null) {
          await SecureStorage.saveAccessToken(newAccessToken);
          if (newRefreshToken != null) {
            await SecureStorage.saveRefreshToken(newRefreshToken);
          }

          AppLogger.info('Token refreshed successfully');
          return newAccessToken;
        }
      }
    } catch (e) {
      AppLogger.error('Failed to refresh token', e);
    }

    return null;
  }

  Future<void> _clearTokensAndRedirectToLogin() async {
    await SecureStorage.clearTokens();

    // Note: Navigation should be handled by the app's auth state management
    // This is just for cleanup
    AppLogger.info('Tokens cleared - user needs to login again');
  }
}
