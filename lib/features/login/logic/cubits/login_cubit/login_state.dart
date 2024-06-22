part of 'login_cubit.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {
  final ResponseModel responseModel;

  LoginSuccess({required this.responseModel});

}
class LoginLoading extends LoginState {}
class LoginError extends LoginState {
  final String errorMessage;

  LoginError({required this.errorMessage});

}
