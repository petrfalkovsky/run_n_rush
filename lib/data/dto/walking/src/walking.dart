import 'package:freezed_annotation/freezed_annotation.dart';

part 'walking.freezed.dart';
part 'walking.g.dart';

@freezed
class WalkingUserDto with _$WalkingUserDto {
  factory WalkingUserDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'email') required String? email,
  }) = _WalkingUserDto;

  factory WalkingUserDto.fromJson(Map<String, dynamic> json) =>
      _$WalkingUserDtoFromJson(json);
}

@freezed
class WalkingSneakerDto with _$WalkingSneakerDto {
  factory WalkingSneakerDto({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'image_url') required String? imageUrl,
  }) = _WalkingSneakerDto;

  factory WalkingSneakerDto.fromJson(Map<String, dynamic> json) =>
      _$WalkingSneakerDtoFromJson(json);
}

@freezed
class WalkingDataDto with _$WalkingDataDto {
  factory WalkingDataDto({
    @JsonKey(name: 'user') required WalkingUserDto user,
    @JsonKey(name: 'sneakers') required List<WalkingSneakerDto> sneakers,
    @JsonKey(name: 'balance') required String? balance,
    @JsonKey(name: 'energy') required String? energy,
    @JsonKey(name: 'distance') required int? distance,
    @JsonKey(name: 'energy_max') required String? energyMax,
    @JsonKey(name: 'distance_max') required int? distanceMax,
  }) = _WalkingDataDto;

  factory WalkingDataDto.fromJson(Map<String, dynamic> json) =>
      _$WalkingDataDtoFromJson(json);
}
