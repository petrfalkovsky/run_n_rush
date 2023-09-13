// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QRCode {
  String get lock1 => throw _privateConstructorUsedError;
  String get lock2 => throw _privateConstructorUsedError;
  String get lock3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QRCodeCopyWith<QRCode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRCodeCopyWith<$Res> {
  factory $QRCodeCopyWith(QRCode value, $Res Function(QRCode) then) =
      _$QRCodeCopyWithImpl<$Res, QRCode>;
  @useResult
  $Res call({String lock1, String lock2, String lock3});
}

/// @nodoc
class _$QRCodeCopyWithImpl<$Res, $Val extends QRCode>
    implements $QRCodeCopyWith<$Res> {
  _$QRCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lock1 = null,
    Object? lock2 = null,
    Object? lock3 = null,
  }) {
    return _then(_value.copyWith(
      lock1: null == lock1
          ? _value.lock1
          : lock1 // ignore: cast_nullable_to_non_nullable
              as String,
      lock2: null == lock2
          ? _value.lock2
          : lock2 // ignore: cast_nullable_to_non_nullable
              as String,
      lock3: null == lock3
          ? _value.lock3
          : lock3 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QRCodeCopyWith<$Res> implements $QRCodeCopyWith<$Res> {
  factory _$$_QRCodeCopyWith(_$_QRCode value, $Res Function(_$_QRCode) then) =
      __$$_QRCodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lock1, String lock2, String lock3});
}

/// @nodoc
class __$$_QRCodeCopyWithImpl<$Res>
    extends _$QRCodeCopyWithImpl<$Res, _$_QRCode>
    implements _$$_QRCodeCopyWith<$Res> {
  __$$_QRCodeCopyWithImpl(_$_QRCode _value, $Res Function(_$_QRCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lock1 = null,
    Object? lock2 = null,
    Object? lock3 = null,
  }) {
    return _then(_$_QRCode(
      lock1: null == lock1
          ? _value.lock1
          : lock1 // ignore: cast_nullable_to_non_nullable
              as String,
      lock2: null == lock2
          ? _value.lock2
          : lock2 // ignore: cast_nullable_to_non_nullable
              as String,
      lock3: null == lock3
          ? _value.lock3
          : lock3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QRCode implements _QRCode {
  const _$_QRCode(
      {required this.lock1, required this.lock2, required this.lock3});

  @override
  final String lock1;
  @override
  final String lock2;
  @override
  final String lock3;

  @override
  String toString() {
    return 'QRCode(lock1: $lock1, lock2: $lock2, lock3: $lock3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QRCode &&
            (identical(other.lock1, lock1) || other.lock1 == lock1) &&
            (identical(other.lock2, lock2) || other.lock2 == lock2) &&
            (identical(other.lock3, lock3) || other.lock3 == lock3));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lock1, lock2, lock3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QRCodeCopyWith<_$_QRCode> get copyWith =>
      __$$_QRCodeCopyWithImpl<_$_QRCode>(this, _$identity);
}

abstract class _QRCode implements QRCode {
  const factory _QRCode(
      {required final String lock1,
      required final String lock2,
      required final String lock3}) = _$_QRCode;

  @override
  String get lock1;
  @override
  String get lock2;
  @override
  String get lock3;
  @override
  @JsonKey(ignore: true)
  _$$_QRCodeCopyWith<_$_QRCode> get copyWith =>
      throw _privateConstructorUsedError;
}
