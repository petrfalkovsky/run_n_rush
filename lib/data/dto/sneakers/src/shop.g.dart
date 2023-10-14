// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SneakerShopDto _$$_SneakerShopDtoFromJson(Map<String, dynamic> json) =>
    _$_SneakerShopDto(
      id: json['id'] as String?,
      sneaker: SneakerDto.fromJson(json['sneaker'] as Map<String, dynamic>),
      price: json['price'] as String?,
      isClosed: json['is_closed'] as bool?,
    );

Map<String, dynamic> _$$_SneakerShopDtoToJson(_$_SneakerShopDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sneaker': instance.sneaker,
      'price': instance.price,
      'is_closed': instance.isClosed,
    };

_$_SneakerDto _$$_SneakerDtoFromJson(Map<String, dynamic> json) =>
    _$_SneakerDto(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      inventoryId: json['inventory_id'] as String?,
      title: json['title'] as String?,
      imageUrl: json['image_url'] as String?,
      sneakerClassId: json['sneaker_class_id'] as String?,
      coinsFor1000Steps: json['coins_for_1000_steps'] as String?,
    );

Map<String, dynamic> _$$_SneakerDtoToJson(_$_SneakerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'inventory_id': instance.inventoryId,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'sneaker_class_id': instance.sneakerClassId,
      'coins_for_1000_steps': instance.coinsFor1000Steps,
    };
