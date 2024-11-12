import 'package:dio/dio.dart';

class HttpClient {
  // Step 1: Create a private static instance of the class
  static final HttpClient _instance = HttpClient._internal();

  // Step 2: Expose the Dio instance
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'http://10.0.2.2:8000/api',
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 10),
  ));

  // Step 3: Private named constructor to prevent outside instantiation
  HttpClient._internal() {
    _dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
    ));
  }

  // Step 4: Public factory constructor that returns the singleton instance
  factory HttpClient() {
    return _instance;
  }

  // GET request method
  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      return await _dio.get(path, queryParameters: queryParameters);
    } on DioException catch (e) {
      throw Exception('Failed to load data: ${e.message}');
    }
  }

  // POST request method
  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    try {
      return await _dio.post(path, data: data);
    } on DioException catch (e) {
      throw Exception('Failed to post data: ${e.message}');
    }
  }
}
