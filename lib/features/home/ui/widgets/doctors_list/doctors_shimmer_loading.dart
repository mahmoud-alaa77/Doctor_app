import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 16.h),
              child: Row(
                children: [
                  Shimmer.fromColors(
                    baseColor:Colors.white,
                    highlightColor: AppColors.lightGray,
                    child: Container(
                      width: 110.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      
                    ),
                  ),
                  horizontalSpace(16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Shimmer.fromColors(
                  baseColor: AppColors.lightGray,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 18.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                        verticalSpace(5),
                           Shimmer.fromColors(
                  baseColor: AppColors.lightGray,
                  highlightColor: Colors.white,
                  child: Container( height: 16.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                        verticalSpace(5),
                                  Shimmer.fromColors(
                  baseColor: AppColors.lightGray,
                  highlightColor: Colors.white,
                  child: Container( height: 15.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
