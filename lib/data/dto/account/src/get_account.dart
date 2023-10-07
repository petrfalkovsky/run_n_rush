// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_account.freezed.dart';
part 'get_account.g.dart';

@freezed
class GetAccountDto with _$GetAccountDto {
  const factory GetAccountDto({
    @JsonKey(name: 'user_id') required String? userID,
    @JsonKey(name: 'balance') required String? balance,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
  }) = _GetAccountDto;

  factory GetAccountDto.fromJson(Map<String, dynamic> json) =>
      _$GetAccountDtoFromJson(json);
}
