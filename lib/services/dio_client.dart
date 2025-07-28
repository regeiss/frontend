import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioClient extends ChangeNotifier {

  DioClient() {
    _initializeDio();
    _loadTokens();
  }
  late final Dio _dio;
  String? _authToken;
  String? _refreshToken;
  
  static const String _baseUrl = 'http://10.13.65.37:8001/api/v1';
  static const String _tokenKey = 'auth_token';
  static const String _refreshTokenKey = 'refresh_token';

  // Getter para acessar a instância do Dio
  Dio get dio => _dio;

  // Status de autenticação
  bool get isAuthenticated => _authToken != null;
  String? get authToken => _authToken;

  void _initializeDio() {
    _dio = Dio(BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    _setupInterceptors();
  }

  void _setupInterceptors() {
    // Request Interceptor - Adiciona token automaticamente
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Adicionar token se disponível
        if (_authToken != null) {
          options.headers['Authorization'] = 'Bearer $_authToken';
        }

        // Log para debug
        if (kDebugMode) {
          print('🔄 ${options.method} ${options.uri}');
          if (options.data != null) {
            print('📤 Request Data: ${options.data}');
          }
        }

        handler.next(options);
      },
      
      onResponse: (response, handler) {
        // Log para debug
        if (kDebugMode) {
          print('✅ ${response.statusCode} ${response.requestOptions.uri}');
          print('📥 Response: ${response.data}');
        }
        handler.next(response);
      },
      
      onError: (error, handler) async {
        if (kDebugMode) {
          print('❌ Error: ${error.response?.statusCode} ${error.requestOptions.uri}');
          print('❌ Error Data: ${error.response?.data}');
        }

        // Auto-renovação de token em caso de 401
        if (error.response?.statusCode == 401 && _refreshToken != null) {
          try {
            await refreshToken();
            // Repetir requisição original com novo token
            final clonedRequest = error.requestOptions;
            clonedRequest.headers['Authorization'] = 'Bearer $_authToken';
            final response = await _dio.fetch(clonedRequest);
            handler.resolve(response);
            return;
          } catch (e) {
            if (kDebugMode) print('❌ Falha ao renovar token: $e');
            await logout();
            notifyListeners();
          }
        }

        handler.next(error);
      },
    ));
  }

  Future<void> _loadTokens() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      _authToken = prefs.getString(_tokenKey);
      _refreshToken = prefs.getString(_refreshTokenKey);
      
      if (_authToken != null) {
        notifyListeners();
      }
    } catch (e) {
      if (kDebugMode) print('Erro ao carregar tokens: $e');
    }
  }

  Future<void> _saveTokens(String? token, String? refreshToken) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      _authToken = token;
      _refreshToken = refreshToken;

      if (token != null) {
        await prefs.setString(_tokenKey, token);
      } else {
        await prefs.remove(_tokenKey);
      }

      if (refreshToken != null) {
        await prefs.setString(_refreshTokenKey, refreshToken);
      } else {
        await prefs.remove(_refreshTokenKey);
      }

      notifyListeners();
    } catch (e) {
      if (kDebugMode) print('Erro ao salvar tokens: $e');
    }
  }

  // ============================================================================
  // MÉTODOS DE AUTENTICAÇÃO
  // ============================================================================

  Future<ApiResponse<Map<String, dynamic>>> login(
    String username, 
    String password,
  ) async {
    try {
      final response = await _dio.post('/auth/login/', data: {
        'username': username,
        'password': password,
      });

      if (response.statusCode == 200) {
        final data = response.data;
        await _saveTokens(data['token'], data['refresh']);
        
        return ApiResponse.success(
          data: {
            'user': data['user'],
            'token': data['token'],
          },
          message: 'Login realizado com sucesso',
        );
      }

      return ApiResponse.error('Erro inesperado no login');
    } on DioException catch (e) {
      return ApiResponse.error(_getErrorMessage(e));
    }
  }

  Future<void> logout() async {
    try {
      if (_refreshToken != null) {
        await _dio.post('/auth/logout/', data: {
          'refresh': _refreshToken,
        });
      }
    } catch (e) {
      if (kDebugMode) print('Erro no logout: $e');
    } finally {
      await _saveTokens(null, null);
    }
  }

  Future<bool> refreshToken() async {
    if (_refreshToken == null) return false;

    try {
      final response = await _dio.post('/auth/refresh/', data: {
        'refresh': _refreshToken,
      });

      if (response.statusCode == 200) {
        final newToken = response.data['access'];
        await _saveTokens(newToken, _refreshToken);
        return true;
      }
    } catch (e) {
      if (kDebugMode) print('Erro ao renovar token: $e');
    }

    return false;
  }

  // ============================================================================
  // MÉTODOS HTTP GENÉRICOS
  // ============================================================================

  Future<ApiResponse<T>> get<T>(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParameters,
        options: options,
      );
      
      return ApiResponse.success(data: response.data as T);
    } on DioException catch (e) {
      return ApiResponse.error(_getErrorMessage(e));
    }
  }

  Future<ApiResponse<T>> post<T>(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      
      return ApiResponse.success(data: response.data as T);
    } on DioException catch (e) {
      return ApiResponse.error(_getErrorMessage(e));
    }
  }

  Future<ApiResponse<T>> put<T>(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.put(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      
      return ApiResponse.success(data: response.data as T);
    } on DioException catch (e) {
      return ApiResponse.error(_getErrorMessage(e));
    }
  }

  Future<ApiResponse<T>> delete<T>(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      
      return ApiResponse.success(data: response.data as T);
    } on DioException catch (e) {
      return ApiResponse.error(_getErrorMessage(e));
    }
  }

  // ============================================================================
  // MÉTODOS UTILITÁRIOS
  // ============================================================================

  String _getErrorMessage(DioException error) {
    String message = 'Erro inesperado';

    if (error.response?.data is Map) {
      final errorData = error.response!.data as Map<String, dynamic>;

      // Extrai mensagem de erro da resposta
      if (errorData.containsKey('message')) {
        message = errorData['message'];
      } else if (errorData.containsKey('detail')) {
        message = errorData['detail'];
      } else if (errorData.containsKey('non_field_errors')) {
        final errors = errorData['non_field_errors'] as List;
        if (errors.isNotEmpty) {
          message = errors.first.toString();
        }
      } else {
        // Busca primeiro erro em qualquer campo
        for (final value in errorData.values) {
          if (value is List && value.isNotEmpty) {
            message = value.first.toString();
            break;
          } else if (value is String) {
            message = value;
            break;
          }
        }
      }
    }

    // Mensagens específicas por status code
    switch (error.response?.statusCode) {
      case 400:
        message = message.isEmpty ? 'Dados inválidos' : message;
        break;
      case 401:
        message = 'Não autorizado. Faça login novamente.';
        break;
      case 403:
        message = 'Acesso negado';
        break;
      case 404:
        message = 'Recurso não encontrado';
        break;
      case 500:
        message = 'Erro interno do servidor';
        break;
      case null:
        if (error.type == DioExceptionType.connectionTimeout ||
            error.type == DioExceptionType.receiveTimeout) {
          message = 'Timeout na conexão';
        } else if (error.type == DioExceptionType.connectionError) {
          message = 'Erro de conexão. Verifique sua internet.';
        }
        break;
    }

    return message;
  }

  Future<ApiResponse<Map<String, dynamic>>> healthCheck() async {
    return await get<Map<String, dynamic>>('/health/');
  }

  // ============================================================================
  // DISPOSE
  // ============================================================================

  @override
  void dispose() {
    _dio.close();
    super.dispose();
  }
}

// ============================================================================
// CLASSE DE RESPOSTA DA API
// ============================================================================

class ApiResponse<T> {
  final bool success;
  final T? data;
  final String message;
  final int? statusCode;

  ApiResponse._({
    required this.success,
    this.data,
    required this.message,
    this.statusCode,
  });

  factory ApiResponse.success({
    T? data,
    String message = 'Operação realizada com sucesso',
    int? statusCode,
  }) {
    return ApiResponse._(
      success: true,
      data: data,
      message: message,
      statusCode: statusCode,
    );
  }

  factory ApiResponse.error(
    String message, {
    int? statusCode,
  }) {
    return ApiResponse._(
      success: false,
      message: message,
      statusCode: statusCode,
    );
  }
}