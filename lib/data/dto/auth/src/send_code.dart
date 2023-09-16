// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_code.freezed.dart';
part 'send_code.g.dart';

@freezed
class SendCodeDto with _$SendCodeDto {
  const factory SendCodeDto({
    @JsonKey(name: 'email') required String? email,
  }) = _SendCodeDto;

  factory SendCodeDto.fromJson(Map<String, dynamic> json) =>
      _$SendCodeDtoFromJson(json);
}
