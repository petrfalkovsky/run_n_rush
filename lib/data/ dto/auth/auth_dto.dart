import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_dto.g.dart';

@JsonSerializable()
class UserDataDto {
  UserDataDto({
    required this.refresh,
    required this.access,
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.birthday,
    required this.phoneNumber,
  });

  final String? refresh;
  final String? access;
  final String? id;
  final String? email;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? birthday;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  factory UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$UserDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataDtoToJson(this);
}

@JsonSerializable()
class DetailDto {
  DetailDto({
    required this.detail,
    required this.success,
  });

  final String? detail;
  final String? success;

  factory DetailDto.fromJson(Map<String, dynamic> json) =>
      _$DetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DetailDtoToJson(this);
}
