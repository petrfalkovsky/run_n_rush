// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_avatar.freezed.dart';
part 'user_avatar.g.dart';

@freezed
class UserAvatarDto with _$UserAvatarDto {
  const factory UserAvatarDto({
    @JsonKey(name: 'status') required String? status,
    @JsonKey(name: 'detail') required String? detail,
    @JsonKey(name: 'url') required String? url,
  }) = _UserAvatarDto;

  factory UserAvatarDto.fromJson(Map<String, dynamic> json) =>
      _$UserAvatarDtoFromJson(json);
}
