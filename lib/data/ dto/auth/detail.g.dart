// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogoutBody _$LogoutBodyFromJson(Map<String, dynamic> json) => LogoutBody(
      refresh: json['refresh'] as String,
    );

Map<String, dynamic> _$LogoutBodyToJson(LogoutBody instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
    };

ResetPasswordBody _$ResetPasswordBodyFromJson(Map<String, dynamic> json) =>
    ResetPasswordBody(
      email: json['email'] as String,
    );

Map<String, dynamic> _$ResetPasswordBodyToJson(ResetPasswordBody instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

ChangePasswordBody _$ChangePasswordBodyFromJson(Map<String, dynamic> json) =>
    ChangePasswordBody(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$ChangePasswordBodyToJson(ChangePasswordBody instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
