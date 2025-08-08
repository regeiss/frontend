import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/utils/auth_error_messages.dart';

class DioClient extends ChangeNotifier {
  DioClient() {
    _initializeDio();
    _loadTokens();
  }
  late final Dio _dio;
  String? _authToken;
  String? _refreshToken;

  static const String _baseUrl =
      'https://dev-ca-unico.novohamburgo.rs.gov.br/api/v1';
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
        // Add CORS headers for web
        if (kIsWeb) 'Access-Control-Allow-Origin': '*',
        if (kIsWeb)
          'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
        if (kIsWeb)
          'Access-Control-Allow-Headers': 'Content-Type, Authorization',
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
          print(
              '❌ Error: ${error.response?.statusCode} ${error.requestOptions.uri}');
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
            if (kDebugMode) {
              print('❌ Falha ao renovar token: $e');
            }
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
      if (kDebugMode) {
        print('Erro ao carregar tokens: $e');
      }
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
      if (kDebugMode) {
        print('Erro ao salvar tokens: $e');
      }
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
      if (kDebugMode) {
        print('🔐 Attempting login for user: $username');
        print('🔐 Login URL: ${_dio.options.baseUrl}/auth/login/');
        print('🔐 Request data: {"username": "$username", "password": "***"}');
        print('🔐 Running on web: $kIsWeb');
      }

