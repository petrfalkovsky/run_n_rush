// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

@freezed
class SneakerInventoryDto with _$SneakerInventoryDto {
  factory SneakerInventoryDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'image_url') required String? imageUrl,
    @JsonKey(name: 'owner_id') required String? ownerId,
    @JsonKey(name: 'sneaker_id') required String? sneakerId,
    @JsonKey(name: 'earned_amount') required String? earnedAmount,
    @JsonKey(name: 'steps_amount') required int? stepsAmount,
    @JsonKey(name: 'is_dressed') required bool? isDressed,
  }) = _SneakerDtoInventoryDto;

  factory SneakerInventoryDto.fromJson(Map<String, dynamic> json) =>
      _$SneakerInventoryDtoFromJson(json);
}
