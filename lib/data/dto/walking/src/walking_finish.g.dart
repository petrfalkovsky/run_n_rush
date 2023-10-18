// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walking_finish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalkingFinishDto _$$_WalkingFinishDtoFromJson(Map<String, dynamic> json) =>
    _$_WalkingFinishDto(
      id: json['id'] as String?,
      stepsCount: json['steps_count'] as int?,
      distance: json['distance'] as int?,
      earnedCoins: json['earned_coins'] as String?,
      spendEnergy: json['spend_energy'] as String?,
      started: json['started'] as String?,
      finished: json['finished'] as String?,
      energy: json['energy'] as String?,
    );

Map<String, dynamic> _$$_WalkingFinishDtoToJson(_$_WalkingFinishDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'steps_count': instance.stepsCount,
      'distance': instance.distance,
      'earned_coins': instance.earnedCoins,
      'spend_energy': instance.spendEnergy,
      'started': instance.started,
      'finished': instance.finished,
      'energy': instance.energy,
    };

_$_WalkingFinishBodyDto _$$_WalkingFinishBodyDtoFromJson(
        Map<String, dynamic> json) =>
    _$_WalkingFinishBodyDto(
      id: json['id'] as String?,
      stepsCount: json['steps_count'] as int?,
      distance: json['distance'] as int?,
    );

Map<String, dynamic> _$$_WalkingFinishBodyDtoToJson(
        _$_WalkingFinishBodyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'steps_count': instance.stepsCount,
      'distance': instance.distance,
    };
