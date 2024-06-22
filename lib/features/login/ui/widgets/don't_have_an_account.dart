import 'package:doctor_app/core/helper/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class DoNotHaveAnAccount extends StatelessWidget {
  const DoNotHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "Don't have an account yet?",
            style: MyTextStyles.font12BlackW500),
        TextSpan(text: " Sign Up", style: MyTextStyles.font14BlueW400.copyWith(fontWeight: FontWeight.w700),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pushReplacementNamed(Routes.signUpScreen);
            },
        ),
      ]),
    );
  }
}
