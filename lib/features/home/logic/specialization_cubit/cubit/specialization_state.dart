part of 'specialization_cubit.dart';

sealed class SpecializationState {}

final class SpecializationInitial extends SpecializationState {}

final class SpecializationLoading extends SpecializationState {}

final class SpecializationLoadedSuccessfully extends SpecializationState {
  final SpecializationResponseModel specializationResponse;

  SpecializationLoadedSuccessfully(this.specializationResponse);
}

final class SpecializationFailure extends SpecializationState {
  final String errorMessage;

  SpecializationFailure(this.errorMessage);
}
