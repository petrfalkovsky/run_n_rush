// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataTokenDto _$$_UserDataTokenDtoFromJson(Map<String, dynamic> json) =>
    _$_UserDataTokenDto(
      access: json['access'] as String?,
      refresh: json['refresh'] as String?,
      user: UserDataDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDataTokenDtoToJson(_$_UserDataTokenDto instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
      'user': instance.user,
    };

_$_UserDataDto _$$_UserDataDtoFromJson(Map<String, dynamic> json) =>
    _$_UserDataDto(
      id: json['id'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_UserDataDtoToJson(_$_UserDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
    };
