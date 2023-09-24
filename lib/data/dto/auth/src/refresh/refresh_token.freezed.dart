// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshTokenDto _$RefreshTokenDtoFromJson(Map<String, dynamic> json) {
  return _RefreshTokenDto.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenDto {
  @JsonKey(name: 'refresh')
  String? get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenDtoCopyWith<RefreshTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenDtoCopyWith<$Res> {
  factory $RefreshTokenDtoCopyWith(
          RefreshTokenDto value, $Res Function(RefreshTokenDto) then) =
      _$RefreshTokenDtoCopyWithImpl<$Res, RefreshTokenDto>;
  @useResult
  $Res call({@JsonKey(name: 'refresh') String? refresh});
}

/// @nodoc
class _$RefreshTokenDtoCopyWithImpl<$Res, $Val extends RefreshTokenDto>
    implements $RefreshTokenDtoCopyWith<$Res> {
  _$RefreshTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      refresh: freezed == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshTokenDtoCopyWith<$Res>
    implements $RefreshTokenDtoCopyWith<$Res> {
  factory _$$_RefreshTokenDtoCopyWith(
          _$_RefreshTokenDto value, $Res Function(_$_RefreshTokenDto) then) =
      __$$_RefreshTokenDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'refresh') String? refresh});
}

/// @nodoc
class __$$_RefreshTokenDtoCopyWithImpl<$Res>
    extends _$RefreshTokenDtoCopyWithImpl<$Res, _$_RefreshTokenDto>
    implements _$$_RefreshTokenDtoCopyWith<$Res> {
  __$$_RefreshTokenDtoCopyWithImpl(
      _$_RefreshTokenDto _value, $Res Function(_$_RefreshTokenDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(_$_RefreshTokenDto(
      refresh: freezed == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshTokenDto implements _RefreshTokenDto {
  const _$_RefreshTokenDto({@JsonKey(name: 'refresh') required this.refresh});

  factory _$_RefreshTokenDto.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshTokenDtoFromJson(json);

  @override
  @JsonKey(name: 'refresh')
  final String? refresh;

  @override
  String toString() {
    return 'RefreshTokenDto(refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshTokenDto &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshTokenDtoCopyWith<_$_RefreshTokenDto> get copyWith =>
      __$$_RefreshTokenDtoCopyWithImpl<_$_RefreshTokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenDtoToJson(
      this,
    );
  }
}

abstract class _RefreshTokenDto implements RefreshTokenDto {
  const factory _RefreshTokenDto(
          {@JsonKey(name: 'refresh') required final String? refresh}) =
      _$_RefreshTokenDto;

  factory _RefreshTokenDto.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenDto.fromJson;

  @override
  @JsonKey(name: 'refresh')
  String? get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshTokenDtoCopyWith<_$_RefreshTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}
