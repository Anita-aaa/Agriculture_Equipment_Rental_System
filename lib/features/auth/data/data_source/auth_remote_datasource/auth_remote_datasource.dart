import 'package:agriculture_equipment_rental_system/app/constants/api_endpoints.dart';
import 'package:agriculture_equipment_rental_system/features/auth/data/data_source/auth_data_source.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/entity/auth_entity.dart';
import 'package:dio/dio.dart';

class AuthRemoteDatasource implements IAuthDataSource {
  final Dio _dio;
  // AuthRemoteDatasource(this._dio, {required Dio dio});

  AuthRemoteDatasource({
    required Dio dio,
  }) : _dio = dio;

  @override
  Future<AuthEntity> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<String> loginUser(String email, String password) async {
    try {
      Response response = await _dio.post(
        ApiEndPoints.login,
        data: {
          "username": email,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        return response.data['token'];
      } else {
        throw Exception("Login failed: ${response.statusMessage}");
      }
    } on DioException catch (e) {
      throw Exception("Dio Error: ${e.message}");
    } catch (e) {
      throw Exception("An error occurred: ${e.toString()}");
    }
  }

  @override
  Future<void> registerUser(AuthEntity student) async {
    try {
      Response response = await _dio.post(ApiEndPoints.register, data: {
        "fname": student.fullName,
        "phone": student.phone,
        "email": student.email,
        "password": student.password,
      });
      if (response.statusCode == 201) {
        return;
      } else {
        throw Exception(response.statusMessage);
      }
    } on DioException catch (e) {
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }
}
