// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_or_signup.freezed.dart';
part 'login_or_signup.g.dart';

@freezed
class LoginOrSignupDto with _$LoginOrSignupDto {
  const factory LoginOrSignupDto({
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'code') required String? code,
    @JsonKey(name: 'referal_code') required String? referalCode,
  }) = _LoginOrSignupDto;

  factory LoginOrSignupDto.fromJson(Map<String, dynamic> json) =>
      _$LoginOrSignupDtoFromJson(json);
}
