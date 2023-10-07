// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateAccountDto _$$_UpdateAccountDtoFromJson(Map<String, dynamic> json) =>
    _$_UpdateAccountDto(
      userID: json['user_id'] as String?,
      balance: json['balance'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: (json['updated_at'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_UpdateAccountDtoToJson(_$_UpdateAccountDto instance) =>
    <String, dynamic>{
      'user_id': instance.userID,
      'balance': instance.balance,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
