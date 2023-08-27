// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

// part of 'qr_code_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

// /// @nodoc
// mixin _$QRCodeEvent {
//   OpenLockBody get body => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(OpenLockBody body) getOpenLock,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function(OpenLockBody body)? getOpenLock,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(OpenLockBody body)? getOpenLock,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetQRCode value) getOpenLock,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_GetQRCode value)? getOpenLock,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetQRCode value)? getOpenLock,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;

//   @JsonKey(ignore: true)
//   $QRCodeEventCopyWith<QRCodeEvent> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $QRCodeEventCopyWith<$Res> {
//   factory $QRCodeEventCopyWith(
//           QRCodeEvent value, $Res Function(QRCodeEvent) then) =
//       _$QRCodeEventCopyWithImpl<$Res>;
//   $Res call({OpenLockBody body});
// }

// /// @nodoc
// class _$QRCodeEventCopyWithImpl<$Res> implements $QRCodeEventCopyWith<$Res> {
//   _$QRCodeEventCopyWithImpl(this._value, this._then);

//   final QRCodeEvent _value;
//   // ignore: unused_field
//   final $Res Function(QRCodeEvent) _then;

//   @override
//   $Res call({
//     Object? body = freezed,
//   }) {
//     return _then(_value.copyWith(
//       body: body == freezed
//           ? _value.body
//           : body // ignore: cast_nullable_to_non_nullable
//               as OpenLockBody,
//     ));
//   }
// }

// /// @nodoc
// abstract class _$$_GetQRCodeCopyWith<$Res>
//     implements $QRCodeEventCopyWith<$Res> {
//   factory _$$_GetQRCodeCopyWith(
//           _$_GetQRCode value, $Res Function(_$_GetQRCode) then) =
//       __$$_GetQRCodeCopyWithImpl<$Res>;
//   @override
//   $Res call({OpenLockBody body});
// }

// /// @nodoc
// class __$$_GetQRCodeCopyWithImpl<$Res> extends _$QRCodeEventCopyWithImpl<$Res>
//     implements _$$_GetQRCodeCopyWith<$Res> {
//   __$$_GetQRCodeCopyWithImpl(
//       _$_GetQRCode _value, $Res Function(_$_GetQRCode) _then)
//       : super(_value, (v) => _then(v as _$_GetQRCode));

//   @override
//   _$_GetQRCode get _value => super._value as _$_GetQRCode;

//   @override
//   $Res call({
//     Object? body = freezed,
//   }) {
//     return _then(_$_GetQRCode(
//       body: body == freezed
//           ? _value.body
//           : body // ignore: cast_nullable_to_non_nullable
//               as OpenLockBody,
//     ));
//   }
// }

// /// @nodoc

// class _$_GetQRCode implements _GetQRCode {
//   const _$_GetQRCode({required this.body});

//   @override
//   final OpenLockBody body;

//   @override
//   String toString() {
//     return 'QRCodeEvent.getOpenLock(body: $body)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_GetQRCode &&
//             const DeepCollectionEquality().equals(other.body, body));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

//   @JsonKey(ignore: true)
//   @override
//   _$$_GetQRCodeCopyWith<_$_GetQRCode> get copyWith =>
//       __$$_GetQRCodeCopyWithImpl<_$_GetQRCode>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(OpenLockBody body) getOpenLock,
//   }) {
//     return getOpenLock(body);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function(OpenLockBody body)? getOpenLock,
//   }) {
//     return getOpenLock?.call(body);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(OpenLockBody body)? getOpenLock,
//     required TResult orElse(),
//   }) {
//     if (getOpenLock != null) {
//       return getOpenLock(body);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetQRCode value) getOpenLock,
//   }) {
//     return getOpenLock(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_GetQRCode value)? getOpenLock,
//   }) {
//     return getOpenLock?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetQRCode value)? getOpenLock,
//     required TResult orElse(),
//   }) {
//     if (getOpenLock != null) {
//       return getOpenLock(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetQRCode implements QRCodeEvent {
//   const factory _GetQRCode({required final OpenLockBody body}) = _$_GetQRCode;

//   @override
//   OpenLockBody get body => throw _privateConstructorUsedError;
//   @override
//   @JsonKey(ignore: true)
//   _$$_GetQRCodeCopyWith<_$_GetQRCode> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$QRCodeState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(Either<ExtendedErrors, QRCode> data) gotQRCode,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, QRCode> data)? gotQRCode,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, QRCode> data)? gotQRCode,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GotQRCode value) gotQRCode,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GotQRCode value)? gotQRCode,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GotQRCode value)? gotQRCode,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $QRCodeStateCopyWith<$Res> {
//   factory $QRCodeStateCopyWith(
//           QRCodeState value, $Res Function(QRCodeState) then) =
//       _$QRCodeStateCopyWithImpl<$Res>;
// }

// /// @nodoc
// class _$QRCodeStateCopyWithImpl<$Res> implements $QRCodeStateCopyWith<$Res> {
//   _$QRCodeStateCopyWithImpl(this._value, this._then);

