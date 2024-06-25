
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
Column(
crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("Hi, Omar!",style: MyTextStyles.font18DarkBlueW700,),
    Text("How Are you Today?",style: MyTextStyles.font14LightGrayW400,),
  ],
),
const Spacer(),
CircleAvatar(
  radius: 20,
  backgroundColor: AppColors.lightGray.withOpacity(.3),
  child: SvgPicture.asset("assets/svgs/notification.svg"),
)
    ],);
  }
}