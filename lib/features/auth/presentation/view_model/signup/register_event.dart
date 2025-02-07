part of 'register_bloc.dart';

// import 'package:equatable/equatable.dart';
// import 'package:flutter/widgets.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class UploadImage extends RegisterEvent {
  final File file;

  const UploadImage({
    required this.file,
  });
}

class RegisterUser extends RegisterEvent {
  final BuildContext context;
  final String fullname;
  final String phone;
  final String email;
  final String password;
  final String? image;

  const RegisterUser({
    required this.context,
    required this.fullname,
    required this.phone,
    required this.email,
    required this.password,
    this.image,
  });
}
