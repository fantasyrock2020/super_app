import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioClient {
  final Dio _dio;

  DioClient()
      : _dio = Dio()
          ..options.baseUrl = 'https://api.openweathermap.org/data/2.5'
          ..interceptors.add(LogInterceptor(
            request: true,
            requestHeader: true,
            requestBody: true,
            responseHeader: true,
            responseBody: true,
            error: true,
          ));

  Dio get dio => _dio;
}
