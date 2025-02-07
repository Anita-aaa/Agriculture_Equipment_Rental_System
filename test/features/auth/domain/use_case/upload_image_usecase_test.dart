import 'dart:io';

import 'package:agriculture_equipment_rental_system/features/auth/domain/repository/auth_repository.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/upload_image_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class AuthRepoMock extends Mock implements IAuthRepository {}

void main() {
  late AuthRepoMock repository;
  late UploadImageUsecase usecase;

  setUp(() {
    repository = AuthRepoMock();
    usecase = UploadImageUsecase(repository);
  });

  // Test for successful image upload
  test('upload image successful', () async {
    // Arrange: Prepare mock for successful upload
    final mockFile = File('path/to/file.jpg');
    when(() => repository.uploadProfilePicture(mockFile)).thenAnswer(
      (_) async => const Right('Image uploaded successfully'),
    );

    // Act: Call the usecase
    final result = await usecase(UploadImageParams(file: mockFile));

    // Assert: Verify that the result is a success
    expect(result, const Right('Image uploaded successfully'));

    // Verify the repository interaction
    verify(() => repository.uploadProfilePicture(mockFile)).called(1);
    verifyNoMoreInteractions(repository);
  });
}
