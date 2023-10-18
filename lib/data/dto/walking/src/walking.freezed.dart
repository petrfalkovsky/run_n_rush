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

WalkingUserDto _$WalkingUserDtoFromJson(Map<String, dynamic> json) {
  return _WalkingUserDto.fromJson(json);
}

/// @nodoc
mixin _$WalkingUserDto {
  @JsonKey(name: 'id')
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
  $WalkingUserDtoCopyWith<WalkingUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkingUserDtoCopyWith<$Res> {
  factory $WalkingUserDtoCopyWith(
          WalkingUserDto value, $Res Function(WalkingUserDto) then) =
      _$WalkingUserDtoCopyWithImpl<$Res, WalkingUserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$WalkingUserDtoCopyWithImpl<$Res, $Val extends WalkingUserDto>
    implements $WalkingUserDtoCopyWith<$Res> {
  _$WalkingUserDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_WalkingUserDtoCopyWith<$Res>
    implements $WalkingUserDtoCopyWith<$Res> {
  factory _$$_WalkingUserDtoCopyWith(
          _$_WalkingUserDto value, $Res Function(_$_WalkingUserDto) then) =
      __$$_WalkingUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$_WalkingUserDtoCopyWithImpl<$Res>
    extends _$WalkingUserDtoCopyWithImpl<$Res, _$_WalkingUserDto>
    implements _$$_WalkingUserDtoCopyWith<$Res> {
  __$$_WalkingUserDtoCopyWithImpl(
      _$_WalkingUserDto _value, $Res Function(_$_WalkingUserDto) _then)
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
    return _then(_$_WalkingUserDto(
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
class _$_WalkingUserDto implements _WalkingUserDto {
  _$_WalkingUserDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'avatar_url') required this.avatarUrl,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'email') required this.email});

  factory _$_WalkingUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_WalkingUserDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
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
    return 'WalkingUserDto(id: $id, avatarUrl: $avatarUrl, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalkingUserDto &&
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
  _$$_WalkingUserDtoCopyWith<_$_WalkingUserDto> get copyWith =>
      __$$_WalkingUserDtoCopyWithImpl<_$_WalkingUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalkingUserDtoToJson(
      this,
    );
  }
}

abstract class _WalkingUserDto implements WalkingUserDto {
  factory _WalkingUserDto(
          {@JsonKey(name: 'id') required final String? id,
          @JsonKey(name: 'avatar_url') required final String? avatarUrl,
          @JsonKey(name: 'first_name') required final String? firstName,
          @JsonKey(name: 'last_name') required final String? lastName,
          @JsonKey(name: 'email') required final String? email}) =
      _$_WalkingUserDto;

  factory _WalkingUserDto.fromJson(Map<String, dynamic> json) =
      _$_WalkingUserDto.fromJson;

  @override
  @JsonKey(name: 'id')
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
  _$$_WalkingUserDtoCopyWith<_$_WalkingUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

WalkingSneakerDto _$WalkingSneakerDtoFromJson(Map<String, dynamic> json) {
  return _WalkingSneakerDto.fromJson(json);
}

/// @nodoc
mixin _$WalkingSneakerDto {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalkingSneakerDtoCopyWith<WalkingSneakerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkingSneakerDtoCopyWith<$Res> {
  factory $WalkingSneakerDtoCopyWith(
          WalkingSneakerDto value, $Res Function(WalkingSneakerDto) then) =
      _$WalkingSneakerDtoCopyWithImpl<$Res, WalkingSneakerDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$WalkingSneakerDtoCopyWithImpl<$Res, $Val extends WalkingSneakerDto>
    implements $WalkingSneakerDtoCopyWith<$Res> {
  _$WalkingSneakerDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_WalkingSneakerDtoCopyWith<$Res>
    implements $WalkingSneakerDtoCopyWith<$Res> {
  factory _$$_WalkingSneakerDtoCopyWith(_$_WalkingSneakerDto value,
          $Res Function(_$_WalkingSneakerDto) then) =
      __$$_WalkingSneakerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$_WalkingSneakerDtoCopyWithImpl<$Res>
    extends _$WalkingSneakerDtoCopyWithImpl<$Res, _$_WalkingSneakerDto>
    implements _$$_WalkingSneakerDtoCopyWith<$Res> {
  __$$_WalkingSneakerDtoCopyWithImpl(
      _$_WalkingSneakerDto _value, $Res Function(_$_WalkingSneakerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_WalkingSneakerDto(
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
class _$_WalkingSneakerDto implements _WalkingSneakerDto {
  _$_WalkingSneakerDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$_WalkingSneakerDto.fromJson(Map<String, dynamic> json) =>
      _$$_WalkingSneakerDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'WalkingSneakerDto(id: $id, title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalkingSneakerDto &&
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
  _$$_WalkingSneakerDtoCopyWith<_$_WalkingSneakerDto> get copyWith =>
      __$$_WalkingSneakerDtoCopyWithImpl<_$_WalkingSneakerDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalkingSneakerDtoToJson(
      this,
    );
  }
}

abstract class _WalkingSneakerDto implements WalkingSneakerDto {
  factory _WalkingSneakerDto(
          {@JsonKey(name: 'id') required final String? id,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'image_url') required final String? imageUrl}) =
      _$_WalkingSneakerDto;

  factory _WalkingSneakerDto.fromJson(Map<String, dynamic> json) =
      _$_WalkingSneakerDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_WalkingSneakerDtoCopyWith<_$_WalkingSneakerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

WalkingDataDto _$WalkingDataDtoFromJson(Map<String, dynamic> json) {
  return _WalkingDataDto.fromJson(json);
}

/// @nodoc
mixin _$WalkingDataDto {
  @JsonKey(name: 'user')
  WalkingUserDto get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'sneakers')
  List<WalkingSneakerDto> get sneakers => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  String? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'energy')
  String? get energy => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance')
  int? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'energy_max')
  String? get energyMax => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_max')
  int? get distanceMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalkingDataDtoCopyWith<WalkingDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkingDataDtoCopyWith<$Res> {
  factory $WalkingDataDtoCopyWith(
          WalkingDataDto value, $Res Function(WalkingDataDto) then) =
      _$WalkingDataDtoCopyWithImpl<$Res, WalkingDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') WalkingUserDto user,
      @JsonKey(name: 'sneakers') List<WalkingSneakerDto> sneakers,
      @JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'energy') String? energy,
      @JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'energy_max') String? energyMax,
      @JsonKey(name: 'distance_max') int? distanceMax});

  $WalkingUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$WalkingDataDtoCopyWithImpl<$Res, $Val extends WalkingDataDto>
    implements $WalkingDataDtoCopyWith<$Res> {
  _$WalkingDataDtoCopyWithImpl(this._value, this._then);

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
              as WalkingUserDto,
      sneakers: null == sneakers
          ? _value.sneakers
          : sneakers // ignore: cast_nullable_to_non_nullable
              as List<WalkingSneakerDto>,
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
  $WalkingUserDtoCopyWith<$Res> get user {
    return $WalkingUserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WalkingDataDtoCopyWith<$Res>
    implements $WalkingDataDtoCopyWith<$Res> {
  factory _$$_WalkingDataDtoCopyWith(
          _$_WalkingDataDto value, $Res Function(_$_WalkingDataDto) then) =
      __$$_WalkingDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') WalkingUserDto user,
      @JsonKey(name: 'sneakers') List<WalkingSneakerDto> sneakers,
      @JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'energy') String? energy,
      @JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'energy_max') String? energyMax,
      @JsonKey(name: 'distance_max') int? distanceMax});

  @override
  $WalkingUserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_WalkingDataDtoCopyWithImpl<$Res>
    extends _$WalkingDataDtoCopyWithImpl<$Res, _$_WalkingDataDto>
    implements _$$_WalkingDataDtoCopyWith<$Res> {
  __$$_WalkingDataDtoCopyWithImpl(
      _$_WalkingDataDto _value, $Res Function(_$_WalkingDataDto) _then)
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
    return _then(_$_WalkingDataDto(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as WalkingUserDto,
      sneakers: null == sneakers
          ? _value._sneakers
          : sneakers // ignore: cast_nullable_to_non_nullable
              as List<WalkingSneakerDto>,
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
class _$_WalkingDataDto implements _WalkingDataDto {
  _$_WalkingDataDto(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'sneakers')
      required final List<WalkingSneakerDto> sneakers,
      @JsonKey(name: 'balance') required this.balance,
      @JsonKey(name: 'energy') required this.energy,
      @JsonKey(name: 'distance') required this.distance,
      @JsonKey(name: 'energy_max') required this.energyMax,
      @JsonKey(name: 'distance_max') required this.distanceMax})
      : _sneakers = sneakers;

  factory _$_WalkingDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_WalkingDataDtoFromJson(json);

  @override
  @JsonKey(name: 'user')
  final WalkingUserDto user;
  final List<WalkingSneakerDto> _sneakers;
  @override
  @JsonKey(name: 'sneakers')
  List<WalkingSneakerDto> get sneakers {
    if (_sneakers is EqualUnmodifiableListView) return _sneakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sneakers);
  }

  @override
  @JsonKey(name: 'balance')
  final String? balance;
  @override
  @JsonKey(name: 'energy')
  final String? energy;
  @override
  @JsonKey(name: 'distance')
  final int? distance;
  @override
  @JsonKey(name: 'energy_max')
  final String? energyMax;
  @override
  @JsonKey(name: 'distance_max')
  final int? distanceMax;

  @override
  String toString() {
    return 'WalkingDataDto(user: $user, sneakers: $sneakers, balance: $balance, energy: $energy, distance: $distance, energyMax: $energyMax, distanceMax: $distanceMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalkingDataDto &&
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
  _$$_WalkingDataDtoCopyWith<_$_WalkingDataDto> get copyWith =>
      __$$_WalkingDataDtoCopyWithImpl<_$_WalkingDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalkingDataDtoToJson(
      this,
    );
  }
}

abstract class _WalkingDataDto implements WalkingDataDto {
  factory _WalkingDataDto(
          {@JsonKey(name: 'user') required final WalkingUserDto user,
          @JsonKey(name: 'sneakers')
          required final List<WalkingSneakerDto> sneakers,
          @JsonKey(name: 'balance') required final String? balance,
          @JsonKey(name: 'energy') required final String? energy,
          @JsonKey(name: 'distance') required final int? distance,
          @JsonKey(name: 'energy_max') required final String? energyMax,
          @JsonKey(name: 'distance_max') required final int? distanceMax}) =
      _$_WalkingDataDto;

  factory _WalkingDataDto.fromJson(Map<String, dynamic> json) =
      _$_WalkingDataDto.fromJson;

  @override
  @JsonKey(name: 'user')
  WalkingUserDto get user;
  @override
  @JsonKey(name: 'sneakers')
  List<WalkingSneakerDto> get sneakers;
  @override
  @JsonKey(name: 'balance')
  String? get balance;
  @override
  @JsonKey(name: 'energy')
  String? get energy;
  @override
  @JsonKey(name: 'distance')
  int? get distance;
  @override
  @JsonKey(name: 'energy_max')
  String? get energyMax;
  @override
  @JsonKey(name: 'distance_max')
  int? get distanceMax;
  @override
  @JsonKey(ignore: true)
  _$$_WalkingDataDtoCopyWith<_$_WalkingDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
