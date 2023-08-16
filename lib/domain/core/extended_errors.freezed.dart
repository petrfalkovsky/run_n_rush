// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'extended_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExtendedErrors _$ExtendedErrorsFromJson(Map<String, dynamic> json) {
  return _ExtendedErrors.fromJson(json);
}

/// @nodoc
mixin _$ExtendedErrors {
  String get error => throw _privateConstructorUsedError;
  Map<String, List> get errors => throw _privateConstructorUsedError;
  Map<String, List> get onlyUserFieldsErrors =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtendedErrorsCopyWith<ExtendedErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtendedErrorsCopyWith<$Res> {
  factory $ExtendedErrorsCopyWith(
          ExtendedErrors value, $Res Function(ExtendedErrors) then) =
      _$ExtendedErrorsCopyWithImpl<$Res>;
  $Res call(
      {String error,
      Map<String, List> errors,
      Map<String, List> onlyUserFieldsErrors});
}

/// @nodoc
class _$ExtendedErrorsCopyWithImpl<$Res>
    implements $ExtendedErrorsCopyWith<$Res> {
  _$ExtendedErrorsCopyWithImpl(this._value, this._then);

  final ExtendedErrors _value;
  // ignore: unused_field
  final $Res Function(ExtendedErrors) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? errors = freezed,
    Object? onlyUserFieldsErrors = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List>,
      onlyUserFieldsErrors: onlyUserFieldsErrors == freezed
          ? _value.onlyUserFieldsErrors
          : onlyUserFieldsErrors // ignore: cast_nullable_to_non_nullable
              as Map<String, List>,
    ));
  }
}

/// @nodoc
abstract class _$$_ExtendedErrorsCopyWith<$Res>
    implements $ExtendedErrorsCopyWith<$Res> {
  factory _$$_ExtendedErrorsCopyWith(
          _$_ExtendedErrors value, $Res Function(_$_ExtendedErrors) then) =
      __$$_ExtendedErrorsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String error,
      Map<String, List> errors,
      Map<String, List> onlyUserFieldsErrors});
}

/// @nodoc
class __$$_ExtendedErrorsCopyWithImpl<$Res>
    extends _$ExtendedErrorsCopyWithImpl<$Res>
    implements _$$_ExtendedErrorsCopyWith<$Res> {
  __$$_ExtendedErrorsCopyWithImpl(
      _$_ExtendedErrors _value, $Res Function(_$_ExtendedErrors) _then)
      : super(_value, (v) => _then(v as _$_ExtendedErrors));

  @override
  _$_ExtendedErrors get _value => super._value as _$_ExtendedErrors;

  @override
  $Res call({
    Object? error = freezed,
    Object? errors = freezed,
    Object? onlyUserFieldsErrors = freezed,
  }) {
    return _then(_$_ExtendedErrors(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List>,
      onlyUserFieldsErrors: onlyUserFieldsErrors == freezed
          ? _value._onlyUserFieldsErrors
          : onlyUserFieldsErrors // ignore: cast_nullable_to_non_nullable
              as Map<String, List>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExtendedErrors extends _ExtendedErrors {
  const _$_ExtendedErrors(
      {required this.error,
      required final Map<String, List> errors,
      final Map<String, List> onlyUserFieldsErrors = const {}})
      : _errors = errors,
        _onlyUserFieldsErrors = onlyUserFieldsErrors,
        super._();

  factory _$_ExtendedErrors.fromJson(Map<String, dynamic> json) =>
      _$$_ExtendedErrorsFromJson(json);

  @override
  final String error;
  final Map<String, List> _errors;
  @override
  Map<String, List> get errors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  final Map<String, List> _onlyUserFieldsErrors;
  @override
  @JsonKey()
  Map<String, List> get onlyUserFieldsErrors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_onlyUserFieldsErrors);
  }

  @override
  String toString() {
    return 'ExtendedErrors(error: $error, errors: $errors, onlyUserFieldsErrors: $onlyUserFieldsErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtendedErrors &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality()
                .equals(other._onlyUserFieldsErrors, _onlyUserFieldsErrors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(_onlyUserFieldsErrors));

  @JsonKey(ignore: true)
  @override
  _$$_ExtendedErrorsCopyWith<_$_ExtendedErrors> get copyWith =>
      __$$_ExtendedErrorsCopyWithImpl<_$_ExtendedErrors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtendedErrorsToJson(this);
  }
}

abstract class _ExtendedErrors extends ExtendedErrors {
  const factory _ExtendedErrors(
      {required final String error,
      required final Map<String, List> errors,
      final Map<String, List> onlyUserFieldsErrors}) = _$_ExtendedErrors;
  const _ExtendedErrors._() : super._();

  factory _ExtendedErrors.fromJson(Map<String, dynamic> json) =
      _$_ExtendedErrors.fromJson;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  Map<String, List> get errors => throw _privateConstructorUsedError;
  @override
  Map<String, List> get onlyUserFieldsErrors =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ExtendedErrorsCopyWith<_$_ExtendedErrors> get copyWith =>
      throw _privateConstructorUsedError;
}
