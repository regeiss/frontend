// ignore_for_file: only_throw_errors, prefer_expression_function_bodies

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../config/env.dart';
import '../config/logging/app_logger.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/connectivity_interceptor.dart';
import 'interceptors/login_interceptor.dart';
import 'network_exceptions.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = DioClient.instance;
  return dio;
});

class DioClient {
  static late Dio _dio;
  static bool _initialized = false;

  static Dio get instance {
    if (!_initialized) {
      _initialize();
    }
    return _dio;
  }

  static void _initialize() {
    // For web development, we'll use a different approach
    var baseUrl = Env.apiBaseUrl;

    // Check if running on web
    if (kIsWeb) {
      AppLogger.info('Running on web - CORS restrictions may apply');
      AppLogger.info(
          'Consider testing on mobile or using a local development server');
    }

    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(milliseconds: Env.apiTimeout),
        receiveTimeout: const Duration(milliseconds: Env.apiTimeout),
        sendTimeout: const Duration(milliseconds: Env.apiTimeout),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Accept-Language': 'pt-BR,pt;q=0.9,en;q=0.8',
          'User-Agent': 'CadastroUnificado/1.0.0',
        },
        validateStatus: (status) {
          // Don't throw for 401, let the app handle it
          return status != null && status < 500;
        },
      ),
    );

    // Add interceptors
    _dio.interceptors.addAll([
      ConnectivityInterceptor(),
      AuthInterceptor(),
      LoggingInterceptor(),
    ]);

    _initialized = true;
    AppLogger.info('DioClient initialized with base URL: ${Env.apiBaseUrl}');
  }

  // GET request
  static Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      throw NetworkExceptions.handleError(e);
    }
  }

  // POST request
  static Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      throw NetworkExceptions.handleError(e);
    }
  }

  // PUT request
  static Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      throw NetworkExceptions.handleError(e);
    }
  }

  // DELETE request
  static Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      throw NetworkExceptions.handleError(e);
    }
  }

  // PATCH request
  static Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.patch<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      throw NetworkExceptions.handleError(e);
    }
  }

  // Download file
  static Future<Response> download(
    String urlPath,
    String savePath, {
    ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await _dio.download(
        urlPath,
        savePath,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
        options: options,
      );
    } catch (e) {
      throw NetworkExceptions.handleError(e);
    }
  }

  // Upload file
  static Future<Response<T>> upload<T>(
    String path,
    FormData formData, {
    ProgressCallback? onSendProgress,
    Options? options,
  }) async {
    try {
      return await _dio.post<T>(
        path,
        data: formData,
        onSendProgress: onSendProgress,
        options: options,
      );
    } catch (e) {
      throw NetworkExceptions.handleError(e);
    }
  }
}
