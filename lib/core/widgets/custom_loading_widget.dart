import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            color: AppColors.darkBlue,
          )),
    );
  }
}
