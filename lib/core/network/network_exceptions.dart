import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;
  const factory NetworkExceptions.unauthorisedRequest() = UnauthorisedRequest;
  const factory NetworkExceptions.badRequest() = BadRequest;
  const factory NetworkExceptions.notFound(String reason) = NotFound;
  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;
  const factory NetworkExceptions.notAcceptable() = NotAcceptable;
  const factory NetworkExceptions.requestTimeout() = RequestTimeout;
  const factory NetworkExceptions.sendTimeout() = SendTimeout;
  const factory NetworkExceptions.conflict() = Conflict;
  const factory NetworkExceptions.internalServerError() = InternalServerError;
  const factory NetworkExceptions.notImplemented() = NotImplemented;
  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;
  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;
  const factory NetworkExceptions.formatException() = FormatException;
  const factory NetworkExceptions.unableToProcess() = UnableToProcess;
  const factory NetworkExceptions.defaultError(String error) = DefaultError;
  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  // ignore: prefer_constructors_over_static_methods
  static NetworkExceptions handleError(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.cancel:
          return const NetworkExceptions.requestCancelled();
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          return const NetworkExceptions.requestTimeout();
        case DioExceptionType.sendTimeout:
          return const NetworkExceptions.sendTimeout();
        case DioExceptionType.badResponse:
          switch (error.response?.statusCode) {
            case 400:
              return const NetworkExceptions.badRequest();
            case 401:
              return const NetworkExceptions.unauthorisedRequest();
            case 404:
              return NetworkExceptions.notFound(
                error.response?.statusMessage ?? 'Not found',
              );
            case 405:
              return const NetworkExceptions.methodNotAllowed();
            case 406:
              return const NetworkExceptions.notAcceptable();
            case 409:
              return const NetworkExceptions.conflict();
            case 500:
              return const NetworkExceptions.internalServerError();
            case 501:
              return const NetworkExceptions.notImplemented();
            case 503:
              return const NetworkExceptions.serviceUnavailable();
            default:
              return NetworkExceptions.defaultError(
                error.response?.statusMessage ?? 'Unknown error',
              );
          }
        case DioExceptionType.connectionError:
          return const NetworkExceptions.noInternetConnection();
        case DioExceptionType.badCertificate:
          return const NetworkExceptions.defaultError('Bad certificate');
        case DioExceptionType.unknown:
          return const NetworkExceptions.unexpectedError();
      }
    } else if (error is FormatException) {
      return const NetworkExceptions.formatException();
    } else {
      return const NetworkExceptions.unexpectedError();
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) => networkExceptions.when(
      requestCancelled: () => 'Requisição cancelada',
      unauthorisedRequest: () => 'Acesso não autorizado',
      badRequest: () => 'Requisição inválida',
      notFound: (reason) => 'Não encontrado: $reason',
      methodNotAllowed: () => 'Método não permitido',
      notAcceptable: () => 'Não aceitável',
      requestTimeout: () => 'Tempo de conexão esgotado',
      sendTimeout: () => 'Tempo de envio esgotado',
      conflict: () => 'Conflito na requisição',
      internalServerError: () => 'Erro interno do servidor',
      notImplemented: () => 'Não implementado',
      serviceUnavailable: () => 'Serviço indisponível',
      noInternetConnection: () => 'Sem conexão com a internet',
      formatException: () => 'Erro no formato dos dados',
      unableToProcess: () => 'Não foi possível processar',
      defaultError: (error) => error,
      unexpectedError: () => 'Erro inesperado',
    );
}