// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAccountDto _$$_GetAccountDtoFromJson(Map<String, dynamic> json) =>
    _$_GetAccountDto(
      userID: json['user_id'] as String?,
      balance: json['balance'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_GetAccountDtoToJson(_$_GetAccountDto instance) =>
    <String, dynamic>{
      'user_id': instance.userID,
      'balance': instance.balance,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
