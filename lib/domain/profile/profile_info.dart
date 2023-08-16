import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info.freezed.dart';
part 'profile_info.g.dart';

@freezed
class ProfileInfo with _$ProfileInfo {
  const ProfileInfo._();
  factory ProfileInfo.empty() => const ProfileInfo(
        id: '',
        email: '',
        firstName: '',
        lastName: '',
        phoneNumber: '',
        birthday: '',
        dateReceiveToken: 0,
      );

  const factory ProfileInfo({
    required String? id,
    required String? email,
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'phone_number') required String? phoneNumber,
    required String? birthday,
    int? dateReceiveToken,
  }) = _ProfileInfo;

  factory ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoFromJson(json);
}

@freezed
class NewEmail with _$NewEmail {
  const factory NewEmail({
    required final String newEmail,
    required final String code,
  }) = _NewEmail;
}
