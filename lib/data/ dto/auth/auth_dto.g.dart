// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataDto _$UserDataDtoFromJson(Map<String, dynamic> json) => UserDataDto(
      refresh: json['refresh'] as String?,
      access: json['access'] as String?,
      id: json['id'] as String?,
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      birthday: json['birthday'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$UserDataDtoToJson(UserDataDto instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'birthday': instance.birthday,
      'phone_number': instance.phoneNumber,
    };

DetailDto _$DetailDtoFromJson(Map<String, dynamic> json) => DetailDto(
      detail: json['detail'] as String?,
      success: json['success'] as String?,
    );

Map<String, dynamic> _$DetailDtoToJson(DetailDto instance) => <String, dynamic>{
      'detail': instance.detail,
      'success': instance.success,
    };
