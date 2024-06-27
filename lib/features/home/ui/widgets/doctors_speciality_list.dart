import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_specialization_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationData?> specializationDataList;
  const DoctorsSpecialityListView({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) => DoctorsSpecializationItem(
            imageUrl: "https://cdn-icons-png.freepik.com/256/921/921059.png?ga=GA1.1.1421869893.1706208542&semt=ais_hybrid",
            title:  specializationDataList[index]!.name,
            index: index,
          ),
          itemCount: specializationDataList.length,
          scrollDirection: Axis.horizontal,
        ));
  }
}
