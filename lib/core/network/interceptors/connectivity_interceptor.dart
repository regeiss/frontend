import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import '../../config/logging/app_logger.dart';

class ConnectivityInterceptor extends Interceptor {
  final Connectivity _connectivity = Connectivity();

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    
    if (connectivityResult.contains(ConnectivityResult.none)) {
      AppLogger.warning('No internet connection available');
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.connectionError,
          message: 'No internet connection',
        ),
      );
    }
    
    // Log connection type for debugging
    if (connectivityResult.contains(ConnectivityResult.wifi)) {
      AppLogger.debug('Connected via WiFi');
    } else if (connectivityResult.contains(ConnectivityResult.mobile)) {
      AppLogger.debug('Connected via Mobile Data');
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      AppLogger.debug('Connected via Ethernet');
    }
    
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionError) {
      AppLogger.error('Connection error occurred', err);
    }
    
    super.onError(err, handler);
  }
}