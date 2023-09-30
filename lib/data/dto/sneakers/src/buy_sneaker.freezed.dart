// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_sneaker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SneakerPostRequest _$SneakerPostRequestFromJson(Map<String, dynamic> json) {
  return _SneakerPostRequest.fromJson(json);
}

/// @nodoc
mixin _$SneakerPostRequest {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SneakerPostRequestCopyWith<SneakerPostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SneakerPostRequestCopyWith<$Res> {
  factory $SneakerPostRequestCopyWith(
          SneakerPostRequest value, $Res Function(SneakerPostRequest) then) =
      _$SneakerPostRequestCopyWithImpl<$Res, SneakerPostRequest>;
  @useResult
  $Res call({@JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$SneakerPostRequestCopyWithImpl<$Res, $Val extends SneakerPostRequest>
    implements $SneakerPostRequestCopyWith<$Res> {
  _$SneakerPostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SneakerPostRequestCopyWith<$Res>
    implements $SneakerPostRequestCopyWith<$Res> {
  factory _$$_SneakerPostRequestCopyWith(_$_SneakerPostRequest value,
          $Res Function(_$_SneakerPostRequest) then) =
      __$$_SneakerPostRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$_SneakerPostRequestCopyWithImpl<$Res>
    extends _$SneakerPostRequestCopyWithImpl<$Res, _$_SneakerPostRequest>
    implements _$$_SneakerPostRequestCopyWith<$Res> {
  __$$_SneakerPostRequestCopyWithImpl(
      _$_SneakerPostRequest _value, $Res Function(_$_SneakerPostRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_SneakerPostRequest(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SneakerPostRequest implements _SneakerPostRequest {
  _$_SneakerPostRequest({@JsonKey(name: 'id') required this.id});

  factory _$_SneakerPostRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SneakerPostRequestFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'SneakerPostRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SneakerPostRequest &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SneakerPostRequestCopyWith<_$_SneakerPostRequest> get copyWith =>
      __$$_SneakerPostRequestCopyWithImpl<_$_SneakerPostRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SneakerPostRequestToJson(
      this,
    );
  }
}

abstract class _SneakerPostRequest implements SneakerPostRequest {
  factory _SneakerPostRequest(
      {@JsonKey(name: 'id') required final String? id}) = _$_SneakerPostRequest;

  factory _SneakerPostRequest.fromJson(Map<String, dynamic> json) =
      _$_SneakerPostRequest.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_SneakerPostRequestCopyWith<_$_SneakerPostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SneakerPostResponse _$SneakerPostResponseFromJson(Map<String, dynamic> json) {
  return _SneakerPostResponse.fromJson(json);
}

/// @nodoc
mixin _$SneakerPostResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  String? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sneaker_id')
  String? get sneakerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'earned_amount')
  String? get earnedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'steps_amount')
  int? get stepsAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dressed')
  bool? get isDressed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SneakerPostResponseCopyWith<SneakerPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SneakerPostResponseCopyWith<$Res> {
  factory $SneakerPostResponseCopyWith(
          SneakerPostResponse value, $Res Function(SneakerPostResponse) then) =
      _$SneakerPostResponseCopyWithImpl<$Res, SneakerPostResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'owner_id') String? ownerId,
      @JsonKey(name: 'sneaker_id') String? sneakerId,
      @JsonKey(name: 'earned_amount') String? earnedAmount,
      @JsonKey(name: 'steps_amount') int? stepsAmount,
      @JsonKey(name: 'is_dressed') bool? isDressed});
}

/// @nodoc
class _$SneakerPostResponseCopyWithImpl<$Res, $Val extends SneakerPostResponse>
    implements $SneakerPostResponseCopyWith<$Res> {
  _$SneakerPostResponseCopyWithImpl(this._value, this._then);

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
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? ownerId = freezed,
    Object? sneakerId = freezed,
    Object? earnedAmount = freezed,
    Object? stepsAmount = freezed,
    Object? isDressed = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      sneakerId: freezed == sneakerId
          ? _value.sneakerId
          : sneakerId // ignore: cast_nullable_to_non_nullable
              as String?,
      earnedAmount: freezed == earnedAmount
          ? _value.earnedAmount
          : earnedAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      stepsAmount: freezed == stepsAmount
          ? _value.stepsAmount
          : stepsAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      isDressed: freezed == isDressed
          ? _value.isDressed
          : isDressed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SneakerPostResponseCopyWith<$Res>
    implements $SneakerPostResponseCopyWith<$Res> {
  factory _$$_SneakerPostResponseCopyWith(_$_SneakerPostResponse value,
          $Res Function(_$_SneakerPostResponse) then) =
      __$$_SneakerPostResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'owner_id') String? ownerId,
      @JsonKey(name: 'sneaker_id') String? sneakerId,
      @JsonKey(name: 'earned_amount') String? earnedAmount,
      @JsonKey(name: 'steps_amount') int? stepsAmount,
      @JsonKey(name: 'is_dressed') bool? isDressed});
}

/// @nodoc
class __$$_SneakerPostResponseCopyWithImpl<$Res>
    extends _$SneakerPostResponseCopyWithImpl<$Res, _$_SneakerPostResponse>
    implements _$$_SneakerPostResponseCopyWith<$Res> {
  __$$_SneakerPostResponseCopyWithImpl(_$_SneakerPostResponse _value,
      $Res Function(_$_SneakerPostResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? ownerId = freezed,
    Object? sneakerId = freezed,
    Object? earnedAmount = freezed,
    Object? stepsAmount = freezed,
    Object? isDressed = freezed,
  }) {
    return _then(_$_SneakerPostResponse(
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      sneakerId: freezed == sneakerId
          ? _value.sneakerId
          : sneakerId // ignore: cast_nullable_to_non_nullable
              as String?,
      earnedAmount: freezed == earnedAmount
          ? _value.earnedAmount
          : earnedAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      stepsAmount: freezed == stepsAmount
          ? _value.stepsAmount
          : stepsAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      isDressed: freezed == isDressed
          ? _value.isDressed
          : isDressed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SneakerPostResponse implements _SneakerPostResponse {
  _$_SneakerPostResponse(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'owner_id') required this.ownerId,
      @JsonKey(name: 'sneaker_id') required this.sneakerId,
      @JsonKey(name: 'earned_amount') required this.earnedAmount,
      @JsonKey(name: 'steps_amount') required this.stepsAmount,
      @JsonKey(name: 'is_dressed') required this.isDressed});

  factory _$_SneakerPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SneakerPostResponseFromJson(json);

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
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'owner_id')
  final String? ownerId;
  @override
  @JsonKey(name: 'sneaker_id')
  final String? sneakerId;
  @override
  @JsonKey(name: 'earned_amount')
  final String? earnedAmount;
  @override
  @JsonKey(name: 'steps_amount')
  final int? stepsAmount;
  @override
  @JsonKey(name: 'is_dressed')
  final bool? isDressed;

  @override
  String toString() {
    return 'SneakerPostResponse(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, imageUrl: $imageUrl, ownerId: $ownerId, sneakerId: $sneakerId, earnedAmount: $earnedAmount, stepsAmount: $stepsAmount, isDressed: $isDressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SneakerPostResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.sneakerId, sneakerId) ||
                other.sneakerId == sneakerId) &&
            (identical(other.earnedAmount, earnedAmount) ||
                other.earnedAmount == earnedAmount) &&
            (identical(other.stepsAmount, stepsAmount) ||
                other.stepsAmount == stepsAmount) &&
            (identical(other.isDressed, isDressed) ||
                other.isDressed == isDressed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, title,
      imageUrl, ownerId, sneakerId, earnedAmount, stepsAmount, isDressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SneakerPostResponseCopyWith<_$_SneakerPostResponse> get copyWith =>
      __$$_SneakerPostResponseCopyWithImpl<_$_SneakerPostResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SneakerPostResponseToJson(
      this,
    );
  }
}

abstract class _SneakerPostResponse implements SneakerPostResponse {
  factory _SneakerPostResponse(
          {@JsonKey(name: 'id') required final String? id,
          @JsonKey(name: 'created_at') required final String? createdAt,
          @JsonKey(name: 'updated_at') required final String? updatedAt,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'image_url') required final String? imageUrl,
          @JsonKey(name: 'owner_id') required final String? ownerId,
          @JsonKey(name: 'sneaker_id') required final String? sneakerId,
          @JsonKey(name: 'earned_amount') required final String? earnedAmount,
          @JsonKey(name: 'steps_amount') required final int? stepsAmount,
          @JsonKey(name: 'is_dressed') required final bool? isDressed}) =
      _$_SneakerPostResponse;

  factory _SneakerPostResponse.fromJson(Map<String, dynamic> json) =
      _$_SneakerPostResponse.fromJson;

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
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'owner_id')
  String? get ownerId;
  @override
  @JsonKey(name: 'sneaker_id')
  String? get sneakerId;
  @override
  @JsonKey(name: 'earned_amount')
  String? get earnedAmount;
  @override
  @JsonKey(name: 'steps_amount')
  int? get stepsAmount;
  @override
  @JsonKey(name: 'is_dressed')
  bool? get isDressed;
  @override
  @JsonKey(ignore: true)
  _$$_SneakerPostResponseCopyWith<_$_SneakerPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
