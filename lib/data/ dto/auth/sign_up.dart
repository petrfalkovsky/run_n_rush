import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up.g.dart';

@JsonSerializable()
class SignUpBody {
  SignUpBody({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.birthday,
  });

  factory SignUpBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpBodyFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpBodyToJson(this);

  final String email;
  final String password;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  final String birthday;
}

@JsonSerializable()
class EmailVerifyBody {
  EmailVerifyBody({
    required this.code,
    required this.email,
    required this.password,
  });

  factory EmailVerifyBody.fromJson(Map<String, dynamic> json) =>
      _$EmailVerifyBodyFromJson(json);
  Map<String, dynamic> toJson() => _$EmailVerifyBodyToJson(this);

  final String code;
  final String email;
  final String password;
}
