// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpBody body) getSignUp,
    required TResult Function(EmailVerifyBody body) getCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SignUpBody body)? getSignUp,
    TResult Function(EmailVerifyBody body)? getCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpBody body)? getSignUp,
    TResult Function(EmailVerifyBody body)? getCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSignUpEvent value) getSignUp,
    required TResult Function(_GetCodeEvent value) getCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSignUpEvent value)? getSignUp,
    TResult Function(_GetCodeEvent value)? getCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSignUpEvent value)? getSignUp,
    TResult Function(_GetCodeEvent value)? getCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$$_GetSignUpEventCopyWith<$Res> {
  factory _$$_GetSignUpEventCopyWith(
          _$_GetSignUpEvent value, $Res Function(_$_GetSignUpEvent) then) =
      __$$_GetSignUpEventCopyWithImpl<$Res>;
  $Res call({SignUpBody body});
}

/// @nodoc
class __$$_GetSignUpEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$_GetSignUpEventCopyWith<$Res> {
  __$$_GetSignUpEventCopyWithImpl(
      _$_GetSignUpEvent _value, $Res Function(_$_GetSignUpEvent) _then)
      : super(_value, (v) => _then(v as _$_GetSignUpEvent));

  @override
  _$_GetSignUpEvent get _value => super._value as _$_GetSignUpEvent;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$_GetSignUpEvent(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SignUpBody,
    ));
  }
}

/// @nodoc

class _$_GetSignUpEvent
    with DiagnosticableTreeMixin
    implements _GetSignUpEvent {
  const _$_GetSignUpEvent({required this.body});

  @override
  final SignUpBody body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.getSignUp(body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.getSignUp'))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSignUpEvent &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_GetSignUpEventCopyWith<_$_GetSignUpEvent> get copyWith =>
      __$$_GetSignUpEventCopyWithImpl<_$_GetSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpBody body) getSignUp,
    required TResult Function(EmailVerifyBody body) getCode,
  }) {
    return getSignUp(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SignUpBody body)? getSignUp,
    TResult Function(EmailVerifyBody body)? getCode,
  }) {
    return getSignUp?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpBody body)? getSignUp,
    TResult Function(EmailVerifyBody body)? getCode,
    required TResult orElse(),
  }) {
    if (getSignUp != null) {
      return getSignUp(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSignUpEvent value) getSignUp,
    required TResult Function(_GetCodeEvent value) getCode,
  }) {
    return getSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSignUpEvent value)? getSignUp,
    TResult Function(_GetCodeEvent value)? getCode,
  }) {
    return getSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSignUpEvent value)? getSignUp,
    TResult Function(_GetCodeEvent value)? getCode,
    required TResult orElse(),
  }) {
    if (getSignUp != null) {
      return getSignUp(this);
    }
    return orElse();
  }
}

abstract class _GetSignUpEvent implements SignUpEvent {
  const factory _GetSignUpEvent({required final SignUpBody body}) =
      _$_GetSignUpEvent;

  SignUpBody get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GetSignUpEventCopyWith<_$_GetSignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCodeEventCopyWith<$Res> {
  factory _$$_GetCodeEventCopyWith(
          _$_GetCodeEvent value, $Res Function(_$_GetCodeEvent) then) =
      __$$_GetCodeEventCopyWithImpl<$Res>;
  $Res call({EmailVerifyBody body});
}

/// @nodoc
class __$$_GetCodeEventCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$$_GetCodeEventCopyWith<$Res> {
  __$$_GetCodeEventCopyWithImpl(
      _$_GetCodeEvent _value, $Res Function(_$_GetCodeEvent) _then)
      : super(_value, (v) => _then(v as _$_GetCodeEvent));

  @override
  _$_GetCodeEvent get _value => super._value as _$_GetCodeEvent;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$_GetCodeEvent(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as EmailVerifyBody,
    ));
  }
}

/// @nodoc

class _$_GetCodeEvent with DiagnosticableTreeMixin implements _GetCodeEvent {
  const _$_GetCodeEvent({required this.body});

  @override
  final EmailVerifyBody body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent.getCode(body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpEvent.getCode'))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCodeEvent &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_GetCodeEventCopyWith<_$_GetCodeEvent> get copyWith =>
      __$$_GetCodeEventCopyWithImpl<_$_GetCodeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpBody body) getSignUp,
    required TResult Function(EmailVerifyBody body) getCode,
  }) {
    return getCode(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SignUpBody body)? getSignUp,
    TResult Function(EmailVerifyBody body)? getCode,
  }) {
    return getCode?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpBody body)? getSignUp,
    TResult Function(EmailVerifyBody body)? getCode,
    required TResult orElse(),
  }) {
    if (getCode != null) {
      return getCode(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSignUpEvent value) getSignUp,
    required TResult Function(_GetCodeEvent value) getCode,
  }) {
    return getCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSignUpEvent value)? getSignUp,
    TResult Function(_GetCodeEvent value)? getCode,
  }) {
    return getCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSignUpEvent value)? getSignUp,
    TResult Function(_GetCodeEvent value)? getCode,
    required TResult orElse(),
  }) {
    if (getCode != null) {
      return getCode(this);
    }
    return orElse();
  }
}

