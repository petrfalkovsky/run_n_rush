import 'package:freezed_annotation/freezed_annotation.dart';

part 'walking_start.freezed.dart';
part 'walking_start.g.dart';

@freezed
class WalkingStartDto with _$WalkingStartDto {
  factory WalkingStartDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'steps_count') required int? stepsCount,
    @JsonKey(name: 'distance') required int? distance,
    @JsonKey(name: 'earned_coins') required String? earnedCoins,
    @JsonKey(name: 'spend_energy') required String? spendEnergy,
    @JsonKey(name: 'started') required String? started,
    @JsonKey(name: 'finished') required int? finished,
    @JsonKey(name: 'energy') required int? energy,
  }) = _WalkingStartDto;

  factory WalkingStartDto.fromJson(Map<String, dynamic> json) =>
      _$WalkingStartDtoFromJson(json);
}
