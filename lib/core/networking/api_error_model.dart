

import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel{

 final String? errorMessage;
 final int? code;

 factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

  ApiErrorModel({ this.errorMessage,  this.code});

 Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

}