// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditUserDto _$$_EditUserDtoFromJson(Map<String, dynamic> json) =>
    _$_EditUserDto(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      updatedUserID: json['updated_user_id'] as String?,
    );

Map<String, dynamic> _$$_EditUserDtoToJson(_$_EditUserDto instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'updated_user_id': instance.updatedUserID,
    };
