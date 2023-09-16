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

UserDataToken _$UserDataTokenFromJson(Map<String, dynamic> json) {
  return _UserDataToken.fromJson(json);
}

/// @nodoc
mixin _$UserDataToken {
  String? get access => throw _privateConstructorUsedError;
  String? get refresh => throw _privateConstructorUsedError;
  UserData get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataTokenCopyWith<UserDataToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataTokenCopyWith<$Res> {
  factory $UserDataTokenCopyWith(
          UserDataToken value, $Res Function(UserDataToken) then) =
      _$UserDataTokenCopyWithImpl<$Res, UserDataToken>;
  @useResult
  $Res call({String? access, String? refresh, UserData user});

  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDataTokenCopyWithImpl<$Res, $Val extends UserDataToken>
    implements $UserDataTokenCopyWith<$Res> {
  _$UserDataTokenCopyWithImpl(this._value, this._then);

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
              as UserData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDataTokenCopyWith<$Res>
    implements $UserDataTokenCopyWith<$Res> {
  factory _$$_UserDataTokenCopyWith(
          _$_UserDataToken value, $Res Function(_$_UserDataToken) then) =
      __$$_UserDataTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? access, String? refresh, UserData user});

  @override
  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserDataTokenCopyWithImpl<$Res>
    extends _$UserDataTokenCopyWithImpl<$Res, _$_UserDataToken>
    implements _$$_UserDataTokenCopyWith<$Res> {
  __$$_UserDataTokenCopyWithImpl(
      _$_UserDataToken _value, $Res Function(_$_UserDataToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
    Object? user = null,
  }) {
    return _then(_$_UserDataToken(
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
              as UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataToken implements _UserDataToken {
  const _$_UserDataToken(
      {required this.access, required this.refresh, required this.user});

  factory _$_UserDataToken.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataTokenFromJson(json);

  @override
  final String? access;
  @override
  final String? refresh;
  @override
  final UserData user;

  @override
  String toString() {
    return 'UserDataToken(access: $access, refresh: $refresh, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataToken &&
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
  _$$_UserDataTokenCopyWith<_$_UserDataToken> get copyWith =>
      __$$_UserDataTokenCopyWithImpl<_$_UserDataToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataTokenToJson(
      this,
    );
  }
}

abstract class _UserDataToken implements UserDataToken {
  const factory _UserDataToken(
      {required final String? access,
      required final String? refresh,
      required final UserData user}) = _$_UserDataToken;

  factory _UserDataToken.fromJson(Map<String, dynamic> json) =
      _$_UserDataToken.fromJson;

  @override
  String? get access;
  @override
  String? get refresh;
  @override
  UserData get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataTokenCopyWith<_$_UserDataToken> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
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
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
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
class __$$_UserDataCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$_UserData>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
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
    return _then(_$_UserData(
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
class _$_UserData implements _UserData {
  const _$_UserData(
      {required this.id,
      @JsonKey(name: 'avatar_url') required this.avatarUrl,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'email') required this.email});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

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
    return 'UserData(id: $id, avatarUrl: $avatarUrl, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
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
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String? id,
      @JsonKey(name: 'avatar_url') required final String? avatarUrl,
      @JsonKey(name: 'first_name') required final String? firstName,
      @JsonKey(name: 'last_name') required final String? lastName,
      @JsonKey(name: 'email') required final String? email}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

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
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
