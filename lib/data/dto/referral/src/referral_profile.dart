// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_profile.freezed.dart';
part 'referral_profile.g.dart';

@freezed
class ReferralProfileDto with _$ReferralProfileDto {
  const factory ReferralProfileDto({
    @JsonKey(name: 'user_id') required String? userID,
    @JsonKey(name: 'greeting') required String? greeting,
    @JsonKey(name: 'code') required String? code,
    @JsonKey(name: 'referrer_id') required String? referrerID,
    @JsonKey(name: 'balance') required String? balance,
    @JsonKey(name: 'balance_currency') required String? balanceCurrency,
    @JsonKey(name: 'referrals_count') required double? referralsCount,
    @JsonKey(name: 'commission') required String? commission,
  }) = _ReferralProfileDto;

  factory ReferralProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ReferralProfileDtoFromJson(json);
}
