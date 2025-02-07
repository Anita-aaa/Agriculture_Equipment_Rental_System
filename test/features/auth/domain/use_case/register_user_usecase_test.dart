// import 'package:agriculture_equipment_rental_system/core/error/falure.dart';
// import 'package:agriculture_equipment_rental_system/features/auth/domain/entity/auth_entity.dart';
// import 'package:agriculture_equipment_rental_system/features/auth/domain/repository/auth_repository.dart';
// import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/register_user_usecase.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// // Mock class for the repository
// class MockAuthRepository extends Mock implements IAuthRepository {}

// void main() {
//   late MockAuthRepository mockRepository;
//   late RegisterUseCase registerUseCase;

//   // Register fallback value for AuthEntity
//   setUpAll(() {
//     registerFallbackValue(const AuthEntity(
//       fullName: "Test User",
//       phone: "0000000000",
//       email: "test@example.com",
//       password: "password123",
//       image: null,
//     ));
//   });

//   setUp(() {
//     mockRepository = MockAuthRepository();
//     registerUseCase = RegisterUseCase(mockRepository);
//   });

//   const userParams = RegisterUserParams(
//     fullName: "John Doe",
//     phone: "1234567890",
//     email: "johndoe@example.com",
//     password: "securePassword123",
//     image: null,
//   );

//   final authEntity = AuthEntity(
//     fullName: userParams.fullName,
//     phone: userParams.phone,
//     email: userParams.email,
//     password: userParams.password,
//     image: userParams.image,
//   );

//   // Test for successful user registration
//   test('should register user successfully', () async {
//     when(() => mockRepository.registerUser(any()))
//         .thenAnswer((_) async => const Right(null));

//     final result = await registerUseCase(userParams);

//     expect(result, equals(const Right(null)));
//     verify(() => mockRepository.registerUser(authEntity)).called(1);
//     verifyNoMoreInteractions(mockRepository);
//   });

//   // Test for failure scenario with specific failure message
//   test('should return ServerFailure when registration fails', () async {
//     when(() => mockRepository.registerUser(any())).thenAnswer(
//         (_) async => const Left(ServerFailure(message: "Registration failed")));

//     final result = await registerUseCase(userParams);

//     expect(result,
//         equals(const Left(ServerFailure(message: "Registration failed"))));
//     verify(() => mockRepository.registerUser(authEntity)).called(1);
//     verifyNoMoreInteractions(mockRepository);
//   });

//   // Test for failure scenario with another type of failure
//   test('should return ApiFailure when invalid email or password', () async {
//     when(() => mockRepository.registerUser(any())).thenAnswer((_) async =>
//         const Left(ApiFailure(message: 'Invalid email or password')));

//     final result = await registerUseCase(userParams);

//     expect(result,
//         equals(const Left(ApiFailure(message: 'Invalid email or password'))));
//     verify(() => mockRepository.registerUser(authEntity)).called(1);
//     verifyNoMoreInteractions(mockRepository);
//   });
// }

import 'package:agriculture_equipment_rental_system/features/auth/domain/entity/auth_entity.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/auth_repo.mock.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/register_user_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class AuthEntityFake extends Fake implements AuthEntity {}

void main() {
  late AuthRepoMock repository;
  late RegisterUseCase usecase;

  setUpAll(() {
    // Registering a fallback value for AuthEntity
    registerFallbackValue(AuthEntityFake());
  });

  setUp(() {
    repository = AuthRepoMock();
    usecase = RegisterUseCase(repository);
  });

  // Test for registration success
  test('registration successful', () async {
    when(() => repository.registerUser(any())).thenAnswer(
      (_) async => const Right(null), // Simulating successful registration
    );

    final result = await usecase(const RegisterUserParams(
      fullName: 'Khushi',
      phone: '1234567890',
      email: 'khushi@example.com',
      password: '1234',
    ));

    expect(
        result, const Right(null)); // Expecting success with no data returned

    verify(() => repository.registerUser(any())).called(1);
    verifyNoMoreInteractions(repository);
  });
}
