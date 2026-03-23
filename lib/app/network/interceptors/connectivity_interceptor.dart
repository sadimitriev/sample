import 'package:dio/dio.dart';
import 'package:sample/app/constants/error_key.dart';
import 'package:sample/app/network/services/connectivity_service.dart';

class ConnectivityInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final hasConnection = ConnectivityService().isConnected;

    if (!hasConnection) {
      handler.reject(
        DioException.requestCancelled(
          requestOptions: options,
          reason: ErrorKey.networkUnavailable,
        ),
      );
      return;
    }
    handler.next(options);
  }
}
