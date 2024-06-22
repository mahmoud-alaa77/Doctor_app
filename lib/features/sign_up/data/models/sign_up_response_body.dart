import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response_body.g.dart';

@JsonSerializable()
class SignUpResponseBody {
  final String? message;
  final bool? status;
  final int? code;
  @JsonKey(name: "data")
  final UserData? userData;

  factory SignUpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseBodyFromJson(json);

  SignUpResponseBody(this.message, this.status, this.code, this.userData);

  Map<String, dynamic> toJson() => _$SignUpResponseBodyToJson(this);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: "username")
  final String? userName;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  UserData(this.token, this.userName);
}
