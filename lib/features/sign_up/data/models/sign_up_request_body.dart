import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;
  final int gender;
  final String phone;

  SignUpRequestBody(
      {required this.name,
      required this.email,
      required this.password,
      required this.passwordConfirmation,
      required this.gender,
      required this.phone});


  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);

}
