import 'package:doctor_app/features/login/data/models/response_model.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/request_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(LoginInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  void emitLoginState(RequestModel requestBody) async {
    emit(LoginLoading());
    final response = await _loginRepo.login(requestBody);

    response.fold((failure) {
      emit(LoginError(errorMessage: failure.message));
    }, (responseBody) {
      emit(LoginSuccess(responseModel: responseBody));
    });
  }

  void validateThenDoLogin() {
    if (formKey.currentState!.validate()) {
      emitLoginState(
        RequestModel(
          email: emailController.text,
          password:passwordController.text,
        ),
      );
    }
  }
}
