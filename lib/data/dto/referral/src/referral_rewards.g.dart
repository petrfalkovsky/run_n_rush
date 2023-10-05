// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_rewards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferralRewardsDto _$$_ReferralRewardsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ReferralRewardsDto(
      id: json['id'] as String?,
      userFromID: json['user_from_id'] as String?,
      userFromEmail: json['user_from_email'] as String?,
      createdAt: json['created_at'] as String?,
      amount: json['amount'] as String?,
      amountCurrency: json['amount_currency'] as String?,
    );

Map<String, dynamic> _$$_ReferralRewardsDtoToJson(
        _$_ReferralRewardsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_from_id': instance.userFromID,
      'user_from_email': instance.userFromEmail,
      'created_at': instance.createdAt,
      'amount': instance.amount,
      'amount_currency': instance.amountCurrency,
    };
