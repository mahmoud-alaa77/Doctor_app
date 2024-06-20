import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final String hint;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final Color? backgroundColor;
  final InputBorder? focusedBorder;
  final bool? obscureText;

  const AppTextFormField(
      {super.key,
      this.suffixIcon,
      this.hintStyle,
      required this.hint,
      this.contentPadding,
      this.backgroundColor,
      this.enabledBorder,
      this.focusedBorder,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: hintStyle ?? MyTextStyles.font14LightGrayW400,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsetsDirectional.symmetric(vertical: 15.h, horizontal: 20.w),
        suffixIcon: suffixIcon,
        enabledBorder: enabledBorder ??
            const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  color: AppColors.lightGray,
                  width: 1.0,
                )),
        focusedBorder: focusedBorder ??
            const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  color: AppColors.mainBlue,
                  width: 1.0,
                )),
        fillColor: backgroundColor ?? AppColors.lighterGray,
        filled: true,
      ),
      obscureText: obscureText??false,
    );
  }
}
