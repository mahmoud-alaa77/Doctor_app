import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 16.w),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.lighterGray,
                  radius: 28.w,
                  child: Image.asset(
                    "assets/images/genral_doctor_icon.png",
                    fit: BoxFit.fill,
                  ),
                ),
                verticalSpace(2),
                Text("General", style: MyTextStyles.font12BlackW500),
              ],
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ));
  }
}
