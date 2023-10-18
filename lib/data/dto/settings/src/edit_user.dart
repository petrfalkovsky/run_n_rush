// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_user.freezed.dart';
part 'edit_user.g.dart';

@freezed
class EditUserDto with _$EditUserDto {
  const factory EditUserDto({
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'email') required String? email,
  }) = _EditUserDto;

  factory EditUserDto.fromJson(Map<String, dynamic> json) =>
      _$EditUserDtoFromJson(json);
}
