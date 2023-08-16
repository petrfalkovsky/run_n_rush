// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  String get failureTag => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue, String failureTag});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ValueFailureEmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureEmptyCopyWith(_$ValueFailureEmpty<T> value,
          $Res Function(_$ValueFailureEmpty<T>) then) =
      __$$ValueFailureEmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String failureTag});
}

/// @nodoc
class __$$ValueFailureEmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ValueFailureEmptyCopyWith<T, $Res> {
  __$$ValueFailureEmptyCopyWithImpl(_$ValueFailureEmpty<T> _value,
      $Res Function(_$ValueFailureEmpty<T>) _then)
      : super(_value, (v) => _then(v as _$ValueFailureEmpty<T>));

  @override
  _$ValueFailureEmpty<T> get _value => super._value as _$ValueFailureEmpty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
  }) {
    return _then(_$ValueFailureEmpty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValueFailureEmpty<T>
    with DiagnosticableTreeMixin
    implements ValueFailureEmpty<T> {
  const _$ValueFailureEmpty(
      {required this.failedValue, required this.failureTag});

  @override
  final T failedValue;
  @override
  final String failureTag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue, failureTag: $failureTag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('failureTag', failureTag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureEmpty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.failureTag, failureTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(failureTag));

  @JsonKey(ignore: true)
  @override
  _$$ValueFailureEmptyCopyWith<T, _$ValueFailureEmpty<T>> get copyWith =>
      __$$ValueFailureEmptyCopyWithImpl<T, _$ValueFailureEmpty<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) {
    return empty(failedValue, failureTag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) {
    return empty?.call(failedValue, failureTag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue, failureTag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ValueFailureEmpty<T> implements ValueFailure<T> {
  const factory ValueFailureEmpty(
      {required final T failedValue,
      required final String failureTag}) = _$ValueFailureEmpty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get failureTag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureEmptyCopyWith<T, _$ValueFailureEmpty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureInvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureInvalidEmailCopyWith(
          _$ValueFailureInvalidEmail<T> value,
          $Res Function(_$ValueFailureInvalidEmail<T>) then) =
      __$$ValueFailureInvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String failureTag});
}

/// @nodoc
class __$$ValueFailureInvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ValueFailureInvalidEmailCopyWith<T, $Res> {
  __$$ValueFailureInvalidEmailCopyWithImpl(_$ValueFailureInvalidEmail<T> _value,
      $Res Function(_$ValueFailureInvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$ValueFailureInvalidEmail<T>));

  @override
  _$ValueFailureInvalidEmail<T> get _value =>
      super._value as _$ValueFailureInvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
  }) {
    return _then(_$ValueFailureInvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValueFailureInvalidEmail<T>
    with DiagnosticableTreeMixin
    implements ValueFailureInvalidEmail<T> {
  const _$ValueFailureInvalidEmail(
      {required this.failedValue, required this.failureTag});

  @override
  final T failedValue;
  @override
  final String failureTag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue, failureTag: $failureTag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('failureTag', failureTag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureInvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.failureTag, failureTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(failureTag));

  @JsonKey(ignore: true)
  @override
  _$$ValueFailureInvalidEmailCopyWith<T, _$ValueFailureInvalidEmail<T>>
      get copyWith => __$$ValueFailureInvalidEmailCopyWithImpl<T,
          _$ValueFailureInvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) {
    return invalidEmail(failedValue, failureTag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) {
    return invalidEmail?.call(failedValue, failureTag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue, failureTag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class ValueFailureInvalidEmail<T> implements ValueFailure<T> {
  const factory ValueFailureInvalidEmail(
      {required final T failedValue,
      required final String failureTag}) = _$ValueFailureInvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get failureTag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureInvalidEmailCopyWith<T, _$ValueFailureInvalidEmail<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureInvalidCodeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureInvalidCodeCopyWith(_$ValueFailureInvalidCode<T> value,
          $Res Function(_$ValueFailureInvalidCode<T>) then) =
      __$$ValueFailureInvalidCodeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String failureTag});
}

/// @nodoc
class __$$ValueFailureInvalidCodeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ValueFailureInvalidCodeCopyWith<T, $Res> {
  __$$ValueFailureInvalidCodeCopyWithImpl(_$ValueFailureInvalidCode<T> _value,
      $Res Function(_$ValueFailureInvalidCode<T>) _then)
      : super(_value, (v) => _then(v as _$ValueFailureInvalidCode<T>));

  @override
  _$ValueFailureInvalidCode<T> get _value =>
      super._value as _$ValueFailureInvalidCode<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
  }) {
    return _then(_$ValueFailureInvalidCode<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValueFailureInvalidCode<T>
    with DiagnosticableTreeMixin
    implements ValueFailureInvalidCode<T> {
  const _$ValueFailureInvalidCode(
      {required this.failedValue, required this.failureTag});

  @override
  final T failedValue;
  @override
  final String failureTag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidCode(failedValue: $failedValue, failureTag: $failureTag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidCode'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('failureTag', failureTag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureInvalidCode<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.failureTag, failureTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(failureTag));

  @JsonKey(ignore: true)
  @override
  _$$ValueFailureInvalidCodeCopyWith<T, _$ValueFailureInvalidCode<T>>
      get copyWith => __$$ValueFailureInvalidCodeCopyWithImpl<T,
          _$ValueFailureInvalidCode<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) {
    return invalidCode(failedValue, failureTag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) {
    return invalidCode?.call(failedValue, failureTag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode(failedValue, failureTag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) {
    return invalidCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) {
    return invalidCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode(this);
    }
    return orElse();
  }
}

abstract class ValueFailureInvalidCode<T> implements ValueFailure<T> {
  const factory ValueFailureInvalidCode(
      {required final T failedValue,
      required final String failureTag}) = _$ValueFailureInvalidCode<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get failureTag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureInvalidCodeCopyWith<T, _$ValueFailureInvalidCode<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureInvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureInvalidPasswordCopyWith(
          _$ValueFailureInvalidPassword<T> value,
          $Res Function(_$ValueFailureInvalidPassword<T>) then) =
      __$$ValueFailureInvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String failureTag});
}

/// @nodoc
class __$$ValueFailureInvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ValueFailureInvalidPasswordCopyWith<T, $Res> {
  __$$ValueFailureInvalidPasswordCopyWithImpl(
      _$ValueFailureInvalidPassword<T> _value,
      $Res Function(_$ValueFailureInvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _$ValueFailureInvalidPassword<T>));

  @override
  _$ValueFailureInvalidPassword<T> get _value =>
      super._value as _$ValueFailureInvalidPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
  }) {
    return _then(_$ValueFailureInvalidPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValueFailureInvalidPassword<T>
    with DiagnosticableTreeMixin
    implements ValueFailureInvalidPassword<T> {
  const _$ValueFailureInvalidPassword(
      {required this.failedValue, required this.failureTag});

  @override
  final T failedValue;
  @override
  final String failureTag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue, failureTag: $failureTag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('failureTag', failureTag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureInvalidPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.failureTag, failureTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(failureTag));

  @JsonKey(ignore: true)
  @override
  _$$ValueFailureInvalidPasswordCopyWith<T, _$ValueFailureInvalidPassword<T>>
      get copyWith => __$$ValueFailureInvalidPasswordCopyWithImpl<T,
          _$ValueFailureInvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) {
    return invalidPassword(failedValue, failureTag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) {
    return invalidPassword?.call(failedValue, failureTag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue, failureTag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class ValueFailureInvalidPassword<T> implements ValueFailure<T> {
  const factory ValueFailureInvalidPassword(
      {required final T failedValue,
      required final String failureTag}) = _$ValueFailureInvalidPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get failureTag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureInvalidPasswordCopyWith<T, _$ValueFailureInvalidPassword<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureTooShortCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureTooShortCopyWith(_$ValueFailureTooShort<T> value,
          $Res Function(_$ValueFailureTooShort<T>) then) =
      __$$ValueFailureTooShortCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String failureTag, int minLength});
}

/// @nodoc
class __$$ValueFailureTooShortCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ValueFailureTooShortCopyWith<T, $Res> {
  __$$ValueFailureTooShortCopyWithImpl(_$ValueFailureTooShort<T> _value,
      $Res Function(_$ValueFailureTooShort<T>) _then)
      : super(_value, (v) => _then(v as _$ValueFailureTooShort<T>));

  @override
  _$ValueFailureTooShort<T> get _value =>
      super._value as _$ValueFailureTooShort<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
    Object? minLength = freezed,
  }) {
    return _then(_$ValueFailureTooShort<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
      minLength: minLength == freezed
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueFailureTooShort<T>
    with DiagnosticableTreeMixin
    implements ValueFailureTooShort<T> {
  const _$ValueFailureTooShort(
      {required this.failedValue,
      required this.failureTag,
      required this.minLength});

  @override
  final T failedValue;
  @override
  final String failureTag;
  @override
  final int minLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.tooShort(failedValue: $failedValue, failureTag: $failureTag, minLength: $minLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.tooShort'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('failureTag', failureTag))
      ..add(DiagnosticsProperty('minLength', minLength));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureTooShort<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.failureTag, failureTag) &&
            const DeepCollectionEquality().equals(other.minLength, minLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(failureTag),
      const DeepCollectionEquality().hash(minLength));

  @JsonKey(ignore: true)
  @override
  _$$ValueFailureTooShortCopyWith<T, _$ValueFailureTooShort<T>> get copyWith =>
      __$$ValueFailureTooShortCopyWithImpl<T, _$ValueFailureTooShort<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) {
    return tooShort(failedValue, failureTag, minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) {
    return tooShort?.call(failedValue, failureTag, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(failedValue, failureTag, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) {
    return tooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) {
    return tooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) {
    if (tooShort != null) {
      return tooShort(this);
    }
    return orElse();
  }
}

abstract class ValueFailureTooShort<T> implements ValueFailure<T> {
  const factory ValueFailureTooShort(
      {required final T failedValue,
      required final String failureTag,
      required final int minLength}) = _$ValueFailureTooShort<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get failureTag => throw _privateConstructorUsedError;
  int get minLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureTooShortCopyWith<T, _$ValueFailureTooShort<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureTooLongCopyWith(_$ValueFailureTooLong<T> value,
          $Res Function(_$ValueFailureTooLong<T>) then) =
      __$$ValueFailureTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String failureTag, int maxLength});
}

/// @nodoc
class __$$ValueFailureTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ValueFailureTooLongCopyWith<T, $Res> {
  __$$ValueFailureTooLongCopyWithImpl(_$ValueFailureTooLong<T> _value,
      $Res Function(_$ValueFailureTooLong<T>) _then)
      : super(_value, (v) => _then(v as _$ValueFailureTooLong<T>));

  @override
  _$ValueFailureTooLong<T> get _value =>
      super._value as _$ValueFailureTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_$ValueFailureTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueFailureTooLong<T>
    with DiagnosticableTreeMixin
    implements ValueFailureTooLong<T> {
  const _$ValueFailureTooLong(
      {required this.failedValue,
      required this.failureTag,
      required this.maxLength});

  @override
  final T failedValue;
  @override
  final String failureTag;
  @override
  final int maxLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.tooLong(failedValue: $failedValue, failureTag: $failureTag, maxLength: $maxLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.tooLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('failureTag', failureTag))
      ..add(DiagnosticsProperty('maxLength', maxLength));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureTooLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.failureTag, failureTag) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(failureTag),
      const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  _$$ValueFailureTooLongCopyWith<T, _$ValueFailureTooLong<T>> get copyWith =>
      __$$ValueFailureTooLongCopyWithImpl<T, _$ValueFailureTooLong<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) {
    return tooLong(failedValue, failureTag, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) {
    return tooLong?.call(failedValue, failureTag, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(failedValue, failureTag, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) {
    return tooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class ValueFailureTooLong<T> implements ValueFailure<T> {
  const factory ValueFailureTooLong(
      {required final T failedValue,
      required final String failureTag,
      required final int maxLength}) = _$ValueFailureTooLong<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get failureTag => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureTooLongCopyWith<T, _$ValueFailureTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureLengthNotEqualCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureLengthNotEqualCopyWith(
          _$ValueFailureLengthNotEqual<T> value,
          $Res Function(_$ValueFailureLengthNotEqual<T>) then) =
      __$$ValueFailureLengthNotEqualCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String failureTag, int length});
}

/// @nodoc
class __$$ValueFailureLengthNotEqualCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ValueFailureLengthNotEqualCopyWith<T, $Res> {
  __$$ValueFailureLengthNotEqualCopyWithImpl(
      _$ValueFailureLengthNotEqual<T> _value,
      $Res Function(_$ValueFailureLengthNotEqual<T>) _then)
      : super(_value, (v) => _then(v as _$ValueFailureLengthNotEqual<T>));

  @override
  _$ValueFailureLengthNotEqual<T> get _value =>
      super._value as _$ValueFailureLengthNotEqual<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
    Object? length = freezed,
  }) {
    return _then(_$ValueFailureLengthNotEqual<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueFailureLengthNotEqual<T>
    with DiagnosticableTreeMixin
    implements ValueFailureLengthNotEqual<T> {
  const _$ValueFailureLengthNotEqual(
      {required this.failedValue,
      required this.failureTag,
      required this.length});

  @override
  final T failedValue;
  @override
  final String failureTag;
  @override
  final int length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.lengthNotEqual(failedValue: $failedValue, failureTag: $failureTag, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.lengthNotEqual'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('failureTag', failureTag))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureLengthNotEqual<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.failureTag, failureTag) &&
            const DeepCollectionEquality().equals(other.length, length));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(failureTag),
      const DeepCollectionEquality().hash(length));

  @JsonKey(ignore: true)
  @override
  _$$ValueFailureLengthNotEqualCopyWith<T, _$ValueFailureLengthNotEqual<T>>
      get copyWith => __$$ValueFailureLengthNotEqualCopyWithImpl<T,
          _$ValueFailureLengthNotEqual<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) {
    return lengthNotEqual(failedValue, failureTag, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) {
    return lengthNotEqual?.call(failedValue, failureTag, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) {
    if (lengthNotEqual != null) {
      return lengthNotEqual(failedValue, failureTag, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) {
    return lengthNotEqual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) {
    return lengthNotEqual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) {
    if (lengthNotEqual != null) {
      return lengthNotEqual(this);
    }
    return orElse();
  }
}

abstract class ValueFailureLengthNotEqual<T> implements ValueFailure<T> {
  const factory ValueFailureLengthNotEqual(
      {required final T failedValue,
      required final String failureTag,
      required final int length}) = _$ValueFailureLengthNotEqual<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get failureTag => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureLengthNotEqualCopyWith<T, _$ValueFailureLengthNotEqual<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFailureNotMatchCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ValueFailureNotMatchCopyWith(_$ValueFailureNotMatch<T> value,
          $Res Function(_$ValueFailureNotMatch<T>) then) =
      __$$ValueFailureNotMatchCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String failureTag, T matcher});
}

/// @nodoc
class __$$ValueFailureNotMatchCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ValueFailureNotMatchCopyWith<T, $Res> {
  __$$ValueFailureNotMatchCopyWithImpl(_$ValueFailureNotMatch<T> _value,
      $Res Function(_$ValueFailureNotMatch<T>) _then)
      : super(_value, (v) => _then(v as _$ValueFailureNotMatch<T>));

  @override
  _$ValueFailureNotMatch<T> get _value =>
      super._value as _$ValueFailureNotMatch<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? failureTag = freezed,
    Object? matcher = freezed,
  }) {
    return _then(_$ValueFailureNotMatch<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      failureTag: failureTag == freezed
          ? _value.failureTag
          : failureTag // ignore: cast_nullable_to_non_nullable
              as String,
      matcher: matcher == freezed
          ? _value.matcher
          : matcher // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ValueFailureNotMatch<T>
    with DiagnosticableTreeMixin
    implements ValueFailureNotMatch<T> {
  const _$ValueFailureNotMatch(
      {required this.failedValue,
      required this.failureTag,
      required this.matcher});

  @override
  final T failedValue;
  @override
  final String failureTag;
  @override
  final T matcher;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.notMatch(failedValue: $failedValue, failureTag: $failureTag, matcher: $matcher)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.notMatch'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('failureTag', failureTag))
      ..add(DiagnosticsProperty('matcher', matcher));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFailureNotMatch<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.failureTag, failureTag) &&
            const DeepCollectionEquality().equals(other.matcher, matcher));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(failureTag),
      const DeepCollectionEquality().hash(matcher));

  @JsonKey(ignore: true)
  @override
  _$$ValueFailureNotMatchCopyWith<T, _$ValueFailureNotMatch<T>> get copyWith =>
      __$$ValueFailureNotMatchCopyWithImpl<T, _$ValueFailureNotMatch<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String failureTag) empty,
    required TResult Function(T failedValue, String failureTag) invalidEmail,
    required TResult Function(T failedValue, String failureTag) invalidCode,
    required TResult Function(T failedValue, String failureTag) invalidPassword,
    required TResult Function(T failedValue, String failureTag, int minLength)
        tooShort,
    required TResult Function(T failedValue, String failureTag, int maxLength)
        tooLong,
    required TResult Function(T failedValue, String failureTag, int length)
        lengthNotEqual,
    required TResult Function(T failedValue, String failureTag, T matcher)
        notMatch,
  }) {
    return notMatch(failedValue, failureTag, matcher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
  }) {
    return notMatch?.call(failedValue, failureTag, matcher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String failureTag)? empty,
    TResult Function(T failedValue, String failureTag)? invalidEmail,
    TResult Function(T failedValue, String failureTag)? invalidCode,
    TResult Function(T failedValue, String failureTag)? invalidPassword,
    TResult Function(T failedValue, String failureTag, int minLength)? tooShort,
    TResult Function(T failedValue, String failureTag, int maxLength)? tooLong,
    TResult Function(T failedValue, String failureTag, int length)?
        lengthNotEqual,
    TResult Function(T failedValue, String failureTag, T matcher)? notMatch,
    required TResult orElse(),
  }) {
    if (notMatch != null) {
      return notMatch(failedValue, failureTag, matcher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValueFailureEmpty<T> value) empty,
    required TResult Function(ValueFailureInvalidEmail<T> value) invalidEmail,
    required TResult Function(ValueFailureInvalidCode<T> value) invalidCode,
    required TResult Function(ValueFailureInvalidPassword<T> value)
        invalidPassword,
    required TResult Function(ValueFailureTooShort<T> value) tooShort,
    required TResult Function(ValueFailureTooLong<T> value) tooLong,
    required TResult Function(ValueFailureLengthNotEqual<T> value)
        lengthNotEqual,
    required TResult Function(ValueFailureNotMatch<T> value) notMatch,
  }) {
    return notMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
  }) {
    return notMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValueFailureEmpty<T> value)? empty,
    TResult Function(ValueFailureInvalidEmail<T> value)? invalidEmail,
    TResult Function(ValueFailureInvalidCode<T> value)? invalidCode,
    TResult Function(ValueFailureInvalidPassword<T> value)? invalidPassword,
    TResult Function(ValueFailureTooShort<T> value)? tooShort,
    TResult Function(ValueFailureTooLong<T> value)? tooLong,
    TResult Function(ValueFailureLengthNotEqual<T> value)? lengthNotEqual,
    TResult Function(ValueFailureNotMatch<T> value)? notMatch,
    required TResult orElse(),
  }) {
    if (notMatch != null) {
      return notMatch(this);
    }
    return orElse();
  }
}

abstract class ValueFailureNotMatch<T> implements ValueFailure<T> {
  const factory ValueFailureNotMatch(
      {required final T failedValue,
      required final String failureTag,
      required final T matcher}) = _$ValueFailureNotMatch<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get failureTag => throw _privateConstructorUsedError;
  T get matcher => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ValueFailureNotMatchCopyWith<T, _$ValueFailureNotMatch<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
