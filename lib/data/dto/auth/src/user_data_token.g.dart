// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataToken _$$_UserDataTokenFromJson(Map<String, dynamic> json) =>
    _$_UserDataToken(
      access: json['access'] as String?,
      refresh: json['refresh'] as String?,
      user: UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDataTokenToJson(_$_UserDataToken instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
      'user': instance.user,
    };

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      id: json['id'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
    };