//   final QRCodeState _value;
//   // ignore: unused_field
//   final $Res Function(QRCodeState) _then;
// }

// /// @nodoc
// abstract class _$$_InitialCopyWith<$Res> {
//   factory _$$_InitialCopyWith(
//           _$_Initial value, $Res Function(_$_Initial) then) =
//       __$$_InitialCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_InitialCopyWithImpl<$Res> extends _$QRCodeStateCopyWithImpl<$Res>
//     implements _$$_InitialCopyWith<$Res> {
//   __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
//       : super(_value, (v) => _then(v as _$_Initial));

//   @override
//   _$_Initial get _value => super._value as _$_Initial;
// }

// /// @nodoc

// class _$_Initial implements _Initial {
//   const _$_Initial();

//   @override
//   String toString() {
//     return 'QRCodeState.initial()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_Initial);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(Either<ExtendedErrors, QRCode> data) gotQRCode,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, QRCode> data)? gotQRCode,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, QRCode> data)? gotQRCode,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GotQRCode value) gotQRCode,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GotQRCode value)? gotQRCode,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GotQRCode value)? gotQRCode,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements QRCodeState {
//   const factory _Initial() = _$_Initial;
// }

// /// @nodoc
// abstract class _$$_LoadingCopyWith<$Res> {
//   factory _$$_LoadingCopyWith(
//           _$_Loading value, $Res Function(_$_Loading) then) =
//       __$$_LoadingCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_LoadingCopyWithImpl<$Res> extends _$QRCodeStateCopyWithImpl<$Res>
//     implements _$$_LoadingCopyWith<$Res> {
//   __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
//       : super(_value, (v) => _then(v as _$_Loading));

//   @override
//   _$_Loading get _value => super._value as _$_Loading;
// }

// /// @nodoc

// class _$_Loading implements _Loading {
//   const _$_Loading();

//   @override
//   String toString() {
//     return 'QRCodeState.loading()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$_Loading);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(Either<ExtendedErrors, QRCode> data) gotQRCode,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, QRCode> data)? gotQRCode,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, QRCode> data)? gotQRCode,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GotQRCode value) gotQRCode,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GotQRCode value)? gotQRCode,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GotQRCode value)? gotQRCode,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements QRCodeState {
//   const factory _Loading() = _$_Loading;
// }

// /// @nodoc
// abstract class _$$_GotQRCodeCopyWith<$Res> {
//   factory _$$_GotQRCodeCopyWith(
//           _$_GotQRCode value, $Res Function(_$_GotQRCode) then) =
//       __$$_GotQRCodeCopyWithImpl<$Res>;
//   $Res call({Either<ExtendedErrors, QRCode> data});
// }

// /// @nodoc
// class __$$_GotQRCodeCopyWithImpl<$Res> extends _$QRCodeStateCopyWithImpl<$Res>
//     implements _$$_GotQRCodeCopyWith<$Res> {
//   __$$_GotQRCodeCopyWithImpl(
//       _$_GotQRCode _value, $Res Function(_$_GotQRCode) _then)
//       : super(_value, (v) => _then(v as _$_GotQRCode));

//   @override
//   _$_GotQRCode get _value => super._value as _$_GotQRCode;

//   @override
//   $Res call({
//     Object? data = freezed,
//   }) {
//     return _then(_$_GotQRCode(
//       data == freezed
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as Either<ExtendedErrors, QRCode>,
//     ));
//   }
// }

// /// @nodoc

// class _$_GotQRCode implements _GotQRCode {
//   const _$_GotQRCode(this.data);

//   @override
//   final Either<ExtendedErrors, QRCode> data;

//   @override
//   String toString() {
//     return 'QRCodeState.gotQRCode(data: $data)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_GotQRCode &&
//             const DeepCollectionEquality().equals(other.data, data));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

//   @JsonKey(ignore: true)
//   @override
//   _$$_GotQRCodeCopyWith<_$_GotQRCode> get copyWith =>
//       __$$_GotQRCodeCopyWithImpl<_$_GotQRCode>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(Either<ExtendedErrors, QRCode> data) gotQRCode,
//   }) {
//     return gotQRCode(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, QRCode> data)? gotQRCode,
//   }) {
//     return gotQRCode?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, QRCode> data)? gotQRCode,
//     required TResult orElse(),
//   }) {
//     if (gotQRCode != null) {
//       return gotQRCode(data);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_GotQRCode value) gotQRCode,
//   }) {
//     return gotQRCode(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GotQRCode value)? gotQRCode,
//   }) {
//     return gotQRCode?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_GotQRCode value)? gotQRCode,
//     required TResult orElse(),
//   }) {
//     if (gotQRCode != null) {
//       return gotQRCode(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GotQRCode implements QRCodeState {
//   const factory _GotQRCode(final Either<ExtendedErrors, QRCode> data) =
//       _$_GotQRCode;

//   Either<ExtendedErrors, QRCode> get data => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   _$$_GotQRCodeCopyWith<_$_GotQRCode> get copyWith =>
//       throw _privateConstructorUsedError;
// }
