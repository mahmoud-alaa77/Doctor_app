import 'package:flutter/material.dart';

import '../theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: "By logging, you agree to our ",
            style: MyTextStyles.font13GrayW400),
        TextSpan(
            text: " Terms & Conditions ", style: MyTextStyles.font12BlackW500),
        TextSpan(text: "and ", style: MyTextStyles.font13GrayW400),
        TextSpan(text: "PrivacyPolicy.", style: MyTextStyles.font12BlackW500),
      ]),
    );
  }
}
