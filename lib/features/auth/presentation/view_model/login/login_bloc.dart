// // import 'package:bloc/bloc.dart';
// // import 'package:equatable/equatable.dart';

// // part 'login_event.dart';
// // part 'login_state.dart';

// // class LoginBloc extends Bloc<LoginEvent, LoginState> {
// //   LoginBloc() : super(LoginInitial()) {
// //     on<LoginEvent>((event, emit) {
// //       // TODO: implement event handler
// //     });
// //   }
// // }
// // import 'package:softwarica_student_management_bloc/app/di/di.dart';
// import 'package:agriculture_equipment_rental_system/core/common/snackbar/my_snackBar.dart';
// import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/login_usecase.dart';
// import 'package:agriculture_equipment_rental_system/features/auth/presentation/view_model/signup/register_bloc.dart';
// import 'package:agriculture_equipment_rental_system/features/home/presentation/view_model/cubit/home_cubit.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// part 'login_event.dart';
// part 'login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   final RegisterBloc _registerBloc;
//   final HomeCubit _homeCubit;
//   final LoginUseCase _loginUseCase;

//   LoginBloc({
//     required RegisterBloc registerBloc,
//     // required HomeCubit homeCubit,
//     required LoginUseCase loginUseCase,
//     required HomeCubit homeCubit,
//   })  : _registerBloc = registerBloc,
//         // _homeCubit = homeCubit,
//         _loginUseCase = loginUseCase,
//         super(LoginState.initial()) {
//     on<NavigateRegisterScreenEvent>(
//       (event, emit) {
//         Navigator.push(
//           event.context,
//           MaterialPageRoute(
//             builder: (context) => MultiBlocProvider(
//               providers: [
//                 BlocProvider.value(value: _registerBloc),
//               ],
//               child: event.destination,
//             ),
//           ),
//         );
//       },
//     );

//     on<NavigateHomeScreenEvent>(
//       (event, emit) {
//         Navigator.pushReplacement(
//           event.context,
//           MaterialPageRoute(
//             builder: (context) => BlocProvider.value(
//               value: _homeCubit,
//               child: event.destination,
//             ),
//           ),
//         );
//       },
//     );

//     on<LoginStudentEvent>(
//       (event, emit) async {
//         emit(state.copyWith(isLoading: true));
//         final result = await _loginUseCase(
//           LoginParams(
//             email: event.email,
//             password: event.password,
//           ),
//         );

//         result.fold(
//           (failure) {
//             emit(state.copyWith(isLoading: false, isSuccess: false));
//             showMySnackBar(
//               context: event.context,
//               message: "Invalid Credentials",
//               color: Colors.red,
//             );
//           },
//           (token) {
//             emit(state.copyWith(isLoading: false, isSuccess: true));
//             add(
//               NavigateHomeScreenEvent(
//                 context: event.context,
//                 destination: HomeView(),
//               ),
//             );
//             //_homeCubit.setToken(token);
//           },
//         );
//       },
//     );
//   }
// }

import 'package:agriculture_equipment_rental_system/core/common/snackbar/my_snackBar.dart';
import 'package:agriculture_equipment_rental_system/features/auth/domain/use_case/login_usecase.dart';
import 'package:agriculture_equipment_rental_system/features/auth/presentation/view_model/signup/register_bloc.dart';
import 'package:agriculture_equipment_rental_system/features/home/presentation/view/bottom_view/home_view.dart';
import 'package:agriculture_equipment_rental_system/features/home/presentation/view_model/cubit/home_cubit.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final RegisterBloc _registerBloc;
  final HomeCubit _homeCubit;
  final LoginUseCase _loginUseCase;
  LoginBloc({
    required RegisterBloc registerBloc,
    required HomeCubit homeCubit,
    required LoginUseCase loginUseCase,
  })  : _registerBloc = registerBloc,
        _homeCubit = homeCubit,
        _loginUseCase = loginUseCase,
        super(LoginState.initial()) {
    // Navigate to the Register Screen
    on<NavigateRegisterScreenEvent>(
      (event, emit) {
        Navigator.push(
          event.context,
          MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
              providers: [
                BlocProvider.value(value: _registerBloc),
              ],
              child: event.destination,
            ),
          ),
        );
      },
    );
    // Handle User Login
    on<LoginUserEvent>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final result = await _loginUseCase(
          LoginParams(
            email: event.email,
            password: event.password,
          ),
        );
        result.fold(
          (failure) {
            emit(state.copyWith(isLoading: false, isSuccess: false));
            showMySnackBar(
              context: event.context,
              message: "Invalid Credentials",
              color: Colors.red,
            );
          },
          (token) {
            emit(state.copyWith(isLoading: false, isSuccess: true));
            Navigator.pushReplacement(
              event.context,
              MaterialPageRoute(
                builder: (context) => BlocProvider.value(
                  value: _homeCubit,
                  child: const HomeView(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
