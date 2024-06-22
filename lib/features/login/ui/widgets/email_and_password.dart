import 'package:doctor_app/core/helper/app_regex.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/features/login/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_app/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isSecure = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(children: [
        AppTextFormField(
          hint: "Email",
          controller: BlocProvider.of<LoginCubit>(context).emailController,
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
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
              child: Icon(
                isSecure ? Icons.visibility : Icons.visibility_off,
                color: AppColors.mainBlue,
              )),
          controller: BlocProvider.of<LoginCubit>(context).passwordController,
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isPasswordValid(value)) {
              return 'Please enter a valid password';
            }
            return null;
          },
        ),
        verticalSpace(16),
        PasswordValidations(
          hasLowerCase: hasLowerCase,
          hasMinLength: hasMinLength,
          hasNumber: hasNumber,
          hasSpecialCharacter: hasSpecialCharacter,
          hasUpperCase: hasUpperCase,
        ),
      ]),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
