// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalkingUser _$WalkingUserFromJson(Map<String, dynamic> json) {
  return _WalkingUser.fromJson(json);
}

/// @nodoc
mixin _$WalkingUser {
  String? get id => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalkingUserCopyWith<WalkingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkingUserCopyWith<$Res> {
  factory $WalkingUserCopyWith(
          WalkingUser value, $Res Function(WalkingUser) then) =
      _$WalkingUserCopyWithImpl<$Res, WalkingUser>;
  @useResult
  $Res call(
      {String? id,
      String? avatarUrl,
      String? firstName,
      String? lastName,
      String? email});
}

/// @nodoc
class _$WalkingUserCopyWithImpl<$Res, $Val extends WalkingUser>
    implements $WalkingUserCopyWith<$Res> {
  _$WalkingUserCopyWithImpl(this._value, this._then);

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
abstract class _$$_WalkingUserCopyWith<$Res>
    implements $WalkingUserCopyWith<$Res> {
  factory _$$_WalkingUserCopyWith(
          _$_WalkingUser value, $Res Function(_$_WalkingUser) then) =
      __$$_WalkingUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? avatarUrl,
      String? firstName,
      String? lastName,
      String? email});
}

/// @nodoc
class __$$_WalkingUserCopyWithImpl<$Res>
    extends _$WalkingUserCopyWithImpl<$Res, _$_WalkingUser>
    implements _$$_WalkingUserCopyWith<$Res> {
  __$$_WalkingUserCopyWithImpl(
      _$_WalkingUser _value, $Res Function(_$_WalkingUser) _then)
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
    return _then(_$_WalkingUser(
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
class _$_WalkingUser implements _WalkingUser {
  _$_WalkingUser(
      {required this.id,
      required this.avatarUrl,
      required this.firstName,
      required this.lastName,
      required this.email});

  factory _$_WalkingUser.fromJson(Map<String, dynamic> json) =>
      _$$_WalkingUserFromJson(json);

  @override
  final String? id;
  @override
  final String? avatarUrl;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;

  @override
  String toString() {
    return 'WalkingUser(id: $id, avatarUrl: $avatarUrl, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalkingUser &&
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
  _$$_WalkingUserCopyWith<_$_WalkingUser> get copyWith =>
      __$$_WalkingUserCopyWithImpl<_$_WalkingUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalkingUserToJson(
      this,
    );
  }
}

abstract class _WalkingUser implements WalkingUser {
  factory _WalkingUser(
      {required final String? id,
      required final String? avatarUrl,
      required final String? firstName,
      required final String? lastName,
      required final String? email}) = _$_WalkingUser;

  factory _WalkingUser.fromJson(Map<String, dynamic> json) =
      _$_WalkingUser.fromJson;

  @override
  String? get id;
  @override
  String? get avatarUrl;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_WalkingUserCopyWith<_$_WalkingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

WalkingSneaker _$WalkingSneakerFromJson(Map<String, dynamic> json) {
  return _WalkingSneaker.fromJson(json);
}

/// @nodoc
mixin _$WalkingSneaker {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalkingSneakerCopyWith<WalkingSneaker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkingSneakerCopyWith<$Res> {
  factory $WalkingSneakerCopyWith(
          WalkingSneaker value, $Res Function(WalkingSneaker) then) =
      _$WalkingSneakerCopyWithImpl<$Res, WalkingSneaker>;
  @useResult
  $Res call({String? id, String? title, String? imageUrl});
}

/// @nodoc
class _$WalkingSneakerCopyWithImpl<$Res, $Val extends WalkingSneaker>
    implements $WalkingSneakerCopyWith<$Res> {
  _$WalkingSneakerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalkingSneakerCopyWith<$Res>
    implements $WalkingSneakerCopyWith<$Res> {
  factory _$$_WalkingSneakerCopyWith(
          _$_WalkingSneaker value, $Res Function(_$_WalkingSneaker) then) =
      __$$_WalkingSneakerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? imageUrl});
}

/// @nodoc
class __$$_WalkingSneakerCopyWithImpl<$Res>
    extends _$WalkingSneakerCopyWithImpl<$Res, _$_WalkingSneaker>
    implements _$$_WalkingSneakerCopyWith<$Res> {
  __$$_WalkingSneakerCopyWithImpl(
      _$_WalkingSneaker _value, $Res Function(_$_WalkingSneaker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_WalkingSneaker(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalkingSneaker implements _WalkingSneaker {
  _$_WalkingSneaker(
      {required this.id, required this.title, required this.imageUrl});

  factory _$_WalkingSneaker.fromJson(Map<String, dynamic> json) =>
      _$$_WalkingSneakerFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'WalkingSneaker(id: $id, title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalkingSneaker &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalkingSneakerCopyWith<_$_WalkingSneaker> get copyWith =>
      __$$_WalkingSneakerCopyWithImpl<_$_WalkingSneaker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalkingSneakerToJson(
      this,
    );
  }
}

abstract class _WalkingSneaker implements WalkingSneaker {
  factory _WalkingSneaker(
      {required final String? id,
      required final String? title,
      required final String? imageUrl}) = _$_WalkingSneaker;

  factory _WalkingSneaker.fromJson(Map<String, dynamic> json) =
      _$_WalkingSneaker.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_WalkingSneakerCopyWith<_$_WalkingSneaker> get copyWith =>
      throw _privateConstructorUsedError;
}

WalkingData _$WalkingDataFromJson(Map<String, dynamic> json) {
  return _WalkingData.fromJson(json);
}

/// @nodoc
mixin _$WalkingData {
  WalkingUser get user => throw _privateConstructorUsedError;
  List<WalkingSneaker> get sneakers => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;
  String? get energy => throw _privateConstructorUsedError;
  int? get distance => throw _privateConstructorUsedError;
  String? get energyMax => throw _privateConstructorUsedError;
  int? get distanceMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalkingDataCopyWith<WalkingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkingDataCopyWith<$Res> {
  factory $WalkingDataCopyWith(
          WalkingData value, $Res Function(WalkingData) then) =
      _$WalkingDataCopyWithImpl<$Res, WalkingData>;
  @useResult
  $Res call(
      {WalkingUser user,
      List<WalkingSneaker> sneakers,
      String? balance,
      String? energy,
      int? distance,
      String? energyMax,
      int? distanceMax});

  $WalkingUserCopyWith<$Res> get user;
}

/// @nodoc
class _$WalkingDataCopyWithImpl<$Res, $Val extends WalkingData>
    implements $WalkingDataCopyWith<$Res> {
  _$WalkingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? sneakers = null,
    Object? balance = freezed,
    Object? energy = freezed,
    Object? distance = freezed,
    Object? energyMax = freezed,
    Object? distanceMax = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as WalkingUser,
      sneakers: null == sneakers
          ? _value.sneakers
          : sneakers // ignore: cast_nullable_to_non_nullable
              as List<WalkingSneaker>,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      energy: freezed == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      energyMax: freezed == energyMax
          ? _value.energyMax
          : energyMax // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceMax: freezed == distanceMax
          ? _value.distanceMax
          : distanceMax // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalkingUserCopyWith<$Res> get user {
    return $WalkingUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WalkingDataCopyWith<$Res>
    implements $WalkingDataCopyWith<$Res> {
  factory _$$_WalkingDataCopyWith(
          _$_WalkingData value, $Res Function(_$_WalkingData) then) =
      __$$_WalkingDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WalkingUser user,
      List<WalkingSneaker> sneakers,
      String? balance,
      String? energy,
      int? distance,
      String? energyMax,
      int? distanceMax});

  @override
  $WalkingUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_WalkingDataCopyWithImpl<$Res>
    extends _$WalkingDataCopyWithImpl<$Res, _$_WalkingData>
    implements _$$_WalkingDataCopyWith<$Res> {
  __$$_WalkingDataCopyWithImpl(
      _$_WalkingData _value, $Res Function(_$_WalkingData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? sneakers = null,
    Object? balance = freezed,
    Object? energy = freezed,
    Object? distance = freezed,
    Object? energyMax = freezed,
    Object? distanceMax = freezed,
  }) {
    return _then(_$_WalkingData(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as WalkingUser,
      sneakers: null == sneakers
          ? _value._sneakers
          : sneakers // ignore: cast_nullable_to_non_nullable
              as List<WalkingSneaker>,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      energy: freezed == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      energyMax: freezed == energyMax
          ? _value.energyMax
          : energyMax // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceMax: freezed == distanceMax
          ? _value.distanceMax
          : distanceMax // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalkingData implements _WalkingData {
  _$_WalkingData(
      {required this.user,
      required final List<WalkingSneaker> sneakers,
      required this.balance,
      required this.energy,
      required this.distance,
      required this.energyMax,
      required this.distanceMax})
      : _sneakers = sneakers;

  factory _$_WalkingData.fromJson(Map<String, dynamic> json) =>
      _$$_WalkingDataFromJson(json);

  @override
  final WalkingUser user;
  final List<WalkingSneaker> _sneakers;
  @override
  List<WalkingSneaker> get sneakers {
    if (_sneakers is EqualUnmodifiableListView) return _sneakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sneakers);
  }

  @override
  final String? balance;
  @override
  final String? energy;
  @override
  final int? distance;
  @override
  final String? energyMax;
  @override
  final int? distanceMax;

  @override
  String toString() {
    return 'WalkingData(user: $user, sneakers: $sneakers, balance: $balance, energy: $energy, distance: $distance, energyMax: $energyMax, distanceMax: $distanceMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalkingData &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._sneakers, _sneakers) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.energy, energy) || other.energy == energy) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.energyMax, energyMax) ||
                other.energyMax == energyMax) &&
            (identical(other.distanceMax, distanceMax) ||
                other.distanceMax == distanceMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_sneakers),
      balance,
      energy,
      distance,
      energyMax,
      distanceMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalkingDataCopyWith<_$_WalkingData> get copyWith =>
      __$$_WalkingDataCopyWithImpl<_$_WalkingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalkingDataToJson(
      this,
    );
  }
}

abstract class _WalkingData implements WalkingData {
  factory _WalkingData(
      {required final WalkingUser user,
      required final List<WalkingSneaker> sneakers,
      required final String? balance,
      required final String? energy,
      required final int? distance,
      required final String? energyMax,
      required final int? distanceMax}) = _$_WalkingData;

  factory _WalkingData.fromJson(Map<String, dynamic> json) =
      _$_WalkingData.fromJson;

  @override
  WalkingUser get user;
  @override
  List<WalkingSneaker> get sneakers;
  @override
  String? get balance;
  @override
  String? get energy;
  @override
  int? get distance;
  @override
  String? get energyMax;
  @override
  int? get distanceMax;
  @override
  @JsonKey(ignore: true)
  _$$_WalkingDataCopyWith<_$_WalkingData> get copyWith =>
      throw _privateConstructorUsedError;
}
