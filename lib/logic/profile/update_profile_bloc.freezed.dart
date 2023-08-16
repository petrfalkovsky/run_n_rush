// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(ChangeEmailBody body) getVerifyCode,
    required TResult Function(ChangeEmailConfirmBody body) changeEmail,
    required TResult Function(ProfileBody profileDto) changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordEvent value) changePassword,
    required TResult Function(_GetVerifyCodeEvent value) getVerifyCode,
    required TResult Function(_ChangeEmailEvent value) changeEmail,
    required TResult Function(_ChangeProfileEvent value) changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(this._value, this._then);

  final UpdateProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileEvent) _then;
}

/// @nodoc
abstract class _$$_ChangePasswordEventCopyWith<$Res> {
  factory _$$_ChangePasswordEventCopyWith(_$_ChangePasswordEvent value,
          $Res Function(_$_ChangePasswordEvent) then) =
      __$$_ChangePasswordEventCopyWithImpl<$Res>;
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$_ChangePasswordEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$$_ChangePasswordEventCopyWith<$Res> {
  __$$_ChangePasswordEventCopyWithImpl(_$_ChangePasswordEvent _value,
      $Res Function(_$_ChangePasswordEvent) _then)
      : super(_value, (v) => _then(v as _$_ChangePasswordEvent));

  @override
  _$_ChangePasswordEvent get _value => super._value as _$_ChangePasswordEvent;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$_ChangePasswordEvent(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordEvent implements _ChangePasswordEvent {
  const _$_ChangePasswordEvent(
      {required this.oldPassword, required this.newPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'UpdateProfileEvent.changePassword(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordEvent &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$$_ChangePasswordEventCopyWith<_$_ChangePasswordEvent> get copyWith =>
      __$$_ChangePasswordEventCopyWithImpl<_$_ChangePasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(ChangeEmailBody body) getVerifyCode,
    required TResult Function(ChangeEmailConfirmBody body) changeEmail,
    required TResult Function(ProfileBody profileDto) changeProfile,
  }) {
    return changePassword(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
  }) {
    return changePassword?.call(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(oldPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordEvent value) changePassword,
    required TResult Function(_GetVerifyCodeEvent value) getVerifyCode,
    required TResult Function(_ChangeEmailEvent value) changeEmail,
    required TResult Function(_ChangeProfileEvent value) changeProfile,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordEvent implements UpdateProfileEvent {
  const factory _ChangePasswordEvent(
      {required final String oldPassword,
      required final String newPassword}) = _$_ChangePasswordEvent;

  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ChangePasswordEventCopyWith<_$_ChangePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetVerifyCodeEventCopyWith<$Res> {
  factory _$$_GetVerifyCodeEventCopyWith(_$_GetVerifyCodeEvent value,
          $Res Function(_$_GetVerifyCodeEvent) then) =
      __$$_GetVerifyCodeEventCopyWithImpl<$Res>;
  $Res call({ChangeEmailBody body});
}

/// @nodoc
class __$$_GetVerifyCodeEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$$_GetVerifyCodeEventCopyWith<$Res> {
  __$$_GetVerifyCodeEventCopyWithImpl(
      _$_GetVerifyCodeEvent _value, $Res Function(_$_GetVerifyCodeEvent) _then)
      : super(_value, (v) => _then(v as _$_GetVerifyCodeEvent));

  @override
  _$_GetVerifyCodeEvent get _value => super._value as _$_GetVerifyCodeEvent;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$_GetVerifyCodeEvent(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ChangeEmailBody,
    ));
  }
}

/// @nodoc

class _$_GetVerifyCodeEvent implements _GetVerifyCodeEvent {
  const _$_GetVerifyCodeEvent({required this.body});

  @override
  final ChangeEmailBody body;

  @override
  String toString() {
    return 'UpdateProfileEvent.getVerifyCode(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetVerifyCodeEvent &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_GetVerifyCodeEventCopyWith<_$_GetVerifyCodeEvent> get copyWith =>
      __$$_GetVerifyCodeEventCopyWithImpl<_$_GetVerifyCodeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(ChangeEmailBody body) getVerifyCode,
    required TResult Function(ChangeEmailConfirmBody body) changeEmail,
    required TResult Function(ProfileBody profileDto) changeProfile,
  }) {
    return getVerifyCode(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
  }) {
    return getVerifyCode?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
    required TResult orElse(),
  }) {
    if (getVerifyCode != null) {
      return getVerifyCode(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordEvent value) changePassword,
    required TResult Function(_GetVerifyCodeEvent value) getVerifyCode,
    required TResult Function(_ChangeEmailEvent value) changeEmail,
    required TResult Function(_ChangeProfileEvent value) changeProfile,
  }) {
    return getVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
  }) {
    return getVerifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
    required TResult orElse(),
  }) {
    if (getVerifyCode != null) {
      return getVerifyCode(this);
    }
    return orElse();
  }
}

abstract class _GetVerifyCodeEvent implements UpdateProfileEvent {
  const factory _GetVerifyCodeEvent({required final ChangeEmailBody body}) =
      _$_GetVerifyCodeEvent;

