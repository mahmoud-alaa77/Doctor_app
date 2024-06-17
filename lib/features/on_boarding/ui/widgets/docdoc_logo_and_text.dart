import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/constants.dart';
import '../../../../core/theming/styles.dart';

class DocdocLogoAndText extends StatelessWidget {
  const DocdocLogoAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(docdocLogoSvg),
          SizedBox(width: 10.w),
          Text(
            'Docdoc',
            style: MyTextStyles.font24BlackW900,
          ),
        ],
      ),
    );
  }
}
