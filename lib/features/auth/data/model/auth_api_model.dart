import 'package:agriculture_equipment_rental_system/features/auth/domain/entity/auth_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_api_model.g.dart';

@JsonSerializable()
class AuthApiModel extends Equatable {
  @JsonKey(name: '_id')
  final String? id;
  final String fullName;
  final String phone;
  final String email;
  final String? image;
  final String? password;

  const AuthApiModel({
    this.id,
    required this.fullName,
    required this.phone,
    required this.email,
    required this.image,
    required this.password,
  });

  factory AuthApiModel.fromJson(Map<String, dynamic> json) =>
      _$AuthApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthApiModelToJson(this);

  // To Entity
  AuthEntity toEntity() {
    return AuthEntity(
      userId: id,
      fullName: fullName,
      phone: phone,
      email: email,
      image: image,
      password: password ?? '',
    );
  }

  // From Entity
  factory AuthApiModel.fromEntity(AuthEntity entity) {
    return AuthApiModel(
      fullName: entity.fullName,
      phone: entity.phone,
      email: entity.email,
      image: entity.image,
      password: entity.password,
    );
  }

  @override
  List<Object?> get props =>
      [id, fullName, phone, email, phone, image, password];
}
