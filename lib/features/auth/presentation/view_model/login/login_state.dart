// part of 'login_bloc.dart';

// sealed class LoginState extends Equatable {
//   const LoginState();
  
//   @override
//   List<Object> get props => [];
// }

// final class LoginInitial extends LoginState {}
part of 'login_bloc.dart';

class LoginState {
  final bool isLoading;
  final bool isSuccess;

  LoginState({
    required this.isLoading,
    required this.isSuccess,
  });

  LoginState.initial()
      : isLoading = false,
        isSuccess = false;

  LoginState copyWith({
    bool? isLoading,
    bool? isSuccess,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
