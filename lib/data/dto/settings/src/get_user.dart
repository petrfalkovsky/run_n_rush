// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user.freezed.dart';
part 'get_user.g.dart';

@freezed
class GetUserDto with _$GetUserDto {
  const factory GetUserDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'email') required String? email,
  }) = _GetUserDto;

  factory GetUserDto.fromJson(Map<String, dynamic> json) =>
      _$GetUserDtoFromJson(json);
}
