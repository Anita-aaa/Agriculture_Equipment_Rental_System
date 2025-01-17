import 'package:agriculture_equipment_rental_system/app/usecase/usecase.dart';
import 'package:agriculture_equipment_rental_system/core/error/falure.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/entity/auth_entity.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class RegisterUserParams extends Equatable {
  final String fullName;
  final String email;
  final String password;

  const RegisterUserParams({
    required this.fullName,
    required this.email,
    required this.password,
  });

  //intial constructor
  const RegisterUserParams.initial({
    required this.fullName,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [fullName, email, password];
}

class RegisterUseCase implements UsecaseWithParams<void, RegisterUserParams> {
  final IAuthRepository repository;

  RegisterUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(RegisterUserParams params) {
    final authEntity = AuthEntity(
      fullName: params.fullName,
      email: params.email,
      password: params.password,
    );
    return repository.registerUser(authEntity);
  }
}
