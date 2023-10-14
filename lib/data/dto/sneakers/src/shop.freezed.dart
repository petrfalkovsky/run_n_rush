// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SneakerShopDto _$SneakerShopDtoFromJson(Map<String, dynamic> json) {
  return _SneakerShopDto.fromJson(json);
}

/// @nodoc
mixin _$SneakerShopDto {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  SneakerDto get sneaker => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_closed')
  bool? get isClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SneakerShopDtoCopyWith<SneakerShopDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SneakerShopDtoCopyWith<$Res> {
  factory $SneakerShopDtoCopyWith(
          SneakerShopDto value, $Res Function(SneakerShopDto) then) =
      _$SneakerShopDtoCopyWithImpl<$Res, SneakerShopDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      SneakerDto sneaker,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'is_closed') bool? isClosed});

  $SneakerDtoCopyWith<$Res> get sneaker;
}

/// @nodoc
class _$SneakerShopDtoCopyWithImpl<$Res, $Val extends SneakerShopDto>
    implements $SneakerShopDtoCopyWith<$Res> {
  _$SneakerShopDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sneaker = null,
    Object? price = freezed,
    Object? isClosed = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sneaker: null == sneaker
          ? _value.sneaker
          : sneaker // ignore: cast_nullable_to_non_nullable
              as SneakerDto,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SneakerDtoCopyWith<$Res> get sneaker {
    return $SneakerDtoCopyWith<$Res>(_value.sneaker, (value) {
      return _then(_value.copyWith(sneaker: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SneakerShopDtoCopyWith<$Res>
    implements $SneakerShopDtoCopyWith<$Res> {
  factory _$$_SneakerShopDtoCopyWith(
          _$_SneakerShopDto value, $Res Function(_$_SneakerShopDto) then) =
      __$$_SneakerShopDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      SneakerDto sneaker,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'is_closed') bool? isClosed});

  @override
  $SneakerDtoCopyWith<$Res> get sneaker;
}

/// @nodoc
class __$$_SneakerShopDtoCopyWithImpl<$Res>
    extends _$SneakerShopDtoCopyWithImpl<$Res, _$_SneakerShopDto>
    implements _$$_SneakerShopDtoCopyWith<$Res> {
  __$$_SneakerShopDtoCopyWithImpl(
      _$_SneakerShopDto _value, $Res Function(_$_SneakerShopDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sneaker = null,
    Object? price = freezed,
    Object? isClosed = freezed,
  }) {
    return _then(_$_SneakerShopDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sneaker: null == sneaker
          ? _value.sneaker
          : sneaker // ignore: cast_nullable_to_non_nullable
              as SneakerDto,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SneakerShopDto implements _SneakerShopDto {
  _$_SneakerShopDto(
      {@JsonKey(name: 'id') required this.id,
      required this.sneaker,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'is_closed') required this.isClosed});

  factory _$_SneakerShopDto.fromJson(Map<String, dynamic> json) =>
      _$$_SneakerShopDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  final SneakerDto sneaker;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'is_closed')
  final bool? isClosed;

  @override
  String toString() {
    return 'SneakerShopDto(id: $id, sneaker: $sneaker, price: $price, isClosed: $isClosed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SneakerShopDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sneaker, sneaker) || other.sneaker == sneaker) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sneaker, price, isClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SneakerShopDtoCopyWith<_$_SneakerShopDto> get copyWith =>
      __$$_SneakerShopDtoCopyWithImpl<_$_SneakerShopDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SneakerShopDtoToJson(
      this,
    );
  }
}

abstract class _SneakerShopDto implements SneakerShopDto {
  factory _SneakerShopDto(
          {@JsonKey(name: 'id') required final String? id,
          required final SneakerDto sneaker,
          @JsonKey(name: 'price') required final String? price,
          @JsonKey(name: 'is_closed') required final bool? isClosed}) =
      _$_SneakerShopDto;

  factory _SneakerShopDto.fromJson(Map<String, dynamic> json) =
      _$_SneakerShopDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  SneakerDto get sneaker;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'is_closed')
  bool? get isClosed;
  @override
  @JsonKey(ignore: true)
  _$$_SneakerShopDtoCopyWith<_$_SneakerShopDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SneakerDto _$SneakerDtoFromJson(Map<String, dynamic> json) {
  return _SneakerDto.fromJson(json);
}

/// @nodoc
mixin _$SneakerDto {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'inventory_id')
  String? get inventoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'sneaker_class_id')
  String? get sneakerClassId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coins_for_1000_steps')
  String? get coinsFor1000Steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SneakerDtoCopyWith<SneakerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SneakerDtoCopyWith<$Res> {
  factory $SneakerDtoCopyWith(
          SneakerDto value, $Res Function(SneakerDto) then) =
      _$SneakerDtoCopyWithImpl<$Res, SneakerDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'inventory_id') String? inventoryId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'sneaker_class_id') String? sneakerClassId,
      @JsonKey(name: 'coins_for_1000_steps') String? coinsFor1000Steps});
}

