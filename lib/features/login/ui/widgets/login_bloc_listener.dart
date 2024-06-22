import 'package:doctor_app/core/helper/extensions.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/login/logic/cubits/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          showDialog(
            context: context,
            builder: (context) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainBlue,
                ),
              );
            },
          );
        } else if (state is LoginSuccess) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
        } else if (state is LoginError) {
          context.pop();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content: Text(
                state.errorMessage,
                style: MyTextStyles.font20GrayW500,
                textAlign: TextAlign.center,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(
                    'Got it',
                    style: MyTextStyles.font24DarkBlueW500,
                  ),
                ),
              ],
            ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
