import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_email_dto.g.dart';

@JsonSerializable()
class ChangeEmailBody {
  ChangeEmailBody({
    required this.newEmail,
  });

  factory ChangeEmailBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeEmailBodyToJson(this);
  @JsonKey(name: 'new_email')
  final String newEmail;
}

@JsonSerializable()
class ChangeEmailConfirmBody {
  ChangeEmailConfirmBody({
    required this.newEmail,
    required this.code,
  });

  factory ChangeEmailConfirmBody.fromJson(Map<String, dynamic> json) =>
      _$ChangeEmailConfirmBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ChangeEmailConfirmBodyToJson(this);
  @JsonKey(name: 'new_email')
  final String newEmail;
  final String code;
}
