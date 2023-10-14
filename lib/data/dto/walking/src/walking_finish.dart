import 'package:freezed_annotation/freezed_annotation.dart';

part 'walking_finish.freezed.dart';
part 'walking_finish.g.dart';

@freezed
class WalkingFinishDto with _$WalkingFinishDto {
  factory WalkingFinishDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'steps_count') required int? stepsCount,
    @JsonKey(name: 'distance') required int? distance,
    @JsonKey(name: 'earned_coins') required String? earnedCoins,
    @JsonKey(name: 'spend_energy') required String? spendEnergy,
    @JsonKey(name: 'started') required String? started,
    @JsonKey(name: 'finished') required int? finished,
    @JsonKey(name: 'energy') required int? energy,
  }) = _WalkingFinishDto;

  factory WalkingFinishDto.fromJson(Map<String, dynamic> json) =>
      _$WalkingFinishDtoFromJson(json);
}

@freezed
class WalkingFinishBodyDto with _$WalkingFinishBodyDto {
  const factory WalkingFinishBodyDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'steps_count') required int? stepsCount,
    @JsonKey(name: 'distance') required int? distance,
  }) = _WalkingFinishBodyDto;

  factory WalkingFinishBodyDto.fromJson(Map<String, dynamic> json) =>
      _$WalkingFinishBodyDtoFromJson(json);
}
