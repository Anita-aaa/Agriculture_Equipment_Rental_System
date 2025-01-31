import 'package:agriculture_equipment_rental_system/app/constants/api_endpoints.dart';
import 'package:agriculture_equipment_rental_system/core/network/dio_error_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  final Dio _dio;

  Dio get dio => _dio;
  ApiService(this._dio) {
    _dio
      ..options.baseUrl = ApiEndPoints.baseUrl
      ..options.connectTimeout = ApiEndPoints.connectionTimeout
      ..options.receiveTimeout = ApiEndPoints.receiveTimeout
      ..interceptors.add(DioErrorInterceptor())
      ..interceptors.add(PrettyDioLogger(
          requestHeader: true, requestBody: true, responseHeader: true))
      ..options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
  }
}
