part of 'home_cubit.dart';

sealed class HomeState {}

final class SpecializationInitial extends HomeState {}

//Specialization states

final class SpecializationLoading extends HomeState {}

final class SpecializationLoadedSuccessfully extends HomeState {
  final List<SpecializationData?>? specializationDataList;

  SpecializationLoadedSuccessfully(this.specializationDataList);
}

final class SpecializationFailure extends HomeState {
  final String errorMessage;

  SpecializationFailure(this.errorMessage);
}

//Doctors states

final class DoctorsLoadedSuccessfully extends HomeState {
  final List<Doctors> doctorsList;

  DoctorsLoadedSuccessfully(this.doctorsList);
}

final class DoctorsFailure extends HomeState {
  final String errorMessage;

  DoctorsFailure(this.errorMessage);
}
