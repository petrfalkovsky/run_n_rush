// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token.freezed.dart';
part 'refresh_token.g.dart';

@freezed
class RefreshTokenDto with _$RefreshTokenDto {
  const factory RefreshTokenDto({
    @JsonKey(name: 'refresh') required String? refresh,
  }) = _RefreshTokenDto;

  factory RefreshTokenDto.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDtoFromJson(json);
}
