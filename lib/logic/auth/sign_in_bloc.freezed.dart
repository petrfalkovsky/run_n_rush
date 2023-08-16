// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) getSignIn,
    required TResult Function(String email) getResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? getSignIn,
    TResult Function(String email)? getResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? getSignIn,
    TResult Function(String email)? getResetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSignInEvent value) getSignIn,
    required TResult Function(_GetResetPasswordEvent value) getResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSignInEvent value)? getSignIn,
    TResult Function(_GetResetPasswordEvent value)? getResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSignInEvent value)? getSignIn,
    TResult Function(_GetResetPasswordEvent value)? getResetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetSignInEventCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$_GetSignInEventCopyWith(
          _$_GetSignInEvent value, $Res Function(_$_GetSignInEvent) then) =
      __$$_GetSignInEventCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$_GetSignInEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$_GetSignInEventCopyWith<$Res> {
  __$$_GetSignInEventCopyWithImpl(
      _$_GetSignInEvent _value, $Res Function(_$_GetSignInEvent) _then)
      : super(_value, (v) => _then(v as _$_GetSignInEvent));

  @override
  _$_GetSignInEvent get _value => super._value as _$_GetSignInEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_GetSignInEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSignInEvent
    with DiagnosticableTreeMixin
    implements _GetSignInEvent {
  const _$_GetSignInEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.getSignIn(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInEvent.getSignIn'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSignInEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_GetSignInEventCopyWith<_$_GetSignInEvent> get copyWith =>
      __$$_GetSignInEventCopyWithImpl<_$_GetSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) getSignIn,
    required TResult Function(String email) getResetPassword,
  }) {
    return getSignIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? getSignIn,
    TResult Function(String email)? getResetPassword,
  }) {
    return getSignIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? getSignIn,
    TResult Function(String email)? getResetPassword,
    required TResult orElse(),
  }) {
    if (getSignIn != null) {
      return getSignIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSignInEvent value) getSignIn,
    required TResult Function(_GetResetPasswordEvent value) getResetPassword,
  }) {
    return getSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSignInEvent value)? getSignIn,
    TResult Function(_GetResetPasswordEvent value)? getResetPassword,
  }) {
    return getSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSignInEvent value)? getSignIn,
    TResult Function(_GetResetPasswordEvent value)? getResetPassword,
    required TResult orElse(),
  }) {
    if (getSignIn != null) {
      return getSignIn(this);
    }
    return orElse();
  }
}

abstract class _GetSignInEvent implements SignInEvent {
  const factory _GetSignInEvent(
      {required final String email,
      required final String password}) = _$_GetSignInEvent;

  @override
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetSignInEventCopyWith<_$_GetSignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetResetPasswordEventCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$_GetResetPasswordEventCopyWith(_$_GetResetPasswordEvent value,
          $Res Function(_$_GetResetPasswordEvent) then) =
      __$$_GetResetPasswordEventCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$$_GetResetPasswordEventCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$_GetResetPasswordEventCopyWith<$Res> {
  __$$_GetResetPasswordEventCopyWithImpl(_$_GetResetPasswordEvent _value,
      $Res Function(_$_GetResetPasswordEvent) _then)
      : super(_value, (v) => _then(v as _$_GetResetPasswordEvent));

  @override
  _$_GetResetPasswordEvent get _value =>
      super._value as _$_GetResetPasswordEvent;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_GetResetPasswordEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetResetPasswordEvent
    with DiagnosticableTreeMixin
    implements _GetResetPasswordEvent {
  const _$_GetResetPasswordEvent({required this.email});

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.getResetPassword(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInEvent.getResetPassword'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetResetPasswordEvent &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_GetResetPasswordEventCopyWith<_$_GetResetPasswordEvent> get copyWith =>
      __$$_GetResetPasswordEventCopyWithImpl<_$_GetResetPasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) getSignIn,
    required TResult Function(String email) getResetPassword,
  }) {
    return getResetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? getSignIn,
    TResult Function(String email)? getResetPassword,
  }) {
    return getResetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? getSignIn,
    TResult Function(String email)? getResetPassword,
    required TResult orElse(),
  }) {
    if (getResetPassword != null) {
      return getResetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSignInEvent value) getSignIn,
    required TResult Function(_GetResetPasswordEvent value) getResetPassword,
  }) {
    return getResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSignInEvent value)? getSignIn,
    TResult Function(_GetResetPasswordEvent value)? getResetPassword,
  }) {
    return getResetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSignInEvent value)? getSignIn,
    TResult Function(_GetResetPasswordEvent value)? getResetPassword,
    required TResult orElse(),
  }) {
    if (getResetPassword != null) {
      return getResetPassword(this);
    }
    return orElse();
  }
}

