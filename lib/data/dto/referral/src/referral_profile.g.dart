// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferralProfileDto _$$_ReferralProfileDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ReferralProfileDto(
      userID: json['user_id'] as String?,
      greeting: json['greeting'] as String?,
      code: json['code'] as String?,
      referrerID: json['referrer_id'] as String?,
      balance: json['balance'] as String?,
      balanceCurrency: json['balance_currency'] as String?,
      referralsCount: json['referrals_count'] as int?,
      commission: json['commission'] as String?,
    );

Map<String, dynamic> _$$_ReferralProfileDtoToJson(
        _$_ReferralProfileDto instance) =>
    <String, dynamic>{
      'user_id': instance.userID,
      'greeting': instance.greeting,
      'code': instance.code,
      'referrer_id': instance.referrerID,
      'balance': instance.balance,
      'balance_currency': instance.balanceCurrency,
      'referrals_count': instance.referralsCount,
      'commission': instance.commission,
    };
