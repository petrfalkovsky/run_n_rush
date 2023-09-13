// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$ExtendedErrorsCopyWithImpl<$Res, ExtendedErrors>;
  @useResult
  $Res call(
      {String error,
      Map<String, List> errors,
      Map<String, List> onlyUserFieldsErrors});
}

/// @nodoc
class _$ExtendedErrorsCopyWithImpl<$Res, $Val extends ExtendedErrors>
    implements $ExtendedErrorsCopyWith<$Res> {
  _$ExtendedErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? errors = null,
    Object? onlyUserFieldsErrors = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List>,
      onlyUserFieldsErrors: null == onlyUserFieldsErrors
          ? _value.onlyUserFieldsErrors
          : onlyUserFieldsErrors // ignore: cast_nullable_to_non_nullable
              as Map<String, List>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExtendedErrorsCopyWith<$Res>
    implements $ExtendedErrorsCopyWith<$Res> {
  factory _$$_ExtendedErrorsCopyWith(
          _$_ExtendedErrors value, $Res Function(_$_ExtendedErrors) then) =
      __$$_ExtendedErrorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      Map<String, List> errors,
      Map<String, List> onlyUserFieldsErrors});
}

/// @nodoc
class __$$_ExtendedErrorsCopyWithImpl<$Res>
    extends _$ExtendedErrorsCopyWithImpl<$Res, _$_ExtendedErrors>
    implements _$$_ExtendedErrorsCopyWith<$Res> {
  __$$_ExtendedErrorsCopyWithImpl(
      _$_ExtendedErrors _value, $Res Function(_$_ExtendedErrors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? errors = null,
    Object? onlyUserFieldsErrors = null,
  }) {
    return _then(_$_ExtendedErrors(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List>,
      onlyUserFieldsErrors: null == onlyUserFieldsErrors
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
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  final Map<String, List> _onlyUserFieldsErrors;
  @override
  @JsonKey()
  Map<String, List> get onlyUserFieldsErrors {
    if (_onlyUserFieldsErrors is EqualUnmodifiableMapView)
      return _onlyUserFieldsErrors;
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
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality()
                .equals(other._onlyUserFieldsErrors, _onlyUserFieldsErrors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(_onlyUserFieldsErrors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExtendedErrorsCopyWith<_$_ExtendedErrors> get copyWith =>
      __$$_ExtendedErrorsCopyWithImpl<_$_ExtendedErrors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtendedErrorsToJson(
      this,
    );
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
  String get error;
  @override
  Map<String, List> get errors;
  @override
  Map<String, List> get onlyUserFieldsErrors;
  @override
  @JsonKey(ignore: true)
  _$$_ExtendedErrorsCopyWith<_$_ExtendedErrors> get copyWith =>
      throw _privateConstructorUsedError;
}
