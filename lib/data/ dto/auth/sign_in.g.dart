// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInBody _$SignInBodyFromJson(Map<String, dynamic> json) => SignInBody(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignInBodyToJson(SignInBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
