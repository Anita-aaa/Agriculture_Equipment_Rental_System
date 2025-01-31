import 'package:agriculture_equipment_rental_system/app/constants/hive_table_constant.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/entity/auth_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

part 'auth_hive_model.g.dart';

//dart run build_runner build -d
@HiveType(typeId: HiveTableConstant.studentTableId)
class AuthHiveModel extends Equatable {
  @HiveField(0)
  final String? customerId;
  @HiveField(1)
  final String fullName;
  @HiveField(2)
  final String phone;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String password;

  AuthHiveModel({
    String? customerId,
    required this.fullName,
    required this.phone,
    required this.email,
    required this.password,
  }) : customerId = customerId ?? const Uuid().v4();

  // Initial Constructor
  const AuthHiveModel.initial()
      : customerId = '',
        fullName = '',
        phone = '',
        email = '',
        password = '';

  // From Entity
  factory AuthHiveModel.fromEntity(AuthEntity entity) {
    return AuthHiveModel(
      customerId: entity.userId,
      fullName: entity.fullName,
      phone: entity.phone,
      email: entity.email,
      password: entity.password,
    );
  }

  // To Entity
  AuthEntity toEntity() {
    return AuthEntity(
      userId: customerId,
      fullName: fullName,
      phone: phone,
      email: email,
      password: password,
    );
  }

  @override
  List<Object?> get props => [customerId, fullName, phone, email, password];
}
