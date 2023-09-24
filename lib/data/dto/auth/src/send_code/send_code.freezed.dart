// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendCodeDto _$SendCodeDtoFromJson(Map<String, dynamic> json) {
  return _SendCodeDto.fromJson(json);
}

/// @nodoc
mixin _$SendCodeDto {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendCodeDtoCopyWith<SendCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCodeDtoCopyWith<$Res> {
  factory $SendCodeDtoCopyWith(
          SendCodeDto value, $Res Function(SendCodeDto) then) =
      _$SendCodeDtoCopyWithImpl<$Res, SendCodeDto>;
  @useResult
  $Res call({@JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$SendCodeDtoCopyWithImpl<$Res, $Val extends SendCodeDto>
    implements $SendCodeDtoCopyWith<$Res> {
  _$SendCodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendCodeDtoCopyWith<$Res>
    implements $SendCodeDtoCopyWith<$Res> {
  factory _$$_SendCodeDtoCopyWith(
          _$_SendCodeDto value, $Res Function(_$_SendCodeDto) then) =
      __$$_SendCodeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$_SendCodeDtoCopyWithImpl<$Res>
    extends _$SendCodeDtoCopyWithImpl<$Res, _$_SendCodeDto>
    implements _$$_SendCodeDtoCopyWith<$Res> {
  __$$_SendCodeDtoCopyWithImpl(
      _$_SendCodeDto _value, $Res Function(_$_SendCodeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_SendCodeDto(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendCodeDto implements _SendCodeDto {
  const _$_SendCodeDto({@JsonKey(name: 'email') required this.email});

  factory _$_SendCodeDto.fromJson(Map<String, dynamic> json) =>
      _$$_SendCodeDtoFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'SendCodeDto(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendCodeDto &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendCodeDtoCopyWith<_$_SendCodeDto> get copyWith =>
      __$$_SendCodeDtoCopyWithImpl<_$_SendCodeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendCodeDtoToJson(
      this,
    );
  }
}

abstract class _SendCodeDto implements SendCodeDto {
  const factory _SendCodeDto(
      {@JsonKey(name: 'email') required final String? email}) = _$_SendCodeDto;

  factory _SendCodeDto.fromJson(Map<String, dynamic> json) =
      _$_SendCodeDto.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_SendCodeDtoCopyWith<_$_SendCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