  ChangeEmailBody get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GetVerifyCodeEventCopyWith<_$_GetVerifyCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeEmailEventCopyWith<$Res> {
  factory _$$_ChangeEmailEventCopyWith(
          _$_ChangeEmailEvent value, $Res Function(_$_ChangeEmailEvent) then) =
      __$$_ChangeEmailEventCopyWithImpl<$Res>;
  $Res call({ChangeEmailConfirmBody body});
}

/// @nodoc
class __$$_ChangeEmailEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$$_ChangeEmailEventCopyWith<$Res> {
  __$$_ChangeEmailEventCopyWithImpl(
      _$_ChangeEmailEvent _value, $Res Function(_$_ChangeEmailEvent) _then)
      : super(_value, (v) => _then(v as _$_ChangeEmailEvent));

  @override
  _$_ChangeEmailEvent get _value => super._value as _$_ChangeEmailEvent;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_$_ChangeEmailEvent(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ChangeEmailConfirmBody,
    ));
  }
}

/// @nodoc

class _$_ChangeEmailEvent implements _ChangeEmailEvent {
  const _$_ChangeEmailEvent({required this.body});

  @override
  final ChangeEmailConfirmBody body;

  @override
  String toString() {
    return 'UpdateProfileEvent.changeEmail(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeEmailEvent &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_ChangeEmailEventCopyWith<_$_ChangeEmailEvent> get copyWith =>
      __$$_ChangeEmailEventCopyWithImpl<_$_ChangeEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(ChangeEmailBody body) getVerifyCode,
    required TResult Function(ChangeEmailConfirmBody body) changeEmail,
    required TResult Function(ProfileBody profileDto) changeProfile,
  }) {
    return changeEmail(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
  }) {
    return changeEmail?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordEvent value) changePassword,
    required TResult Function(_GetVerifyCodeEvent value) getVerifyCode,
    required TResult Function(_ChangeEmailEvent value) changeEmail,
    required TResult Function(_ChangeProfileEvent value) changeProfile,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmailEvent implements UpdateProfileEvent {
  const factory _ChangeEmailEvent(
      {required final ChangeEmailConfirmBody body}) = _$_ChangeEmailEvent;

  ChangeEmailConfirmBody get body => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ChangeEmailEventCopyWith<_$_ChangeEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeProfileEventCopyWith<$Res> {
  factory _$$_ChangeProfileEventCopyWith(_$_ChangeProfileEvent value,
          $Res Function(_$_ChangeProfileEvent) then) =
      __$$_ChangeProfileEventCopyWithImpl<$Res>;
  $Res call({ProfileBody profileDto});
}

/// @nodoc
class __$$_ChangeProfileEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res>
    implements _$$_ChangeProfileEventCopyWith<$Res> {
  __$$_ChangeProfileEventCopyWithImpl(
      _$_ChangeProfileEvent _value, $Res Function(_$_ChangeProfileEvent) _then)
      : super(_value, (v) => _then(v as _$_ChangeProfileEvent));

  @override
  _$_ChangeProfileEvent get _value => super._value as _$_ChangeProfileEvent;

  @override
  $Res call({
    Object? profileDto = freezed,
  }) {
    return _then(_$_ChangeProfileEvent(
      profileDto: profileDto == freezed
          ? _value.profileDto
          : profileDto // ignore: cast_nullable_to_non_nullable
              as ProfileBody,
    ));
  }
}

/// @nodoc

class _$_ChangeProfileEvent implements _ChangeProfileEvent {
  const _$_ChangeProfileEvent({required this.profileDto});

  @override
  final ProfileBody profileDto;

  @override
  String toString() {
    return 'UpdateProfileEvent.changeProfile(profileDto: $profileDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeProfileEvent &&
            const DeepCollectionEquality()
                .equals(other.profileDto, profileDto));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profileDto));

  @JsonKey(ignore: true)
  @override
  _$$_ChangeProfileEventCopyWith<_$_ChangeProfileEvent> get copyWith =>
      __$$_ChangeProfileEventCopyWithImpl<_$_ChangeProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
        changePassword,
    required TResult Function(ChangeEmailBody body) getVerifyCode,
    required TResult Function(ChangeEmailConfirmBody body) changeEmail,
    required TResult Function(ProfileBody profileDto) changeProfile,
  }) {
    return changeProfile(profileDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
  }) {
    return changeProfile?.call(profileDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    TResult Function(ChangeEmailBody body)? getVerifyCode,
    TResult Function(ChangeEmailConfirmBody body)? changeEmail,
    TResult Function(ProfileBody profileDto)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(profileDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordEvent value) changePassword,
    required TResult Function(_GetVerifyCodeEvent value) getVerifyCode,
    required TResult Function(_ChangeEmailEvent value) changeEmail,
    required TResult Function(_ChangeProfileEvent value) changeProfile,
  }) {
    return changeProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
  }) {
    return changeProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordEvent value)? changePassword,
    TResult Function(_GetVerifyCodeEvent value)? getVerifyCode,
    TResult Function(_ChangeEmailEvent value)? changeEmail,
    TResult Function(_ChangeProfileEvent value)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfileEvent implements UpdateProfileEvent {
  const factory _ChangeProfileEvent({required final ProfileBody profileDto}) =
      _$_ChangeProfileEvent;

  ProfileBody get profileDto => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ChangeProfileEventCopyWith<_$_ChangeProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotChangePassword,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        getVerifyCode,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeEmail,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotChangePassword value) gotChangePassword,
    required TResult Function(_GetVerifyCode value) getVerifyCode,
    required TResult Function(_GotChangeEmail value) gotChangeEmail,
    required TResult Function(_GotChangeProfile value) gotChangeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  final UpdateProfileState _value;
  // ignore: unused_field
  final $Res Function(UpdateProfileState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UpdateProfileState.initial()';
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
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotChangePassword,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        getVerifyCode,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeEmail,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeProfile,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
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
    required TResult Function(_GotChangePassword value) gotChangePassword,
    required TResult Function(_GetVerifyCode value) getVerifyCode,
    required TResult Function(_GotChangeEmail value) gotChangeEmail,
    required TResult Function(_GotChangeProfile value) gotChangeProfile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdateProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UpdateProfileState.loading()';
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
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotChangePassword,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        getVerifyCode,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeEmail,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeProfile,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
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
    required TResult Function(_GotChangePassword value) gotChangePassword,
    required TResult Function(_GetVerifyCode value) getVerifyCode,
    required TResult Function(_GotChangeEmail value) gotChangeEmail,
    required TResult Function(_GotChangeProfile value) gotChangeProfile,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UpdateProfileState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_GotChangePasswordCopyWith<$Res> {
  factory _$$_GotChangePasswordCopyWith(_$_GotChangePassword value,
          $Res Function(_$_GotChangePassword) then) =
      __$$_GotChangePasswordCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, Detail> data});
}

