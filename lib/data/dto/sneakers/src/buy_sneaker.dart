import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_sneaker.freezed.dart';
part 'buy_sneaker.g.dart';

@freezed
class SneakerPostRequest with _$SneakerPostRequest {
  factory SneakerPostRequest({
    @JsonKey(name: 'id') required String? id,
  }) = _SneakerPostRequest;

  factory SneakerPostRequest.fromJson(Map<String, dynamic> json) =>
      _$SneakerPostRequestFromJson(json);
}

@freezed
class SneakerPostResponse with _$SneakerPostResponse {
  factory SneakerPostResponse({
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
  }) = _SneakerPostResponse;

  factory SneakerPostResponse.fromJson(Map<String, dynamic> json) =>
      _$SneakerPostResponseFromJson(json);
}
