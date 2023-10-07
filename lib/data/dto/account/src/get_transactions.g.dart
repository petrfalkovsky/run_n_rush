// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetTransactionDto _$$_GetTransactionDtoFromJson(Map<String, dynamic> json) =>
    _$_GetTransactionDto(
      id: json['id'] as String?,
      accountID: json['account_id'] as String?,
      amount: json['amount'] as String?,
      operationType: json['operation_type'] as String?,
      isAccepted: json['is_accepted'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_GetTransactionDtoToJson(
        _$_GetTransactionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_id': instance.accountID,
      'amount': instance.amount,
      'operation_type': instance.operationType,
      'is_accepted': instance.isAccepted,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
