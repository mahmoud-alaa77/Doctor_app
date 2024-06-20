import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? style;
  final Color? color;

  const CustomTextButton(
      {super.key,
      required this.title,
      this.onTap,
      this.width,
      this.height,
      this.borderRadius,
      this.style,
      this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 311.w,
        height: height ?? 52.h,
        decoration: BoxDecoration(
            color: color ?? AppColors.mainBlue,
            borderRadius: borderRadius ?? BorderRadiusDirectional.circular(16)),
        child: Center(
            child: Text(
          title,
          style: style ?? MyTextStyles.font16WhiteW600,
        )),
      ),
    );
  }
}
