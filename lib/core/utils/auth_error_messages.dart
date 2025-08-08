/// Utility class for handling authentication error messages
class AuthErrorMessages {
  static const String _invalidCredentials =
      'Usuário ou senha incorretos. Verifique suas credenciais.';
  static const String _networkError =
      'Erro de conexão. Verifique sua internet.';
  static const String _serverError =
      'Erro interno do servidor. Tente novamente.';
  static const String _timeoutError = 'Timeout na conexão. Tente novamente.';
  static const String _corsError =
      'Erro de CORS detectado. Configure o servidor para permitir CORS ou execute o app em modo mobile.';
  static const String _unauthorized = 'Não autorizado. Faça login novamente.';
  static const String _accessDenied = 'Acesso negado.';
  static const String _unexpectedError = 'Erro inesperado. Tente novamente.';

  /// Get user-friendly error message based on API response
  static String getAuthErrorMessage(dynamic errorData, int? statusCode) {
    if (errorData is Map<String, dynamic>) {
      final detail = errorData['detail'] as String?;

      // Handle specific authentication errors
      if (detail != null) {
        if (detail.contains('Usuário e/ou senha incorreto(s)') ||
            detail.contains('Invalid username or password') ||
            detail.contains('invalid login') ||
            detail.contains('credenciais')) {
          return _invalidCredentials;
        }
      }
    }

    // Handle status code specific errors
    switch (statusCode) {
      case 400:
        return 'Dados inválidos. Verifique as informações fornecidas.';
      case 401:
        return _invalidCredentials;
      case 403:
        return _accessDenied;
      case 404:
        return 'Recurso não encontrado.';
      case 500:
        return _serverError;
      case null:
        return _networkError;
      default:
        return _unexpectedError;
    }
  }

  /// Get CORS specific error message
  static String getCorsErrorMessage() => _corsError;

  /// Get network error message
  static String getNetworkErrorMessage() => _networkError;

  /// Get timeout error message
  static String getTimeoutErrorMessage() => _timeoutError;
}
