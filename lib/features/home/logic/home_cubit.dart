import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(SpecializationInitial());

  final HomeRepo _homeRepo;

  List<SpecializationData?>? specializationsList = [];

  void getSpecialization() async {
    emit(SpecializationLoading());

    final response = await _homeRepo.getSpecialization();

    response.fold((failure) {
      emit(SpecializationFailure(failure.message));
    }, (specializationResponse) {
      specializationsList = specializationResponse.specializationDataList ?? [];

      // getting the doctors list for the first specialization by default.

      getDoctorsList(specializationId: specializationsList?.first?.id);
      emit(SpecializationLoadedSuccessfully(specializationsList));
    });
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors> doctorsList =
        getDoctorsListBySpecializationId(specializationId: specializationId);

    // ignore: unnecessary_null_comparison
    if (!(doctorsList == null || doctorsList.isEmpty)) {
      emit(DoctorsLoadedSuccessfully(doctorsList));
    } else {
      //! will fix
      emit(DoctorsFailure("No Doctors Found"));
    }
  }

  getDoctorsListBySpecializationId({required int? specializationId}) {
    return specializationsList!
        .firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctors;
  }
}