abstract class _GetResetPasswordEvent implements SignInEvent {
  const factory _GetResetPasswordEvent({required final String email}) =
      _$_GetResetPasswordEvent;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GetResetPasswordEventCopyWith<_$_GetResetPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignIn,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotRessetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotSignIn value) gotSignIn,
    required TResult Function(_GotResetPassword value) gotRessetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
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
    return 'SignInState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.initial'));
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
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignIn,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotRessetPassword,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
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
    required TResult Function(_GotSignIn value) gotSignIn,
    required TResult Function(_GotResetPassword value) gotRessetPassword,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
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
    return 'SignInState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.loading'));
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
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignIn,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotRessetPassword,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
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
    required TResult Function(_GotSignIn value) gotSignIn,
    required TResult Function(_GotResetPassword value) gotRessetPassword,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignInState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_GotSignInCopyWith<$Res> {
  factory _$$_GotSignInCopyWith(
          _$_GotSignIn value, $Res Function(_$_GotSignIn) then) =
      __$$_GotSignInCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, UserData> data});
}

/// @nodoc
class __$$_GotSignInCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_GotSignInCopyWith<$Res> {
  __$$_GotSignInCopyWithImpl(
      _$_GotSignIn _value, $Res Function(_$_GotSignIn) _then)
      : super(_value, (v) => _then(v as _$_GotSignIn));

  @override
  _$_GotSignIn get _value => super._value as _$_GotSignIn;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GotSignIn(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, UserData>,
    ));
  }
}

/// @nodoc

class _$_GotSignIn with DiagnosticableTreeMixin implements _GotSignIn {
  const _$_GotSignIn(this.data);

  @override
  final Either<ExtendedErrors, UserData> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.gotSignIn(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.gotSignIn'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotSignIn &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GotSignInCopyWith<_$_GotSignIn> get copyWith =>
      __$$_GotSignInCopyWithImpl<_$_GotSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignIn,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotRessetPassword,
  }) {
    return gotSignIn(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
  }) {
    return gotSignIn?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
    required TResult orElse(),
  }) {
    if (gotSignIn != null) {
      return gotSignIn(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotSignIn value) gotSignIn,
    required TResult Function(_GotResetPassword value) gotRessetPassword,
  }) {
    return gotSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
  }) {
    return gotSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
    required TResult orElse(),
  }) {
    if (gotSignIn != null) {
      return gotSignIn(this);
    }
    return orElse();
  }
}

abstract class _GotSignIn implements SignInState {
  const factory _GotSignIn(final Either<ExtendedErrors, UserData> data) =
      _$_GotSignIn;

  Either<ExtendedErrors, UserData> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GotSignInCopyWith<_$_GotSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotResetPasswordCopyWith<$Res> {
  factory _$$_GotResetPasswordCopyWith(
          _$_GotResetPassword value, $Res Function(_$_GotResetPassword) then) =
      __$$_GotResetPasswordCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, Detail> data});
}

/// @nodoc
class __$$_GotResetPasswordCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_GotResetPasswordCopyWith<$Res> {
  __$$_GotResetPasswordCopyWithImpl(
      _$_GotResetPassword _value, $Res Function(_$_GotResetPassword) _then)
      : super(_value, (v) => _then(v as _$_GotResetPassword));

  @override
  _$_GotResetPassword get _value => super._value as _$_GotResetPassword;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GotResetPassword(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, Detail>,
    ));
  }
}

/// @nodoc

class _$_GotResetPassword
    with DiagnosticableTreeMixin
    implements _GotResetPassword {
  const _$_GotResetPassword(this.data);

  @override
  final Either<ExtendedErrors, Detail> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.gotRessetPassword(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.gotRessetPassword'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotResetPassword &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GotResetPasswordCopyWith<_$_GotResetPassword> get copyWith =>
      __$$_GotResetPasswordCopyWithImpl<_$_GotResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, UserData> data) gotSignIn,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotRessetPassword,
  }) {
    return gotRessetPassword(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
  }) {
    return gotRessetPassword?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, UserData> data)? gotSignIn,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotRessetPassword,
    required TResult orElse(),
  }) {
    if (gotRessetPassword != null) {
      return gotRessetPassword(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotSignIn value) gotSignIn,
    required TResult Function(_GotResetPassword value) gotRessetPassword,
  }) {
    return gotRessetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
  }) {
    return gotRessetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotSignIn value)? gotSignIn,
    TResult Function(_GotResetPassword value)? gotRessetPassword,
    required TResult orElse(),
  }) {
    if (gotRessetPassword != null) {
      return gotRessetPassword(this);
    }
    return orElse();
  }
}

abstract class _GotResetPassword implements SignInState {
  const factory _GotResetPassword(final Either<ExtendedErrors, Detail> data) =
      _$_GotResetPassword;

  Either<ExtendedErrors, Detail> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GotResetPasswordCopyWith<_$_GotResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