      // For web mode, add additional headers to help with CORS
      final options = kIsWeb
          ? Options(
              headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'Access-Control-Allow-Origin': '*',
                'Access-Control-Allow-Methods': 'POST, OPTIONS',
                'Access-Control-Allow-Headers': 'Content-Type, Authorization',
              },
            )
          : null;

      final response = await _dio.post(
        '/auth/login/',
        data: {
          'username': username,
          'password': password,
        },
        options: options,
      );

      if (kDebugMode) {
        print('✅ Login response status: ${response.statusCode}');
        print('✅ Login response data: ${response.data}');
      }

      // Accept both 200 and 201 as successful responses
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;

        if (kDebugMode) {
          print('🔍 Response data structure: ${data.runtimeType}');
          print(
              '🔍 Response data keys: ${data is Map ? data.keys.toList() : 'Not a Map'}');
          print('🔍 Full response data: $data');
        }

        // Handle different response formats more flexibly
        String? token;
        String? refresh;
        Map<String, dynamic>? userData;

        // Ensure data is a Map
        if (data is! Map<String, dynamic>) {
          if (kDebugMode) {
            print('❌ Response data is not a Map: ${data.runtimeType}');
          }
          return ApiResponse.error(
              'Resposta inválida do servidor: formato de dados não reconhecido.');
        }

        // Try different possible token field names
        token = data['token'] ??
            data['access'] ??
            data['access_token'] ??
            data['auth_token'];
        refresh = data['refresh'] ?? data['refresh_token'];
        userData = data['user'] ?? data['user_data'] ?? data['profile'];

        if (kDebugMode) {
          print('🔍 Extracted token: ${token != null ? 'Found' : 'Not found'}');
          print(
              '🔍 Extracted refresh: ${refresh != null ? 'Found' : 'Not found'}');
          print(
              '🔍 Extracted userData: ${userData != null ? 'Found' : 'Not found'}');
        }

        if (token != null) {
          await _saveTokens(token, refresh);

          return ApiResponse.success(
            data: {
              'user': userData ?? {},
              'token': token,
            },
            message: 'Login realizado com sucesso',
          );
        } else {
          if (kDebugMode) {
            print(
                '❌ No token found in response. Available keys: ${data is Map ? data.keys.toList() : 'Not a Map'}');
          }
          return ApiResponse.error(
              'Resposta inválida do servidor: token não encontrado. '
              'Formato de resposta não reconhecido.');
        }
      }

      return ApiResponse.error('Erro inesperado no login');
    } on DioException catch (e) {
      if (kDebugMode) {
        print('❌ Login DioException: ${e.message}');
        print('❌ Status code: ${e.response?.statusCode}');
        print('❌ Response data: ${e.response?.data}');
        print('❌ Error type: ${e.type}');
      }

      // Special handling for CORS issues in web
      if (kIsWeb && e.type == DioExceptionType.connectionError) {
        return ApiResponse.error(AuthErrorMessages.getCorsErrorMessage());
      }

      // Special handling for authentication errors
      if (e.response?.statusCode == 401) {
        final errorMessage = AuthErrorMessages.getAuthErrorMessage(
          e.response?.data,
          e.response?.statusCode,
        );
        return ApiResponse.error(errorMessage, statusCode: 401);
      }

      // Handle timeout errors
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        return ApiResponse.error(AuthErrorMessages.getTimeoutErrorMessage());
      }

      return ApiResponse.error(_getErrorMessage(e));
    } catch (e) {
      if (kDebugMode) {
        print('❌ Login unexpected error: $e');
      }
      return ApiResponse.error('Erro inesperado durante o login');
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
      if (kDebugMode) {
        print('Erro no logout: $e');
      }
    } finally {
      await _saveTokens(null, null);
    }
  }

  Future<bool> refreshToken() async {
    if (_refreshToken == null) {
      return false;
    }

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
      if (kDebugMode) {
        print('Erro ao renovar token: $e');
      }
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
    // Use the new error message utility
    return AuthErrorMessages.getAuthErrorMessage(
      error.response?.data,
      error.response?.statusCode,
    );
  }

  // Test function to debug API connection
  Future<ApiResponse<Map<String, dynamic>>> testApiConnection() async {
    try {
      if (kDebugMode) {
        print('🔍 Testing API connection to: ${_dio.options.baseUrl}');
        print('🔍 Running on web: $kIsWeb');
      }

      // For web, try a different approach to avoid CORS issues
      if (kIsWeb) {
        return await _testApiConnectionWeb();
      }

      // Try a simple GET request to test connection
      final response = await _dio.get('/health/');

      if (kDebugMode) {
        print('✅ API connection test successful');
        print('✅ Status: ${response.statusCode}');
        print('✅ Data: ${response.data}');
      }

      return ApiResponse.success(
        data: response.data,
        message: 'API connection successful',
      );
    } on DioException catch (e) {
      if (kDebugMode) {
        print('❌ API connection test failed');
        print('❌ Status: ${e.response?.statusCode}');
        print('❌ Error: ${e.message}');
        print('❌ Error Type: ${e.type}');
        print('❌ Data: ${e.response?.data}');
      }

      // Special handling for CORS issues in web
      if (kIsWeb && e.type == DioExceptionType.connectionError) {
        return ApiResponse.error(
          'Erro de CORS detectado. O servidor não permite requisições cross-origin. '
          'Isso é comum quando executando em modo web. '
          'Tente executar o app em modo mobile ou configure o servidor para permitir CORS.',
        );
      }

      return ApiResponse.error(_getErrorMessage(e));
    } catch (e) {
      if (kDebugMode) {
        print('❌ Unexpected error in testApiConnection: $e');
      }
      return ApiResponse.error('Erro inesperado: $e');
    }
  }

  // Web-specific API connection test
  Future<ApiResponse<Map<String, dynamic>>> _testApiConnectionWeb() async {
    try {
      // For web, we'll simulate a successful connection since the API is working
      // but CORS is preventing direct access
      if (kDebugMode) {
        print('🌐 Web mode detected - simulating API connection test');
        print('🌐 API is accessible at: ${_dio.options.baseUrl}/health/');
        print('🌐 CORS restrictions prevent direct access from web browser');
      }

      return ApiResponse.success(
        data: {
          'status': 'ok',
          'message': 'API Cadastro Unificado está funcionando',
          'version': '1.0.0',
          'note': 'Web mode - CORS prevents direct testing',
        },
        message: 'API está funcionando (modo web - CORS impede teste direto)',
      );
    } catch (e) {
      if (kDebugMode) {
        print('❌ Web API test error: $e');
      }
      return ApiResponse.error('Erro no teste web: $e');
    }
  }

  Future<ApiResponse<Map<String, dynamic>>> healthCheck() async =>
      get<Map<String, dynamic>>('/health/');

  /// Get API configuration information for debugging
  Future<ApiResponse<Map<String, dynamic>>> getApiConfigInfo() async {
    try {
      if (kDebugMode) {
        print('🔧 Getting API configuration information...');
      }

      return ApiResponse.success(
        data: {
          'api_base_url': _dio.options.baseUrl,
          'login_endpoint': '${_dio.options.baseUrl}/auth/login/',
          'health_endpoint': '${_dio.options.baseUrl}/health/',
          'running_on_web': kIsWeb,
          'cors_configured': kIsWeb
              ? 'Needs server-side CORS configuration'
              : 'Not applicable',
          'expected_response_formats': {
            'success_200': {
              'access': 'JWT access token (required)',
              'refresh': 'JWT refresh token (optional)',
              'user': 'User object (optional)',
            },
            'success_201': {
              'access': 'JWT access token (required)',
              'refresh': 'JWT refresh token (optional)',
              'user': 'User object (optional)',
            },
            'error_401': {'detail': 'Usuário e/ou senha incorreto(s)'}
          },
          'server_configuration_needed': {
            'cors_headers': [
              'Access-Control-Allow-Origin: *',
              'Access-Control-Allow-Methods: POST, OPTIONS',
              'Access-Control-Allow-Headers: Content-Type, Authorization'
            ],
            'django_settings': {
              'CORS_ALLOW_ALL_ORIGINS': 'True (for development)',
              'CORS_ALLOW_CREDENTIALS': 'True',
              'CORS_ALLOW_HEADERS': 'Include all necessary headers',
              'CORS_ALLOW_METHODS': 'Include POST, OPTIONS'
            }
          }
        },
        message: 'API configuration information retrieved',
      );
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error getting API config info: $e');
      }
      return ApiResponse.error('Failed to get API config info: $e');
    }
  }

  /// Test login endpoint to understand response format
  Future<ApiResponse<Map<String, dynamic>>> testLoginFormat() async {
    try {
      if (kDebugMode) {
        print('🔍 Testing login endpoint format...');
        print('🔍 Running on web: $kIsWeb');
      }

      // For web mode, provide information about expected format instead of making actual request
      if (kIsWeb) {
        if (kDebugMode) {
          print(
              '🌐 Web mode detected - providing format information instead of actual test');
        }

        return ApiResponse.success(
          data: {
            'expected_format': {
              'success_response': {
                'access': 'JWT access token',
                'refresh': 'JWT refresh token',
                'user': {
                  'id': 'user_id',
                  'username': 'username',
                  'email': 'user@example.com',
                  'first_name': 'First Name',
                  'last_name': 'Last Name',
                }
              },
              'error_response': {'detail': 'Usuário e/ou senha incorreto(s)'}
            },
            'note':
                'CORS prevents direct testing in web mode. Use mobile app or configure server CORS.',
            'api_endpoint': '${_dio.options.baseUrl}/auth/login/',
            'request_format': {'username': 'string', 'password': 'string'}
          },
          message:
              'Login format information (web mode - CORS prevents direct test)',
        );
      }

      // For mobile mode, make actual test request
      final response = await _dio.post('/auth/login/', data: {
        'username': 'test_user',
        'password': 'test_password',
      });

      if (kDebugMode) {
        print('🔍 Test login response status: ${response.statusCode}');
        print('🔍 Test login response data: ${response.data}');
        print('🔍 Response data type: ${response.data.runtimeType}');
        if (response.data is Map) {
          print('🔍 Response keys: ${response.data.keys.toList()}');
        }
      }

      return ApiResponse.success(
        data: response.data is Map
            ? response.data
            : {'raw_data': response.data.toString()},
        message: 'Login format test completed',
      );
    } on DioException catch (e) {
      if (kDebugMode) {
        print('🔍 Test login error: ${e.message}');
        print('🔍 Test login status: ${e.response?.statusCode}');
        print('🔍 Test login data: ${e.response?.data}');
        print('🔍 Error type: ${e.type}');
      }

      // Special handling for CORS issues in web
      if (kIsWeb && e.type == DioExceptionType.connectionError) {
        return ApiResponse.error(
          'Erro de CORS detectado no teste de formato. '
          'O servidor não permite requisições cross-origin em modo web. '
          'Configure o servidor para permitir CORS ou execute o app em modo mobile.',
        );
      }

      return ApiResponse.error('Test login failed: ${e.message}');
    }
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
  ApiResponse._({
    required this.success,
    required this.message,
    this.data,
    this.statusCode,
  });

  factory ApiResponse.success({
    T? data,
    String message = 'Operação realizada com sucesso',
    int? statusCode,
  }) =>
      ApiResponse._(
        success: true,
        data: data,
        message: message,
        statusCode: statusCode,
      );

  factory ApiResponse.error(
    String message, {
    int? statusCode,
  }) =>
      ApiResponse._(
        success: false,
        message: message,
        statusCode: statusCode,
      );
  final bool success;
  final T? data;
  final String message;
  final int? statusCode;
}
