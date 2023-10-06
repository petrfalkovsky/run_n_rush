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

SneakerShop _$SneakerShopFromJson(Map<String, dynamic> json) {
  return _SneakerShop.fromJson(json);
}

/// @nodoc
mixin _$SneakerShop {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  Sneaker get sneaker => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_closed')
  bool? get isClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SneakerShopCopyWith<SneakerShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SneakerShopCopyWith<$Res> {
  factory $SneakerShopCopyWith(
          SneakerShop value, $Res Function(SneakerShop) then) =
      _$SneakerShopCopyWithImpl<$Res, SneakerShop>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      Sneaker sneaker,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'is_closed') bool? isClosed});

  $SneakerCopyWith<$Res> get sneaker;
}

/// @nodoc
class _$SneakerShopCopyWithImpl<$Res, $Val extends SneakerShop>
    implements $SneakerShopCopyWith<$Res> {
  _$SneakerShopCopyWithImpl(this._value, this._then);

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
              as Sneaker,
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
  $SneakerCopyWith<$Res> get sneaker {
    return $SneakerCopyWith<$Res>(_value.sneaker, (value) {
      return _then(_value.copyWith(sneaker: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SneakerShopCopyWith<$Res>
    implements $SneakerShopCopyWith<$Res> {
  factory _$$_SneakerShopCopyWith(
          _$_SneakerShop value, $Res Function(_$_SneakerShop) then) =
      __$$_SneakerShopCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      Sneaker sneaker,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'is_closed') bool? isClosed});

  @override
  $SneakerCopyWith<$Res> get sneaker;
}

/// @nodoc
class __$$_SneakerShopCopyWithImpl<$Res>
    extends _$SneakerShopCopyWithImpl<$Res, _$_SneakerShop>
    implements _$$_SneakerShopCopyWith<$Res> {
  __$$_SneakerShopCopyWithImpl(
      _$_SneakerShop _value, $Res Function(_$_SneakerShop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sneaker = null,
    Object? price = freezed,
    Object? isClosed = freezed,
  }) {
    return _then(_$_SneakerShop(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sneaker: null == sneaker
          ? _value.sneaker
          : sneaker // ignore: cast_nullable_to_non_nullable
              as Sneaker,
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
class _$_SneakerShop implements _SneakerShop {
  _$_SneakerShop(
      {@JsonKey(name: 'id') required this.id,
      required this.sneaker,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'is_closed') required this.isClosed});

  factory _$_SneakerShop.fromJson(Map<String, dynamic> json) =>
      _$$_SneakerShopFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  final Sneaker sneaker;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'is_closed')
  final bool? isClosed;

  @override
  String toString() {
    return 'SneakerShop(id: $id, sneaker: $sneaker, price: $price, isClosed: $isClosed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SneakerShop &&
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
  _$$_SneakerShopCopyWith<_$_SneakerShop> get copyWith =>
      __$$_SneakerShopCopyWithImpl<_$_SneakerShop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SneakerShopToJson(
      this,
    );
  }
}

abstract class _SneakerShop implements SneakerShop {
  factory _SneakerShop(
          {@JsonKey(name: 'id') required final String? id,
          required final Sneaker sneaker,
          @JsonKey(name: 'price') required final String? price,
          @JsonKey(name: 'is_closed') required final bool? isClosed}) =
      _$_SneakerShop;

  factory _SneakerShop.fromJson(Map<String, dynamic> json) =
      _$_SneakerShop.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  Sneaker get sneaker;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'is_closed')
  bool? get isClosed;
  @override
  @JsonKey(ignore: true)
  _$$_SneakerShopCopyWith<_$_SneakerShop> get copyWith =>
      throw _privateConstructorUsedError;
}

Sneaker _$SneakerFromJson(Map<String, dynamic> json) {
  return _Sneaker.fromJson(json);
}

/// @nodoc
mixin _$Sneaker {
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
  $SneakerCopyWith<Sneaker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SneakerCopyWith<$Res> {
  factory $SneakerCopyWith(Sneaker value, $Res Function(Sneaker) then) =
      _$SneakerCopyWithImpl<$Res, Sneaker>;
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
class _$SneakerCopyWithImpl<$Res, $Val extends Sneaker>
    implements $SneakerCopyWith<$Res> {
  _$SneakerCopyWithImpl(this._value, this._then);

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
abstract class _$$_SneakerCopyWith<$Res> implements $SneakerCopyWith<$Res> {
  factory _$$_SneakerCopyWith(
          _$_Sneaker value, $Res Function(_$_Sneaker) then) =
      __$$_SneakerCopyWithImpl<$Res>;
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
class __$$_SneakerCopyWithImpl<$Res>
    extends _$SneakerCopyWithImpl<$Res, _$_Sneaker>
    implements _$$_SneakerCopyWith<$Res> {
  __$$_SneakerCopyWithImpl(_$_Sneaker _value, $Res Function(_$_Sneaker) _then)
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
    return _then(_$_Sneaker(
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
class _$_Sneaker implements _Sneaker {
  _$_Sneaker(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'inventory_id') required this.inventoryId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'sneaker_class_id') required this.sneakerClassId,
      @JsonKey(name: 'coins_for_1000_steps') required this.coinsFor1000Steps});

  factory _$_Sneaker.fromJson(Map<String, dynamic> json) =>
      _$$_SneakerFromJson(json);

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
    return 'Sneaker(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, inventoryId: $inventoryId, title: $title, imageUrl: $imageUrl, sneakerClassId: $sneakerClassId, coinsFor1000Steps: $coinsFor1000Steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sneaker &&
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
  _$$_SneakerCopyWith<_$_Sneaker> get copyWith =>
      __$$_SneakerCopyWithImpl<_$_Sneaker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SneakerToJson(
      this,
    );
  }
}

abstract class _Sneaker implements Sneaker {
  factory _Sneaker(
      {@JsonKey(name: 'id') required final String? id,
      @JsonKey(name: 'created_at') required final String? createdAt,
      @JsonKey(name: 'updated_at') required final String? updatedAt,
      @JsonKey(name: 'inventory_id') required final String? inventoryId,
      @JsonKey(name: 'title') required final String? title,
      @JsonKey(name: 'image_url') required final String? imageUrl,
      @JsonKey(name: 'sneaker_class_id') required final String? sneakerClassId,
      @JsonKey(name: 'coins_for_1000_steps')
      required final String? coinsFor1000Steps}) = _$_Sneaker;

  factory _Sneaker.fromJson(Map<String, dynamic> json) = _$_Sneaker.fromJson;

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
  _$$_SneakerCopyWith<_$_Sneaker> get copyWith =>
      throw _privateConstructorUsedError;
}