/// @nodoc
class __$$_GotChangePasswordCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res>
    implements _$$_GotChangePasswordCopyWith<$Res> {
  __$$_GotChangePasswordCopyWithImpl(
      _$_GotChangePassword _value, $Res Function(_$_GotChangePassword) _then)
      : super(_value, (v) => _then(v as _$_GotChangePassword));

  @override
  _$_GotChangePassword get _value => super._value as _$_GotChangePassword;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GotChangePassword(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, Detail>,
    ));
  }
}

/// @nodoc

class _$_GotChangePassword implements _GotChangePassword {
  const _$_GotChangePassword(this.data);

  @override
  final Either<ExtendedErrors, Detail> data;

  @override
  String toString() {
    return 'UpdateProfileState.gotChangePassword(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotChangePassword &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GotChangePasswordCopyWith<_$_GotChangePassword> get copyWith =>
      __$$_GotChangePasswordCopyWithImpl<_$_GotChangePassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotChangePassword,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        getVerifyCode,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeEmail,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeProfile,
  }) {
    return gotChangePassword(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
  }) {
    return gotChangePassword?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
    required TResult orElse(),
  }) {
    if (gotChangePassword != null) {
      return gotChangePassword(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotChangePassword value) gotChangePassword,
    required TResult Function(_GetVerifyCode value) getVerifyCode,
    required TResult Function(_GotChangeEmail value) gotChangeEmail,
    required TResult Function(_GotChangeProfile value) gotChangeProfile,
  }) {
    return gotChangePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
  }) {
    return gotChangePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
    required TResult orElse(),
  }) {
    if (gotChangePassword != null) {
      return gotChangePassword(this);
    }
    return orElse();
  }
}

