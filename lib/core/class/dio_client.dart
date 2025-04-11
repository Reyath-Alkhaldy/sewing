import 'package:dio/dio.dart';
import 'package:sewing_1/core/constant/api_constant.dart';
 

class DioClient {
  static late Dio _dio;
  static DioClient? _singleton;
  Dio get instance => _dio;

  DioClient._() {
    _dio = createDioClient();
  }

  factory DioClient() {
    return _singleton ??= DioClient._();
  }

  Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.apiBaseUrl,
        receiveTimeout: const Duration(milliseconds: 2 * 15000), // 15 seconds
        connectTimeout: const Duration(milliseconds: 15000),
        sendTimeout: const Duration(milliseconds: 15000),
        headers: {
          Headers.acceptHeader: 'application/json',
          Headers.contentTypeHeader: 'application/json',
          // Headers.
        },
      ),
    );
    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
      requestBody: true,
    ));
    return dio;
  }
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = const Duration(milliseconds: 200 * 1000)
    ..options.receiveTimeout = const Duration(milliseconds: 200 * 1000);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}
