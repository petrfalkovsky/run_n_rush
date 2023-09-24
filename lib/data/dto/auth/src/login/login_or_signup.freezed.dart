// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_or_signup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginOrSignupDto _$LoginOrSignupDtoFromJson(Map<String, dynamic> json) {
  return _LoginOrSignupDto.fromJson(json);
}

/// @nodoc
mixin _$LoginOrSignupDto {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'referal_code')
  String? get referalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginOrSignupDtoCopyWith<LoginOrSignupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginOrSignupDtoCopyWith<$Res> {
  factory $LoginOrSignupDtoCopyWith(
          LoginOrSignupDto value, $Res Function(LoginOrSignupDto) then) =
      _$LoginOrSignupDtoCopyWithImpl<$Res, LoginOrSignupDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'referal_code') String? referalCode});
}

/// @nodoc
class _$LoginOrSignupDtoCopyWithImpl<$Res, $Val extends LoginOrSignupDto>
    implements $LoginOrSignupDtoCopyWith<$Res> {
  _$LoginOrSignupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? code = freezed,
    Object? referalCode = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      referalCode: freezed == referalCode
          ? _value.referalCode
          : referalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginOrSignupDtoCopyWith<$Res>
    implements $LoginOrSignupDtoCopyWith<$Res> {
  factory _$$_LoginOrSignupDtoCopyWith(
          _$_LoginOrSignupDto value, $Res Function(_$_LoginOrSignupDto) then) =
      __$$_LoginOrSignupDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'referal_code') String? referalCode});
}

/// @nodoc
class __$$_LoginOrSignupDtoCopyWithImpl<$Res>
    extends _$LoginOrSignupDtoCopyWithImpl<$Res, _$_LoginOrSignupDto>
    implements _$$_LoginOrSignupDtoCopyWith<$Res> {
  __$$_LoginOrSignupDtoCopyWithImpl(
      _$_LoginOrSignupDto _value, $Res Function(_$_LoginOrSignupDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? code = freezed,
    Object? referalCode = freezed,
  }) {
    return _then(_$_LoginOrSignupDto(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      referalCode: freezed == referalCode
          ? _value.referalCode
          : referalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginOrSignupDto implements _LoginOrSignupDto {
  const _$_LoginOrSignupDto(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'referal_code') required this.referalCode});

  factory _$_LoginOrSignupDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginOrSignupDtoFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'referal_code')
  final String? referalCode;

  @override
  String toString() {
    return 'LoginOrSignupDto(email: $email, code: $code, referalCode: $referalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginOrSignupDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.referalCode, referalCode) ||
                other.referalCode == referalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code, referalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginOrSignupDtoCopyWith<_$_LoginOrSignupDto> get copyWith =>
      __$$_LoginOrSignupDtoCopyWithImpl<_$_LoginOrSignupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginOrSignupDtoToJson(
      this,
    );
  }
}

abstract class _LoginOrSignupDto implements LoginOrSignupDto {
  const factory _LoginOrSignupDto(
          {@JsonKey(name: 'email') required final String? email,
          @JsonKey(name: 'code') required final String? code,
          @JsonKey(name: 'referal_code') required final String? referalCode}) =
      _$_LoginOrSignupDto;

  factory _LoginOrSignupDto.fromJson(Map<String, dynamic> json) =
      _$_LoginOrSignupDto.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'referal_code')
  String? get referalCode;
  @override
  @JsonKey(ignore: true)
  _$$_LoginOrSignupDtoCopyWith<_$_LoginOrSignupDto> get copyWith =>
      throw _privateConstructorUsedError;
}
