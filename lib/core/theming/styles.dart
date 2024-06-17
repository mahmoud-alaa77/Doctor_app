
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class MyTextStyles{

  static TextStyle font24BlackW900= TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w900,
      color: Colors.black
  );

  static TextStyle font32BlueW700= TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.mainBlue
  );

  static TextStyle font13GrayW400= TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xff757575),
  );

  static TextStyle font16WhiteW600= TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}