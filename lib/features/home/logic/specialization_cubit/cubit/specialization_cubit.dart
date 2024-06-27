import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'specialization_state.dart';

class SpecializationCubit extends Cubit<SpecializationState> {
  SpecializationCubit(this._homeRepo) : super(SpecializationInitial());

  final HomeRepo _homeRepo;

  void getSpecialization() async {
    emit(SpecializationLoading());

    final response = await _homeRepo.getSpecialization();

    response.fold((failure) {
      emit(SpecializationFailure(failure.message));
    }, (specializationResponse) {
      emit(SpecializationLoadedSuccessfully(specializationResponse));
    });
  }
}
