// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersResponses _$UsersResponsesFromJson(Map<String, dynamic> json) =>
    UsersResponses(
      email: json['email'] as String?,
      isVerified: json['is_verified'] as bool? ?? false,
      name: json['name'] as String?,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );

Map<String, dynamic> _$UsersResponsesToJson(UsersResponses instance) =>
    <String, dynamic>{
      'email': instance.email,
      'is_verified': instance.isVerified,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
