import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/styles.dart';

class DoctorsSpecializationItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final int index;
  const DoctorsSpecializationItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 16.w),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.lighterGray,
            radius: 28.w,
            child: Image.network(
              imageUrl!,
              fit: BoxFit.fill,
            ),
          ),
          verticalSpace(2),
          Text(title ?? 'General', style: MyTextStyles.font12BlackW500),
        ],
      ),
    );
  }
}
