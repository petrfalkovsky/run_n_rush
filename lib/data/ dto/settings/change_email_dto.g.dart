// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_email_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeEmailBody _$ChangeEmailBodyFromJson(Map<String, dynamic> json) =>
    ChangeEmailBody(
      newEmail: json['new_email'] as String,
    );

Map<String, dynamic> _$ChangeEmailBodyToJson(ChangeEmailBody instance) =>
    <String, dynamic>{
      'new_email': instance.newEmail,
    };

ChangeEmailConfirmBody _$ChangeEmailConfirmBodyFromJson(
        Map<String, dynamic> json) =>
    ChangeEmailConfirmBody(
      newEmail: json['new_email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$ChangeEmailConfirmBodyToJson(
        ChangeEmailConfirmBody instance) =>
    <String, dynamic>{
      'new_email': instance.newEmail,
      'code': instance.code,
    };
