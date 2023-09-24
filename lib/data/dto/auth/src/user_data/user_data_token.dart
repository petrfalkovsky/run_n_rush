// user_data_token.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_token.freezed.dart';
part 'user_data_token.g.dart';

@freezed
class UserDataToken with _$UserDataToken {
  const factory UserDataToken({
    required String? access,
    required String? refresh,
    required UserData user,
  }) = _UserDataToken;

  factory UserDataToken.fromJson(Map<String, dynamic> json) =>
      _$UserDataTokenFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String? id,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'email') required String? email,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
