// part of 'register_event.dart';

// import 'package:equatable/equatable.dart';
// import 'package:flutter/widgets.dart';

// sealed class RegisterEvent extends Equatable {
//   const RegisterEvent();

//   @override
//   List<Object> get props => [];
// }

// class LoadCoursesAndBatches extends RegisterEvent {}

// class RegisterUser extends RegisterEvent {
//   final BuildContext context;
//   final String fullname;
//   final String username;
//   final String password;

//   const RegisterUser({
//     required this.context,
//     required this.fullname,
//     required this.username,
//     required this.password,
//   });
// }

part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();
  @override
  List<Object?> get props => [];
}

class RegisterUser extends RegisterEvent {
  final BuildContext context;
  final String fullname;
  final String email;
  final String password;
  const RegisterUser({
    required this.context,
    required this.fullname,
    required this.email,
    required this.password,
  });
  @override
  List<Object?> get props => [fullname, email, password];
}
