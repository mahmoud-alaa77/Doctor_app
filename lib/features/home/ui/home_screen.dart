import 'package:doctor_app/core/helper/spacing.dart';

import 'package:doctor_app/features/home/ui/widgets/doctors_blue_container.dart';

import 'package:doctor_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor_app/features/home/ui/widgets/specialization_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 12),
          child: Column(
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(16),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(12),
              const SpecializationAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
