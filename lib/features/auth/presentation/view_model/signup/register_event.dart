part of 'register_bloc.dart';

// import 'package:equatable/equatable.dart';
// import 'package:flutter/widgets.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class RegisterUser extends RegisterEvent {
  final BuildContext context;
  final String fullname;
  final String phone;
  final String email;
  final String password;

  const RegisterUser({
    required this.context,
    required this.fullname,
    required this.phone,
    required this.email,
    required this.password,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

// part of 'register_bloc.dart';

// abstract class RegisterEvent extends Equatable {
//   const RegisterEvent();
//   @override
//   List<Object?> get props => [];
// }

// class RegisterUser extends RegisterEvent {
//   final BuildContext context;
//   final String fullname;
//   final String email;
//   final String password;
//   const RegisterUser({
//     required this.context,
//     required this.fullname,
//     required this.email,
//     required this.password,
//   });
//   @override
//   List<Object?> get props => [fullname, email, password];
// }
