// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpBody _$SignUpBodyFromJson(Map<String, dynamic> json) => SignUpBody(
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phoneNumber: json['phone_number'] as String,
      birthday: json['birthday'] as String,
    );

Map<String, dynamic> _$SignUpBodyToJson(SignUpBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'birthday': instance.birthday,
    };

EmailVerifyBody _$EmailVerifyBodyFromJson(Map<String, dynamic> json) =>
    EmailVerifyBody(
      code: json['code'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$EmailVerifyBodyToJson(EmailVerifyBody instance) =>
    <String, dynamic>{
      'code': instance.code,
      'email': instance.email,
      'password': instance.password,
    };
