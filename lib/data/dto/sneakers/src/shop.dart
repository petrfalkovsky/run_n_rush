import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop.freezed.dart';
part 'shop.g.dart';

@freezed
class SneakerShopDto with _$SneakerShopDto {
  factory SneakerShopDto({
    @JsonKey(name: 'id') required String? id,
    required SneakerDto sneaker,
    @JsonKey(name: 'price') required String? price,
    @JsonKey(name: 'is_closed') required bool? isClosed,
  }) = _SneakerShopDto;

  factory SneakerShopDto.fromJson(Map<String, dynamic> json) =>
      _$SneakerShopDtoFromJson(json);
}

@freezed
class SneakerDto with _$SneakerDto {
  factory SneakerDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
    @JsonKey(name: 'inventory_id') required String? inventoryId,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'image_url') required String? imageUrl,
    @JsonKey(name: 'sneaker_class_id') required String? sneakerClassId,
    @JsonKey(name: 'coins_for_1000_steps') required String? coinsFor1000Steps,
  }) = _SneakerDto;

  factory SneakerDto.fromJson(Map<String, dynamic> json) =>
      _$SneakerDtoFromJson(json);
}
