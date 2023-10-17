import 'package:json_annotation/json_annotation.dart';

part 'users_responses.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UsersResponses {
  final String? email;
  final bool isVerified;
  final String? name;
  final dynamic createdAt;
  final dynamic updatedAt;

  UsersResponses({
    this.email,
    this.isVerified = false,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory UsersResponses.fromJson(Map<String, dynamic> json) => _$UsersResponsesFromJson(json);

  Map<String, dynamic> toJson() => _$UsersResponsesToJson(this);
}