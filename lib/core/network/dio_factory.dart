import 'package:dio/dio.dart';

class DioFactory {
  Dio getDio() {
    var dio = Dio();

    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 35),
      sendTimeout: const Duration(seconds: 180),
      receiveTimeout: const Duration(seconds: 60),
    );

    return dio;
  }
}
