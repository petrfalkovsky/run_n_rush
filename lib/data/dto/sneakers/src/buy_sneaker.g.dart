// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_sneaker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SneakerPostRequest _$$_SneakerPostRequestFromJson(
        Map<String, dynamic> json) =>
    _$_SneakerPostRequest(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_SneakerPostRequestToJson(
        _$_SneakerPostRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_SneakerPostResponse _$$_SneakerPostResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SneakerPostResponse(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      title: json['title'] as String?,
      imageUrl: json['image_url'] as String?,
      ownerId: json['owner_id'] as String?,
      sneakerId: json['sneaker_id'] as String?,
      earnedAmount: json['earned_amount'] as String?,
      stepsAmount: json['steps_amount'] as int?,
      isDressed: json['is_dressed'] as bool?,
    );

Map<String, dynamic> _$$_SneakerPostResponseToJson(
        _$_SneakerPostResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'owner_id': instance.ownerId,
      'sneaker_id': instance.sneakerId,
      'earned_amount': instance.earnedAmount,
      'steps_amount': instance.stepsAmount,
      'is_dressed': instance.isDressed,
    };
