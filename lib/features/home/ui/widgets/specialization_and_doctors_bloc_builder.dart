import 'package:doctor_app/features/home/logic/specialization_cubit/cubit/specialization_cubit.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_speciality_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/custom_failure_widget.dart';
import '../../../../core/widgets/custom_loading_widget.dart';
import 'doctors_list_view.dart';

class SpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationCubit, SpecializationState>(
      builder: (context, state) {
        if (state is SpecializationLoadedSuccessfully) {
          var specializationsList = state.specializationResponse;
          return setSuccess(specializationsList);
        } else if (state is SpecializationFailure) {
          return CustomFailureWidget(
            textError: state.errorMessage,
            textSize: 20.sp,
          );
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }

  Widget setSuccess(specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(
            specializationDataList:
                specializationsList.specializationDataList ?? [],
          ),
          verticalSpace(12),
          DoctorsListView(
            doctorsList:
                specializationsList.specializationDataList![0].doctors ?? [],
          ),
        ],
      ),
    );
  }
}
