import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/styles.dart';

class DoctorsSpecializationItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final int index;
  final int selectedIndex;

  const DoctorsSpecializationItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.index,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 16.w),
      child: Column(
        children: [
          selectedIndex == index
              ? Container(
                padding: const EdgeInsetsDirectional.all(4),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.darkBlue, width: 1.5),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundColor: AppColors.lighterGray,
                    radius: 28.w,
                    child: Image.network(
                      imageUrl!,
                      fit: BoxFit.fill,
                      width: 42.w,
                      height: 42.h,
                    ),
                  ),
                )
              : CircleAvatar(
                  backgroundColor: AppColors.lighterGray,
                  radius: 28.w,
                  child: Image.network(
                    imageUrl!,
                    fit: BoxFit.fill,
                    width: 41.w,
                    height: 41.h,
                  ),
                ),
          verticalSpace(2),
          selectedIndex == index
              ? Text(title ?? 'General', style: MyTextStyles.font14DarkBlueW900)
              : Text(title ?? 'General', style: MyTextStyles.font12BlackW300),
        ],
      ),
    );
  }
}