/// @nodoc
class _$SneakerDtoCopyWithImpl<$Res, $Val extends SneakerDto>
    implements $SneakerDtoCopyWith<$Res> {
  _$SneakerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? inventoryId = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? sneakerClassId = freezed,
    Object? coinsFor1000Steps = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sneakerClassId: freezed == sneakerClassId
          ? _value.sneakerClassId
          : sneakerClassId // ignore: cast_nullable_to_non_nullable
              as String?,
      coinsFor1000Steps: freezed == coinsFor1000Steps
          ? _value.coinsFor1000Steps
          : coinsFor1000Steps // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SneakerDtoCopyWith<$Res>
    implements $SneakerDtoCopyWith<$Res> {
  factory _$$_SneakerDtoCopyWith(
          _$_SneakerDto value, $Res Function(_$_SneakerDto) then) =
      __$$_SneakerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'inventory_id') String? inventoryId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'sneaker_class_id') String? sneakerClassId,
      @JsonKey(name: 'coins_for_1000_steps') String? coinsFor1000Steps});
}

/// @nodoc
class __$$_SneakerDtoCopyWithImpl<$Res>
    extends _$SneakerDtoCopyWithImpl<$Res, _$_SneakerDto>
    implements _$$_SneakerDtoCopyWith<$Res> {
  __$$_SneakerDtoCopyWithImpl(
      _$_SneakerDto _value, $Res Function(_$_SneakerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? inventoryId = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? sneakerClassId = freezed,
    Object? coinsFor1000Steps = freezed,
  }) {
    return _then(_$_SneakerDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryId: freezed == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sneakerClassId: freezed == sneakerClassId
          ? _value.sneakerClassId
          : sneakerClassId // ignore: cast_nullable_to_non_nullable
              as String?,
      coinsFor1000Steps: freezed == coinsFor1000Steps
          ? _value.coinsFor1000Steps
          : coinsFor1000Steps // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SneakerDto implements _SneakerDto {
  _$_SneakerDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'inventory_id') required this.inventoryId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'sneaker_class_id') required this.sneakerClassId,
      @JsonKey(name: 'coins_for_1000_steps') required this.coinsFor1000Steps});

  factory _$_SneakerDto.fromJson(Map<String, dynamic> json) =>
      _$$_SneakerDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'inventory_id')
  final String? inventoryId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'sneaker_class_id')
  final String? sneakerClassId;
  @override
  @JsonKey(name: 'coins_for_1000_steps')
  final String? coinsFor1000Steps;

  @override
  String toString() {
    return 'SneakerDto(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, inventoryId: $inventoryId, title: $title, imageUrl: $imageUrl, sneakerClassId: $sneakerClassId, coinsFor1000Steps: $coinsFor1000Steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SneakerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sneakerClassId, sneakerClassId) ||
                other.sneakerClassId == sneakerClassId) &&
            (identical(other.coinsFor1000Steps, coinsFor1000Steps) ||
                other.coinsFor1000Steps == coinsFor1000Steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt,
      inventoryId, title, imageUrl, sneakerClassId, coinsFor1000Steps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SneakerDtoCopyWith<_$_SneakerDto> get copyWith =>
      __$$_SneakerDtoCopyWithImpl<_$_SneakerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SneakerDtoToJson(
      this,
    );
  }
}

abstract class _SneakerDto implements SneakerDto {
  factory _SneakerDto(
      {@JsonKey(name: 'id') required final String? id,
      @JsonKey(name: 'created_at') required final String? createdAt,
      @JsonKey(name: 'updated_at') required final String? updatedAt,
      @JsonKey(name: 'inventory_id') required final String? inventoryId,
      @JsonKey(name: 'title') required final String? title,
      @JsonKey(name: 'image_url') required final String? imageUrl,
      @JsonKey(name: 'sneaker_class_id') required final String? sneakerClassId,
      @JsonKey(name: 'coins_for_1000_steps')
      required final String? coinsFor1000Steps}) = _$_SneakerDto;

  factory _SneakerDto.fromJson(Map<String, dynamic> json) =
      _$_SneakerDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'inventory_id')
  String? get inventoryId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'sneaker_class_id')
  String? get sneakerClassId;
  @override
  @JsonKey(name: 'coins_for_1000_steps')
  String? get coinsFor1000Steps;
  @override
  @JsonKey(ignore: true)
  _$$_SneakerDtoCopyWith<_$_SneakerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
