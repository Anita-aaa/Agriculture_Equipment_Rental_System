import 'package:agriculture_equipment_rental_system/features/auth/domain/entity/auth_entity.dart';

abstract interface class IAuthDataSource {
  Future<String> loginUser(String username, String password);

  Future<void> registerUser(AuthEntity student);

  Future<AuthEntity> getCurrentUser();
}
