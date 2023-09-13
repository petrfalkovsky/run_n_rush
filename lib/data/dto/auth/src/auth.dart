import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class UserDataDto with _$UserDataDto {
  const factory UserDataDto({
    required String? id,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    required String? email,
    required String? refresh,
    required String? access,
  }) = _UserDataDto;

  factory UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$UserDataDtoFromJson(json);
}
