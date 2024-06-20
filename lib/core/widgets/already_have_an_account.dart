import 'package:flutter/material.dart';

import '../theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "Already have an account yet?",
            style: MyTextStyles.font12BlackW500),
        TextSpan(text: " Sign Up", style: MyTextStyles.font14BlueW400),
      ]),
    );
  }
}
