import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorsListViewItem({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              width: 110.w,
              height: 120.h,
              "assets/images/doctor_test.jpg",
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorModel?.name ?? "Name",
                  style: MyTextStyles.font18DarkBlueW700,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                 '${doctorModel?.degree} || ${doctorModel?.phone}'
                 ,
                  style: MyTextStyles.font12GrayW400,
                ),
                verticalSpace(5),
                Text(
                  doctorModel?.email ?? "Email",
                  style: MyTextStyles.font12GrayW400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
