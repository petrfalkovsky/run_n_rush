// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_token.freezed.dart';
part 'verify_token.g.dart';

@freezed
class VerifyTokenDto with _$VerifyTokenDto {
  const factory VerifyTokenDto({
    @JsonKey(name: 'token') required String? token,
  }) = _VerifyTokenDto;

  factory VerifyTokenDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyTokenDtoFromJson(json);
}
