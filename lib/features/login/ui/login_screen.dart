import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widgets/custom_text_button.dart';
import 'package:doctor_app/features/login/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_app/features/login/ui/widgets/don\'t_have_an_account.dart';
import 'package:doctor_app/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/terms_and_conditions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Welcome Back",
                  style: MyTextStyles.font32BlueW700.copyWith(fontSize: 26),
                ),
                verticalSpace(20),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: MyTextStyles.font13GrayW400.copyWith(fontSize: 16),
                ),
                verticalSpace(30),
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forgot Password?",
                          style: MyTextStyles.font14BlueW400,
                        )),
                    verticalSpace(32),
                    CustomTextButton(
                      title: "Login",
                      onTap: () {
                        context.read<LoginCubit>().validateThenDoLogin();
                      },
                    ),
                    verticalSpace(24),
                    const TermsAndConditions(),
                    verticalSpace(36),
                    const DoNotHaveAnAccount(),
                    const LoginBlocListener(),
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
