// user_data_token.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_token.freezed.dart';
part 'user_data_token.g.dart';

@freezed
class UserDataTokenDto with _$UserDataTokenDto {
  const factory UserDataTokenDto({
    required String? access,
    required String? refresh,
    required UserDataDto user,
  }) = _UserDataTokenDto;

  factory UserDataTokenDto.fromJson(Map<String, dynamic> json) =>
      _$UserDataTokenDtoFromJson(json);
}

@freezed
class UserDataDto with _$UserDataDto {
  const factory UserDataDto({
    required String? id,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'email') required String? email,
  }) = _UserDataDto;

  factory UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$UserDataDtoFromJson(json);
}
