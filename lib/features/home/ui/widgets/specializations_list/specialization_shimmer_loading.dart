import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecailizationShimmerLoading extends StatelessWidget {
  const SpecailizationShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 16.w),
            child: Column(children: [
              Shimmer.fromColors(
                baseColor: AppColors.lightGray,
                highlightColor: Colors.white,
                child:  CircleAvatar(
                  radius: 28.w,
                  backgroundColor: Colors.white,
                ),
              ),
              verticalSpace(8),
              Shimmer.fromColors(
                  baseColor: AppColors.lightGray,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 12.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
            ]),
          ),
          itemCount: 8,
          scrollDirection: Axis.horizontal,
        ));
  }
}
