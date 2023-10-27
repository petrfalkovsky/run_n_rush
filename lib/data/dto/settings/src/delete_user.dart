// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user.freezed.dart';
part 'delete_user.g.dart';

@freezed
class DeleteUserDto with _$DeleteUserDto {
  const factory DeleteUserDto({
    @JsonKey(name: 'deleted_user_id') required String? deletedUserID,
  }) = _DeleteUserDto;

  factory DeleteUserDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteUserDtoFromJson(json);
}
