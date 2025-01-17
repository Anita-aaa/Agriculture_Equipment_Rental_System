// import 'package:agriculture_equipment_rental_system/core/common/snackbar/my_snackBar.dart';
// import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/register_user_usecase.dart';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';

// part 'register_event.dart';
// part 'register_state.dart';

// class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
//   // final RegisterUseCase _registerUseCase;

//   // RegisterBloc({
//   //   required RegisterUseCase registerUseCase,
//   // })  : _registerUseCase = registerUseCase,
//   //       super(RegisterState.initial()) {
//   //   on<LoadCoursesAndBatches>(_onLoadCoursesAndBatches);
//   //   on<RegisterStudent>(_onRegisterEvent);
//   // }

//   void _onRegisterEvent(
//     RegisterUser event,
//     Emitter<RegisterState> emit,
//   ) async {
//     emit(state.copyWith(isLoading: true));
//     final result = await _registerUseCase.call(RegisterUserParams(
//       fullName: event.fullName,
//       email: event.email,
//       password: event.password,
//     ));

//     result.fold(
//       (l) => emit(state.copyWith(isLoading: false, isSuccess: false)),
//       (r) {
//         emit(state.copyWith(isLoading: false, isSuccess: true));
//         showMySnackBar(
//             context: event.context, message: "Registration Successful");
//       },
//     );
//   }
// }

import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/register_user_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase _registerUseCase;
  RegisterBloc({required RegisterUseCase registerUseCase})
      : _registerUseCase = registerUseCase,
        super(RegisterState.initial()) {
    on<RegisterUser>(_onRegisterEvent);
  }
  Future<void> _onRegisterEvent(
    RegisterUser event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final result = await _registerUseCase.call(RegisterUserParams(
      fullName: event.fullname,
      email: event.email,
      password: event.password,
    ));
    result.fold(
      (failure) {
        emit(state.copyWith(
            isLoading: false, isSuccess: false, errorMessage: failure.message));
        _showSnackBar(event.context, failure.message);
      },
      (_) {
        emit(state.copyWith(isLoading: false, isSuccess: true));
        _showSnackBar(event.context, "Registration Successful");
      },
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
