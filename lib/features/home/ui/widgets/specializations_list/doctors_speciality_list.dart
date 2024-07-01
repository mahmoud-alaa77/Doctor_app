import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/ui/widgets/specializations_list/doctors_specialization_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatefulWidget {
  final List<SpecializationData?> specializationDataList;
  const DoctorsSpecialityListView(
      {super.key, required this.specializationDataList});

  @override
  State<DoctorsSpecialityListView> createState() =>
      _DoctorsSpecialityListViewState();
}

class _DoctorsSpecialityListViewState extends State<DoctorsSpecialityListView> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                context.read<HomeCubit>().getDoctorsList(
                    specializationId: widget.specializationDataList[index]!.id);
              });
            },
            child: DoctorsSpecializationItem(
              imageUrl:
                  "https://img.icons8.com/?size=160&id=JQndN3QYynqn&format=png",
              title: widget.specializationDataList[index]!.name,
              index: index,
              selectedIndex: selectedIndex,
            ),
          ),
          itemCount: widget.specializationDataList.length,
          scrollDirection: Axis.horizontal,
        ));
  }
}
