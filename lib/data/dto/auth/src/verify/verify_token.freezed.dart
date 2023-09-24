// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyTokenDto _$VerifyTokenDtoFromJson(Map<String, dynamic> json) {
  return _VerifyTokenDto.fromJson(json);
}

/// @nodoc
mixin _$VerifyTokenDto {
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyTokenDtoCopyWith<VerifyTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyTokenDtoCopyWith<$Res> {
  factory $VerifyTokenDtoCopyWith(
          VerifyTokenDto value, $Res Function(VerifyTokenDto) then) =
      _$VerifyTokenDtoCopyWithImpl<$Res, VerifyTokenDto>;
  @useResult
  $Res call({@JsonKey(name: 'token') String? token});
}

/// @nodoc
class _$VerifyTokenDtoCopyWithImpl<$Res, $Val extends VerifyTokenDto>
    implements $VerifyTokenDtoCopyWith<$Res> {
  _$VerifyTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyTokenDtoCopyWith<$Res>
    implements $VerifyTokenDtoCopyWith<$Res> {
  factory _$$_VerifyTokenDtoCopyWith(
          _$_VerifyTokenDto value, $Res Function(_$_VerifyTokenDto) then) =
      __$$_VerifyTokenDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String? token});
}

/// @nodoc
class __$$_VerifyTokenDtoCopyWithImpl<$Res>
    extends _$VerifyTokenDtoCopyWithImpl<$Res, _$_VerifyTokenDto>
    implements _$$_VerifyTokenDtoCopyWith<$Res> {
  __$$_VerifyTokenDtoCopyWithImpl(
      _$_VerifyTokenDto _value, $Res Function(_$_VerifyTokenDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_VerifyTokenDto(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyTokenDto implements _VerifyTokenDto {
  const _$_VerifyTokenDto({@JsonKey(name: 'token') required this.token});

  factory _$_VerifyTokenDto.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyTokenDtoFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String? token;

  @override
  String toString() {
    return 'VerifyTokenDto(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyTokenDto &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyTokenDtoCopyWith<_$_VerifyTokenDto> get copyWith =>
      __$$_VerifyTokenDtoCopyWithImpl<_$_VerifyTokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyTokenDtoToJson(
      this,
    );
  }
}

abstract class _VerifyTokenDto implements VerifyTokenDto {
  const factory _VerifyTokenDto(
          {@JsonKey(name: 'token') required final String? token}) =
      _$_VerifyTokenDto;

  factory _VerifyTokenDto.fromJson(Map<String, dynamic> json) =
      _$_VerifyTokenDto.fromJson;

  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyTokenDtoCopyWith<_$_VerifyTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}