abstract class _GotChangePassword implements UpdateProfileState {
  const factory _GotChangePassword(final Either<ExtendedErrors, Detail> data) =
      _$_GotChangePassword;

  Either<ExtendedErrors, Detail> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GotChangePasswordCopyWith<_$_GotChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetVerifyCodeCopyWith<$Res> {
  factory _$$_GetVerifyCodeCopyWith(
          _$_GetVerifyCode value, $Res Function(_$_GetVerifyCode) then) =
      __$$_GetVerifyCodeCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, Detail> data});
}

/// @nodoc
class __$$_GetVerifyCodeCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res>
    implements _$$_GetVerifyCodeCopyWith<$Res> {
  __$$_GetVerifyCodeCopyWithImpl(
      _$_GetVerifyCode _value, $Res Function(_$_GetVerifyCode) _then)
      : super(_value, (v) => _then(v as _$_GetVerifyCode));

  @override
  _$_GetVerifyCode get _value => super._value as _$_GetVerifyCode;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetVerifyCode(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, Detail>,
    ));
  }
}

/// @nodoc

class _$_GetVerifyCode implements _GetVerifyCode {
  const _$_GetVerifyCode(this.data);

  @override
  final Either<ExtendedErrors, Detail> data;

  @override
  String toString() {
    return 'UpdateProfileState.getVerifyCode(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetVerifyCode &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GetVerifyCodeCopyWith<_$_GetVerifyCode> get copyWith =>
      __$$_GetVerifyCodeCopyWithImpl<_$_GetVerifyCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotChangePassword,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        getVerifyCode,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeEmail,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeProfile,
  }) {
    return getVerifyCode(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
  }) {
    return getVerifyCode?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
    required TResult orElse(),
  }) {
    if (getVerifyCode != null) {
      return getVerifyCode(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotChangePassword value) gotChangePassword,
    required TResult Function(_GetVerifyCode value) getVerifyCode,
    required TResult Function(_GotChangeEmail value) gotChangeEmail,
    required TResult Function(_GotChangeProfile value) gotChangeProfile,
  }) {
    return getVerifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
  }) {
    return getVerifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
    required TResult orElse(),
  }) {
    if (getVerifyCode != null) {
      return getVerifyCode(this);
    }
    return orElse();
  }
}

abstract class _GetVerifyCode implements UpdateProfileState {
  const factory _GetVerifyCode(final Either<ExtendedErrors, Detail> data) =
      _$_GetVerifyCode;

  Either<ExtendedErrors, Detail> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GetVerifyCodeCopyWith<_$_GetVerifyCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotChangeEmailCopyWith<$Res> {
  factory _$$_GotChangeEmailCopyWith(
          _$_GotChangeEmail value, $Res Function(_$_GotChangeEmail) then) =
      __$$_GotChangeEmailCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, ProfileInfo> data});
}

/// @nodoc
class __$$_GotChangeEmailCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res>
    implements _$$_GotChangeEmailCopyWith<$Res> {
  __$$_GotChangeEmailCopyWithImpl(
      _$_GotChangeEmail _value, $Res Function(_$_GotChangeEmail) _then)
      : super(_value, (v) => _then(v as _$_GotChangeEmail));

  @override
  _$_GotChangeEmail get _value => super._value as _$_GotChangeEmail;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GotChangeEmail(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, ProfileInfo>,
    ));
  }
}

/// @nodoc

class _$_GotChangeEmail implements _GotChangeEmail {
  const _$_GotChangeEmail(this.data);

  @override
  final Either<ExtendedErrors, ProfileInfo> data;

