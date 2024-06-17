import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button.dart';
import '../widgets/docdoc_logo_and_text.dart';
import '../widgets/doctor_image_and_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            const DocdocLogoAndText(),
            SizedBox(
              height: 30.w,
            ),
            const DoctorImageAndText(),
            SizedBox(
              height: 15.w,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: MyTextStyles.font13GrayW400),
                  SizedBox(
                    height: 35.w,
                  ),
                  const CustomButton(
                    title: "Get Started",
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
