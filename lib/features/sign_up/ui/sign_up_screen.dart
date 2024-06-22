import 'package:doctor_app/core/widgets/custom_text_button.dart';
import 'package:doctor_app/features/sign_up/logic/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/already_have_an_account.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../login/ui/widgets/terms_and_conditions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsetsDirectional.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create New Account",
                  style: MyTextStyles.font32BlueW700.copyWith(fontSize: 26),
                ),
                verticalSpace(16),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: MyTextStyles.font13GrayW400.copyWith(fontSize: 16),
                ),
                verticalSpace(24),
                 Column(
                  children: [
                    const SignUpForm(),
                    verticalSpace(14),
                    CustomTextButton(title: "Sign Up",onTap: (){
                      context.read<SignUpCubit>().validateAndSignUp();

                    },),
                    verticalSpace(14),
                    const AlreadyHaveAnAccount(),
                    verticalSpace(14),
                    const TermsAndConditions(),
                    const SignUpBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
