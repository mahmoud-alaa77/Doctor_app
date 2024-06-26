import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: MyTextStyles.font18DarkBlueW700,
        ),
        const Spacer(),
        Text(
          "See All",
          style: MyTextStyles.font12BlueW400,
        ),
      ],
    );
  }
}
