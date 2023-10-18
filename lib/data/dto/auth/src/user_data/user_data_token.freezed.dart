// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataTokenDto _$UserDataTokenDtoFromJson(Map<String, dynamic> json) {
  return _UserDataTokenDto.fromJson(json);
}

/// @nodoc
mixin _$UserDataTokenDto {
  String? get access => throw _privateConstructorUsedError;
  String? get refresh => throw _privateConstructorUsedError;
  UserDataDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataTokenDtoCopyWith<UserDataTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataTokenDtoCopyWith<$Res> {
  factory $UserDataTokenDtoCopyWith(
          UserDataTokenDto value, $Res Function(UserDataTokenDto) then) =
      _$UserDataTokenDtoCopyWithImpl<$Res, UserDataTokenDto>;
  @useResult
  $Res call({String? access, String? refresh, UserDataDto user});

  $UserDataDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDataTokenDtoCopyWithImpl<$Res, $Val extends UserDataTokenDto>
    implements $UserDataTokenDtoCopyWith<$Res> {
  _$UserDataTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh: freezed == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataDtoCopyWith<$Res> get user {
    return $UserDataDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDataTokenDtoCopyWith<$Res>
    implements $UserDataTokenDtoCopyWith<$Res> {
  factory _$$_UserDataTokenDtoCopyWith(
          _$_UserDataTokenDto value, $Res Function(_$_UserDataTokenDto) then) =
      __$$_UserDataTokenDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? access, String? refresh, UserDataDto user});

  @override
  $UserDataDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserDataTokenDtoCopyWithImpl<$Res>
    extends _$UserDataTokenDtoCopyWithImpl<$Res, _$_UserDataTokenDto>
    implements _$$_UserDataTokenDtoCopyWith<$Res> {
  __$$_UserDataTokenDtoCopyWithImpl(
      _$_UserDataTokenDto _value, $Res Function(_$_UserDataTokenDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
    Object? user = null,
  }) {
    return _then(_$_UserDataTokenDto(
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh: freezed == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataTokenDto implements _UserDataTokenDto {
  const _$_UserDataTokenDto(
      {required this.access, required this.refresh, required this.user});

  factory _$_UserDataTokenDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataTokenDtoFromJson(json);

  @override
  final String? access;
  @override
  final String? refresh;
  @override
  final UserDataDto user;

  @override
  String toString() {
    return 'UserDataTokenDto(access: $access, refresh: $refresh, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataTokenDto &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access, refresh, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataTokenDtoCopyWith<_$_UserDataTokenDto> get copyWith =>
      __$$_UserDataTokenDtoCopyWithImpl<_$_UserDataTokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataTokenDtoToJson(
      this,
    );
  }
}

abstract class _UserDataTokenDto implements UserDataTokenDto {
  const factory _UserDataTokenDto(
      {required final String? access,
      required final String? refresh,
      required final UserDataDto user}) = _$_UserDataTokenDto;

  factory _UserDataTokenDto.fromJson(Map<String, dynamic> json) =
      _$_UserDataTokenDto.fromJson;

  @override
  String? get access;
  @override
  String? get refresh;
  @override
  UserDataDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataTokenDtoCopyWith<_$_UserDataTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDataDto _$UserDataDtoFromJson(Map<String, dynamic> json) {
  return _UserDataDto.fromJson(json);
}

/// @nodoc
mixin _$UserDataDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataDtoCopyWith<UserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataDtoCopyWith<$Res> {
  factory $UserDataDtoCopyWith(
          UserDataDto value, $Res Function(UserDataDto) then) =
      _$UserDataDtoCopyWithImpl<$Res, UserDataDto>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$UserDataDtoCopyWithImpl<$Res, $Val extends UserDataDto>
    implements $UserDataDtoCopyWith<$Res> {
  _$UserDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatarUrl = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDataDtoCopyWith<$Res>
    implements $UserDataDtoCopyWith<$Res> {
  factory _$$_UserDataDtoCopyWith(
          _$_UserDataDto value, $Res Function(_$_UserDataDto) then) =
      __$$_UserDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$_UserDataDtoCopyWithImpl<$Res>
    extends _$UserDataDtoCopyWithImpl<$Res, _$_UserDataDto>
    implements _$$_UserDataDtoCopyWith<$Res> {
  __$$_UserDataDtoCopyWithImpl(
      _$_UserDataDto _value, $Res Function(_$_UserDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatarUrl = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_UserDataDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataDto implements _UserDataDto {
  const _$_UserDataDto(
      {required this.id,
      @JsonKey(name: 'avatar_url') required this.avatarUrl,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'email') required this.email});

  factory _$_UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'UserDataDto(id: $id, avatarUrl: $avatarUrl, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, avatarUrl, firstName, lastName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataDtoCopyWith<_$_UserDataDto> get copyWith =>
      __$$_UserDataDtoCopyWithImpl<_$_UserDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataDtoToJson(
      this,
    );
  }
}

abstract class _UserDataDto implements UserDataDto {
  const factory _UserDataDto(
      {required final String? id,
      @JsonKey(name: 'avatar_url') required final String? avatarUrl,
      @JsonKey(name: 'first_name') required final String? firstName,
      @JsonKey(name: 'last_name') required final String? lastName,
      @JsonKey(name: 'email') required final String? email}) = _$_UserDataDto;

  factory _UserDataDto.fromJson(Map<String, dynamic> json) =
      _$_UserDataDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataDtoCopyWith<_$_UserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
