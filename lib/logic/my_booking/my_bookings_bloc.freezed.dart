// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_bookings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyBookingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReservations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getReservations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReservations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReservations value) getReservations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetReservations value)? getReservations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReservations value)? getReservations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBookingsEventCopyWith<$Res> {
  factory $MyBookingsEventCopyWith(
          MyBookingsEvent value, $Res Function(MyBookingsEvent) then) =
      _$MyBookingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyBookingsEventCopyWithImpl<$Res>
    implements $MyBookingsEventCopyWith<$Res> {
  _$MyBookingsEventCopyWithImpl(this._value, this._then);

  final MyBookingsEvent _value;
  // ignore: unused_field
  final $Res Function(MyBookingsEvent) _then;
}

/// @nodoc
abstract class _$$_GetReservationsCopyWith<$Res> {
  factory _$$_GetReservationsCopyWith(
          _$_GetReservations value, $Res Function(_$_GetReservations) then) =
      __$$_GetReservationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetReservationsCopyWithImpl<$Res>
    extends _$MyBookingsEventCopyWithImpl<$Res>
    implements _$$_GetReservationsCopyWith<$Res> {
  __$$_GetReservationsCopyWithImpl(
      _$_GetReservations _value, $Res Function(_$_GetReservations) _then)
      : super(_value, (v) => _then(v as _$_GetReservations));

  @override
  _$_GetReservations get _value => super._value as _$_GetReservations;
}

/// @nodoc

class _$_GetReservations
    with DiagnosticableTreeMixin
    implements _GetReservations {
  const _$_GetReservations();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyBookingsEvent.getReservations()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'MyBookingsEvent.getReservations'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetReservations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReservations,
  }) {
    return getReservations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getReservations,
  }) {
    return getReservations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReservations,
    required TResult orElse(),
  }) {
    if (getReservations != null) {
      return getReservations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReservations value) getReservations,
  }) {
    return getReservations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetReservations value)? getReservations,
  }) {
    return getReservations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReservations value)? getReservations,
    required TResult orElse(),
  }) {
    if (getReservations != null) {
      return getReservations(this);
    }
    return orElse();
  }
}

abstract class _GetReservations implements MyBookingsEvent {
  const factory _GetReservations() = _$_GetReservations;
}

/// @nodoc
mixin _$MyBookingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)
        allReservations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)?
        allReservations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)?
        allReservations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AllReservations value) allReservations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReservations value)? allReservations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReservations value)? allReservations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBookingsStateCopyWith<$Res> {
  factory $MyBookingsStateCopyWith(
          MyBookingsState value, $Res Function(MyBookingsState) then) =
      _$MyBookingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyBookingsStateCopyWithImpl<$Res>
    implements $MyBookingsStateCopyWith<$Res> {
  _$MyBookingsStateCopyWithImpl(this._value, this._then);

  final MyBookingsState _value;
  // ignore: unused_field
  final $Res Function(MyBookingsState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$MyBookingsStateCopyWithImpl<$Res>
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
    return 'MyBookingsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MyBookingsState.initial'));
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
    required TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)
        allReservations,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)?
        allReservations,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)?
        allReservations,
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
    required TResult Function(_AllReservations value) allReservations,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReservations value)? allReservations,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReservations value)? allReservations,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyBookingsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$MyBookingsStateCopyWithImpl<$Res>
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
    return 'MyBookingsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MyBookingsState.loading'));
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
    required TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)
        allReservations,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)?
        allReservations,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)?
        allReservations,
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
    required TResult Function(_AllReservations value) allReservations,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReservations value)? allReservations,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReservations value)? allReservations,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MyBookingsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_AllReservationsCopyWith<$Res> {
  factory _$$_AllReservationsCopyWith(
          _$_AllReservations value, $Res Function(_$_AllReservations) then) =
      __$$_AllReservationsCopyWithImpl<$Res>;
  $Res call({Either<ExtendedErrors, List<BookingEntity>> data});
}

/// @nodoc
class __$$_AllReservationsCopyWithImpl<$Res>
    extends _$MyBookingsStateCopyWithImpl<$Res>
    implements _$$_AllReservationsCopyWith<$Res> {
  __$$_AllReservationsCopyWithImpl(
      _$_AllReservations _value, $Res Function(_$_AllReservations) _then)
      : super(_value, (v) => _then(v as _$_AllReservations));

  @override
  _$_AllReservations get _value => super._value as _$_AllReservations;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_AllReservations(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ExtendedErrors, List<BookingEntity>>,
    ));
  }
}

/// @nodoc

class _$_AllReservations
    with DiagnosticableTreeMixin
    implements _AllReservations {
  const _$_AllReservations(this.data);

  @override
  final Either<ExtendedErrors, List<BookingEntity>> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyBookingsState.allReservations(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyBookingsState.allReservations'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllReservations &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_AllReservationsCopyWith<_$_AllReservations> get copyWith =>
      __$$_AllReservationsCopyWithImpl<_$_AllReservations>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)
        allReservations,
  }) {
    return allReservations(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)?
        allReservations,
  }) {
    return allReservations?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Either<ExtendedErrors, List<BookingEntity>> data)?
        allReservations,
    required TResult orElse(),
  }) {
    if (allReservations != null) {
      return allReservations(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AllReservations value) allReservations,
  }) {
    return allReservations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReservations value)? allReservations,
  }) {
    return allReservations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReservations value)? allReservations,
    required TResult orElse(),
  }) {
    if (allReservations != null) {
      return allReservations(this);
    }
    return orElse();
  }
}

abstract class _AllReservations implements MyBookingsState {
  const factory _AllReservations(
          final Either<ExtendedErrors, List<BookingEntity>> data) =
      _$_AllReservations;

  Either<ExtendedErrors, List<BookingEntity>> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AllReservationsCopyWith<_$_AllReservations> get copyWith =>
      throw _privateConstructorUsedError;
}
