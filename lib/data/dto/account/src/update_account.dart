// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_account.freezed.dart';
part 'update_account.g.dart';

@freezed
class UpdateAccountDto with _$UpdateAccountDto {
  const factory UpdateAccountDto({
    @JsonKey(name: 'user_id') required String? userID,
    @JsonKey(name: 'balance') required String? balance,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required double? updatedAt,
  }) = _UpdateAccountDto;

  factory UpdateAccountDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateAccountDtoFromJson(json);
}
