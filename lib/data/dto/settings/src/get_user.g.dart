// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetUserDto _$$_GetUserDtoFromJson(Map<String, dynamic> json) =>
    _$_GetUserDto(
      id: json['id'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_GetUserDtoToJson(_$_GetUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
    };
