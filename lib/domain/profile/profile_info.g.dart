// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileInfo _$$_ProfileInfoFromJson(Map<String, dynamic> json) =>
    _$_ProfileInfo(
      id: json['id'] as String?,
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      birthday: json['birthday'] as String?,
      dateReceiveToken: json['dateReceiveToken'] as int?,
    );

Map<String, dynamic> _$$_ProfileInfoToJson(_$_ProfileInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'birthday': instance.birthday,
      'dateReceiveToken': instance.dateReceiveToken,
    };
