import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const CustomButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 311.w,
        height: 52.w,
        decoration: BoxDecoration(
            color: AppColors.mainBlue,
            borderRadius: BorderRadiusDirectional.circular(24)),
        child: Center(
            child: Text(
          title,
          style: MyTextStyles.font16WhiteW600,
        )),
      ),
    );
  }
}
