// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walking_start.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalkingStartDto _$$_WalkingStartDtoFromJson(Map<String, dynamic> json) =>
    _$_WalkingStartDto(
      id: json['id'] as String?,
      stepsCount: json['steps_count'] as int?,
      distance: json['distance'] as int?,
      earnedCoins: json['earned_coins'] as String?,
      spendEnergy: json['spend_energy'] as String?,
      started: json['started'] as String?,
      finished: json['finished'] as int?,
      energy: json['energy'] as int?,
    );

Map<String, dynamic> _$$_WalkingStartDtoToJson(_$_WalkingStartDto instance) =>
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