abstract class _GetCodeEvent implements SignUpEvent {
  const factory _GetCodeEvent({required final EmailVerifyBody body}) =
      _$_GetCodeEvent;

  EmailVerifyBody get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GetCodeEventCopyWith<_$_GetCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignUp,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotSignUp value) gotSignUp,
    required TResult Function(_GotCode value) gotCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignUpState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignUp,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotCode,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotSignUp value) gotSignUp,
    required TResult Function(_GotCode value) gotCode,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignUpState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignUp,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotCode,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotSignUp value) gotSignUp,
    required TResult Function(_GotCode value) gotCode,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignUpState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_GotSignUpCopyWith<$Res> {
  factory _$$_GotSignUpCopyWith(
          _$_GotSignUp value, $Res Function(_$_GotSignUp) then) =
      __$$_GotSignUpCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, UserData> data});
}

/// @nodoc
class __$$_GotSignUpCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_GotSignUpCopyWith<$Res> {
  __$$_GotSignUpCopyWithImpl(
      _$_GotSignUp _value, $Res Function(_$_GotSignUp) _then)
      : super(_value, (v) => _then(v as _$_GotSignUp));

  @override
  _$_GotSignUp get _value => super._value as _$_GotSignUp;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GotSignUp(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, UserData>,
    ));
  }
}

/// @nodoc

class _$_GotSignUp with DiagnosticableTreeMixin implements _GotSignUp {
  const _$_GotSignUp(this.data);

  @override
  final Either<ExtendedErrors, UserData> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.gotSignUp(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.gotSignUp'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotSignUp &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GotSignUpCopyWith<_$_GotSignUp> get copyWith =>
      __$$_GotSignUpCopyWithImpl<_$_GotSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignUp,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotCode,
  }) {
    return gotSignUp(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
  }) {
    return gotSignUp?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
    required TResult orElse(),
  }) {
    if (gotSignUp != null) {
      return gotSignUp(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotSignUp value) gotSignUp,
    required TResult Function(_GotCode value) gotCode,
  }) {
    return gotSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
  }) {
    return gotSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
    required TResult orElse(),
  }) {
    if (gotSignUp != null) {
      return gotSignUp(this);
    }
    return orElse();
  }
}

abstract class _GotSignUp implements SignUpState {
  const factory _GotSignUp(final Either<ExtendedErrors, UserData> data) =
      _$_GotSignUp;

  Either<ExtendedErrors, UserData> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GotSignUpCopyWith<_$_GotSignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotCodeCopyWith<$Res> {
  factory _$$_GotCodeCopyWith(
          _$_GotCode value, $Res Function(_$_GotCode) then) =
      __$$_GotCodeCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, UserData> data});
}

/// @nodoc
class __$$_GotCodeCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$$_GotCodeCopyWith<$Res> {
  __$$_GotCodeCopyWithImpl(_$_GotCode _value, $Res Function(_$_GotCode) _then)
      : super(_value, (v) => _then(v as _$_GotCode));

  @override
  _$_GotCode get _value => super._value as _$_GotCode;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GotCode(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, UserData>,
    ));
  }
}

/// @nodoc

class _$_GotCode with DiagnosticableTreeMixin implements _GotCode {
  const _$_GotCode(this.data);

  @override
  final Either<ExtendedErrors, UserData> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.gotCode(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.gotCode'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotCode &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GotCodeCopyWith<_$_GotCode> get copyWith =>
      __$$_GotCodeCopyWithImpl<_$_GotCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignUp,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotCode,
  }) {
    return gotCode(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
  }) {
    return gotCode?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignUp,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotCode,
    required TResult orElse(),
  }) {
    if (gotCode != null) {
      return gotCode(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotSignUp value) gotSignUp,
    required TResult Function(_GotCode value) gotCode,
  }) {
    return gotCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
  }) {
    return gotCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignUp value)? gotSignUp,
    TResult Function(_GotCode value)? gotCode,
    required TResult orElse(),
  }) {
    if (gotCode != null) {
      return gotCode(this);
    }
    return orElse();
  }
}

abstract class _GotCode implements SignUpState {
  const factory _GotCode(final Either<ExtendedErrors, UserData> data) =
      _$_GotCode;

  Either<ExtendedErrors, UserData> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GotCodeCopyWith<_$_GotCode> get copyWith =>
      throw _privateConstructorUsedError;
}
