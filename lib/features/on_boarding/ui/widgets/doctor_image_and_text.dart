import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/constants.dart';
import '../../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(docdocLogoWithLowOpacitySvg),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    stops: const [.14, .4])),
            child: Image.asset(onBoardingImageBackground)),
        Positioned(
            left: 0,
            right: 0,
            bottom: 10.w,
            child: Text(
              textAlign: TextAlign.center,
              "Best Doctor\n Appointment App",
              style: MyTextStyles.font32BlueW700.copyWith(height: 1.2),
            )),
      ],
    );
  }
}
