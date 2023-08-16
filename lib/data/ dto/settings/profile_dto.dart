import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/domain/core/extended_errors.dart';
import 'package:riverside/domain/profile/profile_info.dart';

part 'profile_dto.g.dart';

@JsonSerializable()
class ProfileBody {
  const ProfileBody({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.birthday,
  });
  factory ProfileBody.fromJson(Map<String, dynamic> json) =>
      _$ProfileBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileBodyToJson(this);

  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  final String? birthday;

  ProfileBody copyWith({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? birthday,
  }) {
    return ProfileBody(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      birthday: birthday ?? this.birthday,
    );
  }

  @override
  String toString() {
    return 'ProfileBody(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, birthday: $birthday)';
  }
}

@JsonSerializable()
class ProfileDto {
  const ProfileDto({
    this.id,
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.birthday,
  });

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);

  final String? id;
  final String? email;
  final String? password;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  final String? birthday;
}

extension ProfileDtoX on ProfileDto {
  Either<ExtendedErrors, ProfileInfo> toDomain() {
    try {
      final domain = ProfileInfo(
        id: id ?? '',
        email: email ?? '',
        firstName: firstName ?? '',
        lastName: lastName ?? '',
        phoneNumber: phoneNumber ?? '',
        birthday: birthday ?? '',
      );

      return Right(domain);
    } on Exception catch (e) {
      // Возвращаем исключение
      return left(ExtendedErrors.simple(e.toString()));
    }
  }
}
