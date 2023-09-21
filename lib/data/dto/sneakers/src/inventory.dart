// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

@freezed
class SneakerInventory with _$SneakerInventory {
  factory SneakerInventory({
    required String id,
    required String createdAt,
    required String updatedAt,
    required String title,
    required String imageUrl,
    required String ownerId,
    required String sneakerId,
    required String earnedAmount,
    required int stepsAmount,
    required bool isDressed,
  }) = _SneakerInventory;

  factory SneakerInventory.fromJson(Map<String, dynamic> json) =>
      _$SneakerInventoryFromJson(json);
}
