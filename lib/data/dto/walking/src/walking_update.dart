import 'package:freezed_annotation/freezed_annotation.dart';

part 'walking_update.freezed.dart';
part 'walking_update.g.dart';

@freezed
class WalkingUpdateDto with _$WalkingUpdateDto {
  factory WalkingUpdateDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'steps_count') required int? stepsCount,
    @JsonKey(name: 'distance') required int? distance,
    @JsonKey(name: 'earned_coins') required String? earnedCoins,
    @JsonKey(name: 'spend_energy') required String? spendEnergy,
    @JsonKey(name: 'started') required String? started,
    @JsonKey(name: 'finished') required String? finished,
    @JsonKey(name: 'energy') required String? energy,
  }) = _WalkingUpdateDto;

  factory WalkingUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$WalkingUpdateDtoFromJson(json);
}

@freezed
class WalkingUpdateBodyDto with _$WalkingUpdateBodyDto {
  const factory WalkingUpdateBodyDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'steps_count') required int? stepsCount,
    @JsonKey(name: 'distance') required int? distance,
  }) = _WalkingUpdateBodyDto;

  factory WalkingUpdateBodyDto.fromJson(Map<String, dynamic> json) =>
      _$WalkingUpdateBodyDtoFromJson(json);
}
