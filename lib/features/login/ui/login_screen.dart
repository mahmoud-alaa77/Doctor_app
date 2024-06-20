import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/already_have_an_account.dart';
import '../../../core/widgets/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final GlobalKey formKey = GlobalKey();
bool isSecure = true;

class _LoginScreenState extends State<LoginScreen> {
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hint: "Email",
                      ),
                      verticalSpace(16),
                      AppTextFormField(
                        hint: "Password",
                        obscureText: isSecure,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSecure = !isSecure;
                              });
                            },
                            child: Icon(isSecure
                                ? Icons.visibility
                                : Icons.visibility_off)),
                      ),
                      verticalSpace(16),
                      Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            "Forgot Password?",
                            style: MyTextStyles.font14BlueW400,
                          )),
                      verticalSpace(32),
                      const CustomTextButton(title: "Login"),
                      verticalSpace(24),
            
                      const TermsAndConditions(),
                      verticalSpace(36),
            
                      const AlreadyHaveAnAccount(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
