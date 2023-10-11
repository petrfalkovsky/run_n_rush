// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalkingUser _$$_WalkingUserFromJson(Map<String, dynamic> json) =>
    _$_WalkingUser(
      id: json['id'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_WalkingUserToJson(_$_WalkingUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
    };

_$_WalkingSneaker _$$_WalkingSneakerFromJson(Map<String, dynamic> json) =>
    _$_WalkingSneaker(
      id: json['id'] as String?,
      title: json['title'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$_WalkingSneakerToJson(_$_WalkingSneaker instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_url': instance.imageUrl,
    };

_$_WalkingData _$$_WalkingDataFromJson(Map<String, dynamic> json) =>
    _$_WalkingData(
      user: WalkingUser.fromJson(json['user'] as Map<String, dynamic>),
      sneakers: (json['sneakers'] as List<dynamic>)
          .map((e) => WalkingSneaker.fromJson(e as Map<String, dynamic>))
          .toList(),
      balance: json['balance'] as String?,
      energy: json['energy'] as String?,
      distance: json['distance'] as int?,
      energyMax: json['energy_max'] as String?,
      distanceMax: json['distance_max'] as int?,
    );

Map<String, dynamic> _$$_WalkingDataToJson(_$_WalkingData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'sneakers': instance.sneakers,
      'balance': instance.balance,
      'energy': instance.energy,
      'distance': instance.distance,
      'energy_max': instance.energyMax,
      'distance_max': instance.distanceMax,
    };
