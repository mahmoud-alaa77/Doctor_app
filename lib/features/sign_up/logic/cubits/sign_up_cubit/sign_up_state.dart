part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}


class SignUpSuccess extends SignUpState {
  final SignUpResponseBody signUpResponseBody;

  SignUpSuccess({required this.signUpResponseBody});

}
class SignUpLoading extends SignUpState {}
class SignUpError extends SignUpState {
  final String errorMessage;

  SignUpError({required this.errorMessage});

}
