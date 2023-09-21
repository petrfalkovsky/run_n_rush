// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SneakerInventory _$$_SneakerInventoryFromJson(Map<String, dynamic> json) =>
    _$_SneakerInventory(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      ownerId: json['ownerId'] as String,
      sneakerId: json['sneakerId'] as String,
      earnedAmount: json['earnedAmount'] as String,
      stepsAmount: json['stepsAmount'] as int,
      isDressed: json['isDressed'] as bool,
    );

Map<String, dynamic> _$$_SneakerInventoryToJson(_$_SneakerInventory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'ownerId': instance.ownerId,
      'sneakerId': instance.sneakerId,
      'earnedAmount': instance.earnedAmount,
      'stepsAmount': instance.stepsAmount,
      'isDressed': instance.isDressed,
    };
