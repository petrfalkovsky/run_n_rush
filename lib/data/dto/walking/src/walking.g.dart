// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalkingUser _$$_WalkingUserFromJson(Map<String, dynamic> json) =>
    _$_WalkingUser(
      id: json['id'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_WalkingUserToJson(_$_WalkingUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatarUrl': instance.avatarUrl,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
    };

_$_WalkingSneaker _$$_WalkingSneakerFromJson(Map<String, dynamic> json) =>
    _$_WalkingSneaker(
      id: json['id'] as String?,
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_WalkingSneakerToJson(_$_WalkingSneaker instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
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
      energyMax: json['energyMax'] as String?,
      distanceMax: json['distanceMax'] as int?,
    );

Map<String, dynamic> _$$_WalkingDataToJson(_$_WalkingData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'sneakers': instance.sneakers,
      'balance': instance.balance,
      'energy': instance.energy,
      'distance': instance.distance,
      'energyMax': instance.energyMax,
      'distanceMax': instance.distanceMax,
    };
