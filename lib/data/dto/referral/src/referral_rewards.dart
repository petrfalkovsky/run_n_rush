// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_rewards.freezed.dart';
part 'referral_rewards.g.dart';

@freezed
class ReferralRewardsDto with _$ReferralRewardsDto {
  const factory ReferralRewardsDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'user_from_id') required String? userFromID,
    @JsonKey(name: 'user_from_email') required String? userFromEmail,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'amount') required String? amount,
    @JsonKey(name: 'amount_currency') required String? amountCurrency,
  }) = _ReferralRewardsDto;

  factory ReferralRewardsDto.fromJson(Map<String, dynamic> json) =>
      _$ReferralRewardsDtoFromJson(json);
}