  @override
  String toString() {
    return 'UpdateProfileState.gotChangeEmail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotChangeEmail &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GotChangeEmailCopyWith<_$_GotChangeEmail> get copyWith =>
      __$$_GotChangeEmailCopyWithImpl<_$_GotChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotChangePassword,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        getVerifyCode,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeEmail,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeProfile,
  }) {
    return gotChangeEmail(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
  }) {
    return gotChangeEmail?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
    required TResult orElse(),
  }) {
    if (gotChangeEmail != null) {
      return gotChangeEmail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotChangePassword value) gotChangePassword,
    required TResult Function(_GetVerifyCode value) getVerifyCode,
    required TResult Function(_GotChangeEmail value) gotChangeEmail,
    required TResult Function(_GotChangeProfile value) gotChangeProfile,
  }) {
    return gotChangeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
  }) {
    return gotChangeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
    required TResult orElse(),
  }) {
    if (gotChangeEmail != null) {
      return gotChangeEmail(this);
    }
    return orElse();
  }
}

abstract class _GotChangeEmail implements UpdateProfileState {
  const factory _GotChangeEmail(
      final Either<ExtendedErrors, ProfileInfo> data) = _$_GotChangeEmail;

  Either<ExtendedErrors, ProfileInfo> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GotChangeEmailCopyWith<_$_GotChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GotChangeProfileCopyWith<$Res> {
  factory _$$_GotChangeProfileCopyWith(
          _$_GotChangeProfile value, $Res Function(_$_GotChangeProfile) then) =
      __$$_GotChangeProfileCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, ProfileInfo> data});
}

/// @nodoc
class __$$_GotChangeProfileCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res>
    implements _$$_GotChangeProfileCopyWith<$Res> {
  __$$_GotChangeProfileCopyWithImpl(
      _$_GotChangeProfile _value, $Res Function(_$_GotChangeProfile) _then)
      : super(_value, (v) => _then(v as _$_GotChangeProfile));

  @override
  _$_GotChangeProfile get _value => super._value as _$_GotChangeProfile;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GotChangeProfile(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, ProfileInfo>,
    ));
  }
}

/// @nodoc

class _$_GotChangeProfile implements _GotChangeProfile {
  const _$_GotChangeProfile(this.data);

  @override
  final Either<ExtendedErrors, ProfileInfo> data;

  @override
  String toString() {
    return 'UpdateProfileState.gotChangeProfile(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotChangeProfile &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GotChangeProfileCopyWith<_$_GotChangeProfile> get copyWith =>
      __$$_GotChangeProfileCopyWithImpl<_$_GotChangeProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        gotChangePassword,
    required TResult Function(Either<ExtendedErrors, Detail> data)
        getVerifyCode,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeEmail,
    required TResult Function(Either<ExtendedErrors, ProfileInfo> data)
        gotChangeProfile,
  }) {
    return gotChangeProfile(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
  }) {
    return gotChangeProfile?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, Detail> data)? gotChangePassword,
    TResult Function(Either<ExtendedErrors, Detail> data)? getVerifyCode,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)? gotChangeEmail,
    TResult Function(Either<ExtendedErrors, ProfileInfo> data)?
        gotChangeProfile,
    required TResult orElse(),
  }) {
    if (gotChangeProfile != null) {
      return gotChangeProfile(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GotChangePassword value) gotChangePassword,
    required TResult Function(_GetVerifyCode value) getVerifyCode,
    required TResult Function(_GotChangeEmail value) gotChangeEmail,
    required TResult Function(_GotChangeProfile value) gotChangeProfile,
  }) {
    return gotChangeProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
  }) {
    return gotChangeProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GotChangePassword value)? gotChangePassword,
    TResult Function(_GetVerifyCode value)? getVerifyCode,
    TResult Function(_GotChangeEmail value)? gotChangeEmail,
    TResult Function(_GotChangeProfile value)? gotChangeProfile,
    required TResult orElse(),
  }) {
    if (gotChangeProfile != null) {
      return gotChangeProfile(this);
    }
    return orElse();
  }
}

abstract class _GotChangeProfile implements UpdateProfileState {
  const factory _GotChangeProfile(
      final Either<ExtendedErrors, ProfileInfo> data) = _$_GotChangeProfile;

  Either<ExtendedErrors, ProfileInfo> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_GotChangeProfileCopyWith<_$_GotChangeProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
