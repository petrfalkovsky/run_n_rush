// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UiModelState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) finished,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? finished,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? finished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiModelStateIdle<T> value) idle,
    required TResult Function(UiModelStateLoading<T> value) loading,
    required TResult Function(UiModelStateFinished<T> value) finished,
    required TResult Function(UiModelStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiModelStateIdle<T> value)? idle,
    TResult? Function(UiModelStateLoading<T> value)? loading,
    TResult? Function(UiModelStateFinished<T> value)? finished,
    TResult? Function(UiModelStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiModelStateIdle<T> value)? idle,
    TResult Function(UiModelStateLoading<T> value)? loading,
    TResult Function(UiModelStateFinished<T> value)? finished,
    TResult Function(UiModelStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiModelStateCopyWith<T, $Res> {
  factory $UiModelStateCopyWith(
          UiModelState<T> value, $Res Function(UiModelState<T>) then) =
      _$UiModelStateCopyWithImpl<T, $Res, UiModelState<T>>;
}

/// @nodoc
class _$UiModelStateCopyWithImpl<T, $Res, $Val extends UiModelState<T>>
    implements $UiModelStateCopyWith<T, $Res> {
  _$UiModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UiModelStateIdleCopyWith<T, $Res> {
  factory _$$UiModelStateIdleCopyWith(_$UiModelStateIdle<T> value,
          $Res Function(_$UiModelStateIdle<T>) then) =
      __$$UiModelStateIdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UiModelStateIdleCopyWithImpl<T, $Res>
    extends _$UiModelStateCopyWithImpl<T, $Res, _$UiModelStateIdle<T>>
    implements _$$UiModelStateIdleCopyWith<T, $Res> {
  __$$UiModelStateIdleCopyWithImpl(
      _$UiModelStateIdle<T> _value, $Res Function(_$UiModelStateIdle<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UiModelStateIdle<T> implements UiModelStateIdle<T> {
  const _$UiModelStateIdle();

  @override
  String toString() {
    return 'UiModelState<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UiModelStateIdle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) finished,
    required TResult Function(String error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? finished,
    TResult? Function(String error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? finished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiModelStateIdle<T> value) idle,
    required TResult Function(UiModelStateLoading<T> value) loading,
    required TResult Function(UiModelStateFinished<T> value) finished,
    required TResult Function(UiModelStateError<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiModelStateIdle<T> value)? idle,
    TResult? Function(UiModelStateLoading<T> value)? loading,
    TResult? Function(UiModelStateFinished<T> value)? finished,
    TResult? Function(UiModelStateError<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiModelStateIdle<T> value)? idle,
    TResult Function(UiModelStateLoading<T> value)? loading,
    TResult Function(UiModelStateFinished<T> value)? finished,
    TResult Function(UiModelStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class UiModelStateIdle<T> implements UiModelState<T> {
  const factory UiModelStateIdle() = _$UiModelStateIdle<T>;
}

/// @nodoc
abstract class _$$UiModelStateLoadingCopyWith<T, $Res> {
  factory _$$UiModelStateLoadingCopyWith(_$UiModelStateLoading<T> value,
          $Res Function(_$UiModelStateLoading<T>) then) =
      __$$UiModelStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UiModelStateLoadingCopyWithImpl<T, $Res>
    extends _$UiModelStateCopyWithImpl<T, $Res, _$UiModelStateLoading<T>>
    implements _$$UiModelStateLoadingCopyWith<T, $Res> {
  __$$UiModelStateLoadingCopyWithImpl(_$UiModelStateLoading<T> _value,
      $Res Function(_$UiModelStateLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UiModelStateLoading<T> implements UiModelStateLoading<T> {
  const _$UiModelStateLoading();

  @override
  String toString() {
    return 'UiModelState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UiModelStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) finished,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? finished,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? finished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiModelStateIdle<T> value) idle,
    required TResult Function(UiModelStateLoading<T> value) loading,
    required TResult Function(UiModelStateFinished<T> value) finished,
    required TResult Function(UiModelStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiModelStateIdle<T> value)? idle,
    TResult? Function(UiModelStateLoading<T> value)? loading,
    TResult? Function(UiModelStateFinished<T> value)? finished,
    TResult? Function(UiModelStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiModelStateIdle<T> value)? idle,
    TResult Function(UiModelStateLoading<T> value)? loading,
    TResult Function(UiModelStateFinished<T> value)? finished,
    TResult Function(UiModelStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UiModelStateLoading<T> implements UiModelState<T> {
  const factory UiModelStateLoading() = _$UiModelStateLoading<T>;
}

/// @nodoc
abstract class _$$UiModelStateFinishedCopyWith<T, $Res> {
  factory _$$UiModelStateFinishedCopyWith(_$UiModelStateFinished<T> value,
          $Res Function(_$UiModelStateFinished<T>) then) =
      __$$UiModelStateFinishedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$UiModelStateFinishedCopyWithImpl<T, $Res>
    extends _$UiModelStateCopyWithImpl<T, $Res, _$UiModelStateFinished<T>>
    implements _$$UiModelStateFinishedCopyWith<T, $Res> {
  __$$UiModelStateFinishedCopyWithImpl(_$UiModelStateFinished<T> _value,
      $Res Function(_$UiModelStateFinished<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UiModelStateFinished<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UiModelStateFinished<T> implements UiModelStateFinished<T> {
  const _$UiModelStateFinished(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'UiModelState<$T>.finished(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiModelStateFinished<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiModelStateFinishedCopyWith<T, _$UiModelStateFinished<T>> get copyWith =>
      __$$UiModelStateFinishedCopyWithImpl<T, _$UiModelStateFinished<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) finished,
    required TResult Function(String error) error,
  }) {
    return finished(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? finished,
    TResult? Function(String error)? error,
  }) {
    return finished?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? finished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiModelStateIdle<T> value) idle,
    required TResult Function(UiModelStateLoading<T> value) loading,
    required TResult Function(UiModelStateFinished<T> value) finished,
    required TResult Function(UiModelStateError<T> value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiModelStateIdle<T> value)? idle,
    TResult? Function(UiModelStateLoading<T> value)? loading,
    TResult? Function(UiModelStateFinished<T> value)? finished,
    TResult? Function(UiModelStateError<T> value)? error,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiModelStateIdle<T> value)? idle,
    TResult Function(UiModelStateLoading<T> value)? loading,
    TResult Function(UiModelStateFinished<T> value)? finished,
    TResult Function(UiModelStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class UiModelStateFinished<T> implements UiModelState<T> {
  const factory UiModelStateFinished(final T data) = _$UiModelStateFinished<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$UiModelStateFinishedCopyWith<T, _$UiModelStateFinished<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UiModelStateErrorCopyWith<T, $Res> {
  factory _$$UiModelStateErrorCopyWith(_$UiModelStateError<T> value,
          $Res Function(_$UiModelStateError<T>) then) =
      __$$UiModelStateErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UiModelStateErrorCopyWithImpl<T, $Res>
    extends _$UiModelStateCopyWithImpl<T, $Res, _$UiModelStateError<T>>
    implements _$$UiModelStateErrorCopyWith<T, $Res> {
  __$$UiModelStateErrorCopyWithImpl(_$UiModelStateError<T> _value,
      $Res Function(_$UiModelStateError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UiModelStateError<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UiModelStateError<T> implements UiModelStateError<T> {
  const _$UiModelStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UiModelState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiModelStateError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiModelStateErrorCopyWith<T, _$UiModelStateError<T>> get copyWith =>
      __$$UiModelStateErrorCopyWithImpl<T, _$UiModelStateError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) finished,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? finished,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? finished,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiModelStateIdle<T> value) idle,
    required TResult Function(UiModelStateLoading<T> value) loading,
    required TResult Function(UiModelStateFinished<T> value) finished,
    required TResult Function(UiModelStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiModelStateIdle<T> value)? idle,
    TResult? Function(UiModelStateLoading<T> value)? loading,
    TResult? Function(UiModelStateFinished<T> value)? finished,
    TResult? Function(UiModelStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiModelStateIdle<T> value)? idle,
    TResult Function(UiModelStateLoading<T> value)? loading,
    TResult Function(UiModelStateFinished<T> value)? finished,
    TResult Function(UiModelStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UiModelStateError<T> implements UiModelState<T> {
  const factory UiModelStateError(final String error) = _$UiModelStateError<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$UiModelStateErrorCopyWith<T, _$UiModelStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
