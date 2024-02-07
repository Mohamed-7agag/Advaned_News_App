import '../errors/exception.dart';
import 'package:dio/dio.dart';
import 'end_points.dart';

class ApiServices {
  final Dio _dio;

//! Dio properties
  ApiServices(this._dio) {
    _dio.options.baseUrl = EndPoint.baseUrl;
    _dio.options.receiveDataWhenStatusError = true;
    _dio.options.connectTimeout = const Duration(seconds: 15);
    _dio.options.receiveTimeout = const Duration(seconds: 15);
    _dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }

//! Get Method
  Future get({required String category, required String country}) async {
    try {
      final response = await _dio.get('country=$country&category=$category');
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
