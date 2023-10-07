import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_transactions.freezed.dart';
part 'get_transactions.g.dart';

@freezed
class GetTransactionDto with _$GetTransactionDto {
  const factory GetTransactionDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'account_id') required String? accountID,
    @JsonKey(name: 'amount') required String? amount,
    @JsonKey(name: 'operation_type') required String? operationType,
    @JsonKey(name: 'is_accepted') required bool? isAccepted,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
  }) = _GetTransactionDto;

  factory GetTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$GetTransactionDtoFromJson(json);
}
