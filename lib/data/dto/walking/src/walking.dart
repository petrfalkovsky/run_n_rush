import 'package:freezed_annotation/freezed_annotation.dart';

part 'walking.freezed.dart';
part 'walking.g.dart';

@freezed
class WalkingUser with _$WalkingUser {
  factory WalkingUser({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'email') required String? email,
  }) = _WalkingUser;

  factory WalkingUser.fromJson(Map<String, dynamic> json) =>
      _$WalkingUserFromJson(json);
}

@freezed
class WalkingSneaker with _$WalkingSneaker {
  factory WalkingSneaker({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'image_url') required String? imageUrl,
  }) = _WalkingSneaker;

  factory WalkingSneaker.fromJson(Map<String, dynamic> json) =>
      _$WalkingSneakerFromJson(json);
}

@freezed
class WalkingData with _$WalkingData {
  factory WalkingData({
    @JsonKey(name: 'user') required WalkingUser user,
    @JsonKey(name: 'sneakers') required List<WalkingSneaker> sneakers,
    @JsonKey(name: 'balance') required String? balance,
    @JsonKey(name: 'energy') required String? energy,
    @JsonKey(name: 'distance') required int? distance,
    @JsonKey(name: 'energy_max') required String? energyMax,
    @JsonKey(name: 'distance_max') required int? distanceMax,
  }) = _WalkingData;

  factory WalkingData.fromJson(Map<String, dynamic> json) =>
      _$WalkingDataFromJson(json);
}
