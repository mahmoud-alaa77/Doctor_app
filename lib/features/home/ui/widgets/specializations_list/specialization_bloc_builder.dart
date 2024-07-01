import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/widgets/custom_failure_widget.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:doctor_app/features/home/ui/widgets/specializations_list/doctors_speciality_list.dart';
import 'package:doctor_app/features/home/ui/widgets/specializations_list/specialization_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoadedSuccessfully ||
          current is SpecializationLoading ||
          current is SpecializationFailure,
      builder: (context, state) {
        if (state is SpecializationLoadedSuccessfully) {
          var specializationsList = state.specializationDataList;
          return setSuccess(specializationsList);
        } else if (state is SpecializationFailure) {
          return CustomFailureWidget(
            textError: state.errorMessage,
            textSize: 18.sp,
          );
        } else {
          return setLoading();
        }
      },
    );
  }

  Widget setSuccess(specializationsList) {
    return DoctorsSpecialityListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Widget setLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecailizationShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }
}
