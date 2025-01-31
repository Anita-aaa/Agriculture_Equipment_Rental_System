part of 'register_bloc.dart';

class RegisterState {
  final bool isLoading;
  final bool isSuccess;

  RegisterState({
    required this.isLoading,
    required this.isSuccess,
  });

  RegisterState.initial()
      : isLoading = false,
        isSuccess = false;

  RegisterState copyWith({
    bool? isLoading,
    bool? isSuccess,
  }) {
    return RegisterState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}

// part of 'register_bloc.dart';

// class RegisterState extends Equatable {
//   final bool isLoading;
//   final bool isSuccess;
//   final String? errorMessage;
//   const RegisterState({
//     required this.isLoading,
//     required this.isSuccess,
//     this.errorMessage,
//   });
//   factory RegisterState.initial() {
//     return const RegisterState(
//         isLoading: false, isSuccess: false, errorMessage: null);
//   }
//   RegisterState copyWith({
//     bool? isLoading,
//     bool? isSuccess,
//     String? errorMessage,
//   }) {
//     return RegisterState(
//       isLoading: isLoading ?? this.isLoading,
//       isSuccess: isSuccess ?? this.isSuccess,
//       errorMessage: errorMessage,
//     );
//   }

//   @override
//   List<Object?> get props => [isLoading, isSuccess, errorMessage];
// }
