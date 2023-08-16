import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverside/domain/profile/profile_info.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required Token token,
    required ProfileInfo profileInfo,
  }) = _UserData;
}

@freezed
class Token with _$Token {
  const factory Token({
    required String refresh,
    required String access,
  }) = _Token;
}
