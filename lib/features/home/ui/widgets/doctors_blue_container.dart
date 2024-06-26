import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: double.infinity,
      child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
        Container(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 20.w,
            vertical: 16.h,
          ),
          height: 165.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                  image:
                      AssetImage('assets/images/blue_background_pattern.png'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Book and\nschedule with\nnearest doctor",
                style: MyTextStyles.font18WhiteW500,
              ),
              verticalSpace(16),
              Expanded(
                child: CustomTextButton(
                  title: "Find Nearby",
                  color: Colors.white,
                  style: MyTextStyles.font14BlueW400,
                  width: 110.w,
                  borderRadius: BorderRadiusDirectional.circular(48),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 16,
          height: 200.h,
          child: Image.asset("assets/images/nurse.png"),
        )
      ]),
    );
  }
}
