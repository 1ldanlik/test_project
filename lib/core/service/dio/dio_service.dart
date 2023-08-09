import 'package:dio/dio.dart';

const _defaultTimeout = Duration(seconds: 3);

class DioService {
  static Dio createClient() {
    final dioOptions = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      contentType: 'application/json',
      connectTimeout: _defaultTimeout,
      receiveTimeout: _defaultTimeout,
      sendTimeout: _defaultTimeout,
    );
    final dio = Dio(dioOptions);
    return dio;
  }
}
