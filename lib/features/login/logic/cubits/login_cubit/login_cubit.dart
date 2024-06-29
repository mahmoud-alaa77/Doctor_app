import 'package:doctor_app/core/helper/shared_pref_helper.dart';
import 'package:doctor_app/core/networking/dio_factory.dart';
import 'package:doctor_app/features/login/data/models/response_model.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper/constants.dart';
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
      saveUserToken(responseBody.userData?.token ?? "");
      emit(LoginSuccess(responseModel: responseBody));
    });
  }

  void validateThenDoLogin() {
    if (formKey.currentState!.validate()) {
      emitLoginState(
        RequestModel(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
    }
  }

 
  Future<void> saveUserToken(String token) async {
await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
