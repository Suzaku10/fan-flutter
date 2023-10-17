import 'package:json_annotation/json_annotation.dart';

part 'user_params.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class UserParams {
  final String? id;
  final String? email;
  final String? name;
  final bool isVerified;
  final int? createdAt;
  final int? updatedAt;

  UserParams({
    this.id,
    this.name,
    this.email,
    this.isVerified = false,
    this.createdAt,
    this.updatedAt,
  });

  factory UserParams.fromJson(Map<String, dynamic> json) => _$UserParamsFromJson(json);

  Map<String, dynamic> toJson() => _$UserParamsToJson(this);
}