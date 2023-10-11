import 'package:freezed_annotation/freezed_annotation.dart';

part 'walking.freezed.dart';
part 'walking.g.dart';

@freezed
class WalkingUser with _$WalkingUser {
  factory WalkingUser({
    required String? id,
    required String? avatarUrl,
    required String? firstName,
    required String? lastName,
    required String? email,
  }) = _WalkingUser;

  factory WalkingUser.fromJson(Map<String, dynamic> json) =>
      _$WalkingUserFromJson(json);
}

@freezed
class WalkingSneaker with _$WalkingSneaker {
  factory WalkingSneaker({
    required String? id,
    required String? title,
    required String? imageUrl,
  }) = _WalkingSneaker;

  factory WalkingSneaker.fromJson(Map<String, dynamic> json) =>
      _$WalkingSneakerFromJson(json);
}

@freezed
class WalkingData with _$WalkingData {
  factory WalkingData({
    required WalkingUser user,
    required List<WalkingSneaker> sneakers,
    required String? balance,
    required String? energy,
    required int? distance,
    required String? energyMax,
    required int? distanceMax,
  }) = _WalkingData;

  factory WalkingData.fromJson(Map<String, dynamic> json) =>
      _$WalkingDataFromJson(json);
}
