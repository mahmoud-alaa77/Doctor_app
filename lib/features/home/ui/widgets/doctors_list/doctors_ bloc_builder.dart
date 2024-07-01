import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_failure_widget.dart';
import '../../../logic/home_cubit.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is DoctorsLoadedSuccessfully || current is DoctorsFailure,
        builder: (context, state) {
          if (state is DoctorsLoadedSuccessfully) {
            return setSuccess(state.doctorsList);
          } else if (state is DoctorsFailure) {
            return Center(
              child: CustomFailureWidget(
                textError: state.errorMessage,
                textSize: 20.sp,
              ),
            );
          } else {
            return const Center(
              child: SizedBox.shrink(),
            );
          }
        });
  }

  Widget setSuccess(specializationsList) {
    return DoctorsListView(
      doctorsList: specializationsList,
    );
  }
}
