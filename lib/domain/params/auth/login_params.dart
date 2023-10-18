import 'package:json_annotation/json_annotation.dart';

part 'login_params.g.dart';

@JsonSerializable()
class LoginParams {
  String? email;
  String? password;

  LoginParams({this.email, this.password});

  Map<String, dynamic> toJson() => _$LoginParamsToJson(this);
}