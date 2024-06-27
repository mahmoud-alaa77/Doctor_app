


import 'package:json_annotation/json_annotation.dart';
part 'specialization_response_model.g.dart';


@JsonSerializable()
class SpecializationResponseModel {

@JsonKey(name: "data")
List<SpecializationData>? specializationDataList;
 
SpecializationResponseModel(
      {this.specializationDataList});

factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);


  Map<String, dynamic> toJson() => _$SpecializationResponseModelToJson(this);
  
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  List<Doctors>? doctors;

  SpecializationData({this.id, this.name, this.doctors});
factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);


  Map<String, dynamic> toJson() => _$SpecializationDataToJson(this);
  
  
}


@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? degree;
  @JsonKey(name: "appoint_price")
  int? appointPrice;

  Doctors(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.degree,
      this.appointPrice,
      });

 
factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);


  Map<String, dynamic> toJson() => _$DoctorsToJson(this);
 
  
}
