

import 'package:json_annotation/json_annotation.dart';
part 'request_model.g.dart';
@JsonSerializable()
class RequestModel{
   String? email;
   String? password;

  RequestModel({ this.email,  this.password});



  Map<String, dynamic> toJson() => _$RequestModelToJson(this);

}