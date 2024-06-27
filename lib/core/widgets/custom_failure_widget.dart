
import 'package:doctor_app/core/helper/spacing.dart';
import 'package:flutter/material.dart';

class CustomFailureWidget extends StatelessWidget {
  final String textError;
  final double textSize;

  const CustomFailureWidget(
      {super.key, required this.textError, required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.warning_amber),
       horizontalSpace(10),
        Text(
          textError,
          style: TextStyle(fontSize: textSize),
        )
      ],
    );
  }
}