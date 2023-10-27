// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_patch_settings_user.freezed.dart';
part 'get_patch_settings_user.g.dart';

@freezed
class GetPatchSettingsUserDto with _$GetPatchSettingsUserDto {
  const factory GetPatchSettingsUserDto({
    @JsonKey(name: 'sound') required bool? sound,
    @JsonKey(name: 'total_distance') required int? totalDistance,
  }) = _GetPatchSettingsUserDto;

  factory GetPatchSettingsUserDto.fromJson(Map<String, dynamic> json) =>
      _$GetPatchSettingsUserDtoFromJson(json);
}
