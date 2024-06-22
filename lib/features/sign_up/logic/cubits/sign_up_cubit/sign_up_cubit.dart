import 'package:doctor_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_app/features/sign_up/data/models/sign_up_response_body.dart';
import 'package:doctor_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {


  SignUpCubit(this._signUpRepo) : super(SignUpInitial());
final SignUpRepo _signUpRepo;

  final formKey=GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController passwordConfirmationController=TextEditingController();


  void emitSignUp(SignUpRequestBody requestBody)async{

    emit(SignUpLoading());

    final response=await _signUpRepo.signUp(requestBody);

    response.fold((failure) {
      emit(SignUpError(errorMessage: failure.message));
  }, (responseBody) {
      emit(SignUpSuccess(signUpResponseBody: responseBody));
  });


}

void validateAndSignUp(){
    if(formKey.currentState!.validate()){
      emitSignUp(
    SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
        phone: phoneController.text
    )
      );
    }
}

}
