import 'package:dio/dio.dart';
import '../../config/env.dart';
import '../../config/logging/app_logger.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (Env.debugMode) {
      AppLogger.network(
        'REQUEST',
        method: options.method,
        url: '${options.baseUrl}${options.path}',
        data: _formatData(options.data),
      );
      
      if (options.queryParameters.isNotEmpty) {
        AppLogger.debug('Query Parameters: ${options.queryParameters}');
      }
      
      if (options.headers.isNotEmpty) {
        AppLogger.debug('Headers: ${_sanitizeHeaders(options.headers)}');
      }
    }
    
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (Env.debugMode) {
      AppLogger.network(
        'RESPONSE',
        method: response.requestOptions.method,
        url: '${response.requestOptions.baseUrl}${response.requestOptions.path}',
        statusCode: response.statusCode,
        data: _formatData(response.data),
      );
    }
    
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (Env.debugMode) {
      AppLogger.network(
        'ERROR',
        method: err.requestOptions.method,
        url: '${err.requestOptions.baseUrl}${err.requestOptions.path}',
        statusCode: err.response?.statusCode,
        data: _formatData(err.response?.data),
      );
      
      AppLogger.error(
        'Network Error: ${err.message}',
        err,
        err.stackTrace,
      );
    }
    
    super.onError(err, handler);
  }

  String _formatData(dynamic data) {
    if (data == null) {
      return 'null';
    }
    
    if (data is Map || data is List) {
      final dataStr = data.toString();
      return dataStr.length > 500 
          ? '${dataStr.substring(0, 500)}...[truncated]'
          : dataStr;
    }
    
    return data.toString();
  }

  Map<String, dynamic> _sanitizeHeaders(Map<String, dynamic> headers) {
    final sanitized = Map<String, dynamic>.from(headers);
    
    // Remove sensitive headers
    const sensitiveHeaders = [
      'authorization',
      'cookie',
      'x-api-key',
      'x-auth-token',
    ];
    
    for (final header in sensitiveHeaders) {
      if (sanitized.containsKey(header)) {
        sanitized[header] = '***REDACTED***';
      }
      if (sanitized.containsKey(header.toLowerCase())) {
        sanitized[header.toLowerCase()] = '***REDACTED***';
      }
    }
    
    return sanitized;
  }
}