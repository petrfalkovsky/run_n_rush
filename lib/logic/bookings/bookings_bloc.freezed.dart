// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

// part of 'bookings_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

// /// @nodoc
// mixin _$BookingsEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String date) getCheckReserved,
//     required TResult Function(ReservationBody body) getPayment,
//     required TResult Function(String id, ReservationPatchBody body)
//         getPaymentPatch,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function(String date)? getCheckReserved,
//     TResult Function(ReservationBody body)? getPayment,
//     TResult Function(String id, ReservationPatchBody body)? getPaymentPatch,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String date)? getCheckReserved,
//     TResult Function(ReservationBody body)? getPayment,
//     TResult Function(String id, ReservationPatchBody body)? getPaymentPatch,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetCheckReserved value) getCheckReserved,
//     required TResult Function(_GetPayment value) getPayment,
//     required TResult Function(_GetPaymentPatch value) getPaymentPatch,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_GetCheckReserved value)? getCheckReserved,
//     TResult Function(_GetPayment value)? getPayment,
//     TResult Function(_GetPaymentPatch value)? getPaymentPatch,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetCheckReserved value)? getCheckReserved,
//     TResult Function(_GetPayment value)? getPayment,
//     TResult Function(_GetPaymentPatch value)? getPaymentPatch,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $BookingsEventCopyWith<$Res> {
//   factory $BookingsEventCopyWith(
//           BookingsEvent value, $Res Function(BookingsEvent) then) =
//       _$BookingsEventCopyWithImpl<$Res>;
// }

// /// @nodoc
// class _$BookingsEventCopyWithImpl<$Res>
//     implements $BookingsEventCopyWith<$Res> {
//   _$BookingsEventCopyWithImpl(this._value, this._then);

//   final BookingsEvent _value;
//   // ignore: unused_field
//   final $Res Function(BookingsEvent) _then;
// }

// /// @nodoc
// abstract class _$$_GetCheckReservedCopyWith<$Res> {
//   factory _$$_GetCheckReservedCopyWith(
//           _$_GetCheckReserved value, $Res Function(_$_GetCheckReserved) then) =
//       __$$_GetCheckReservedCopyWithImpl<$Res>;
//   $Res call({String date});
// }

// /// @nodoc
// class __$$_GetCheckReservedCopyWithImpl<$Res>
//     extends _$BookingsEventCopyWithImpl<$Res>
//     implements _$$_GetCheckReservedCopyWith<$Res> {
//   __$$_GetCheckReservedCopyWithImpl(
//       _$_GetCheckReserved _value, $Res Function(_$_GetCheckReserved) _then)
//       : super(_value, (v) => _then(v as _$_GetCheckReserved));

//   @override
//   _$_GetCheckReserved get _value => super._value as _$_GetCheckReserved;

//   @override
//   $Res call({
//     Object? date = freezed,
//   }) {
//     return _then(_$_GetCheckReserved(
//       date: date == freezed
//           ? _value.date
//           : date // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$_GetCheckReserved implements _GetCheckReserved {
//   const _$_GetCheckReserved({required this.date});

//   @override
//   final String date;

//   @override
//   String toString() {
//     return 'BookingsEvent.getCheckReserved(date: $date)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_GetCheckReserved &&
//             const DeepCollectionEquality().equals(other.date, date));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

//   @JsonKey(ignore: true)
//   @override
//   _$$_GetCheckReservedCopyWith<_$_GetCheckReserved> get copyWith =>
//       __$$_GetCheckReservedCopyWithImpl<_$_GetCheckReserved>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String date) getCheckReserved,
//     required TResult Function(ReservationBody body) getPayment,
//     required TResult Function(String id, ReservationPatchBody body)
//         getPaymentPatch,
//   }) {
//     return getCheckReserved(date);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function(String date)? getCheckReserved,
//     TResult Function(ReservationBody body)? getPayment,
//     TResult Function(String id, ReservationPatchBody body)? getPaymentPatch,
//   }) {
//     return getCheckReserved?.call(date);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String date)? getCheckReserved,
//     TResult Function(ReservationBody body)? getPayment,
//     TResult Function(String id, ReservationPatchBody body)? getPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (getCheckReserved != null) {
//       return getCheckReserved(date);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetCheckReserved value) getCheckReserved,
//     required TResult Function(_GetPayment value) getPayment,
//     required TResult Function(_GetPaymentPatch value) getPaymentPatch,
//   }) {
//     return getCheckReserved(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_GetCheckReserved value)? getCheckReserved,
//     TResult Function(_GetPayment value)? getPayment,
//     TResult Function(_GetPaymentPatch value)? getPaymentPatch,
//   }) {
//     return getCheckReserved?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetCheckReserved value)? getCheckReserved,
//     TResult Function(_GetPayment value)? getPayment,
//     TResult Function(_GetPaymentPatch value)? getPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (getCheckReserved != null) {
//       return getCheckReserved(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetCheckReserved implements BookingsEvent {
//   const factory _GetCheckReserved({required final String date}) =
//       _$_GetCheckReserved;

//   String get date => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   _$$_GetCheckReservedCopyWith<_$_GetCheckReserved> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$_GetPaymentCopyWith<$Res> {
//   factory _$$_GetPaymentCopyWith(
//           _$_GetPayment value, $Res Function(_$_GetPayment) then) =
//       __$$_GetPaymentCopyWithImpl<$Res>;
//   $Res call({ReservationBody body});
// }

// /// @nodoc
// class __$$_GetPaymentCopyWithImpl<$Res>
//     extends _$BookingsEventCopyWithImpl<$Res>
//     implements _$$_GetPaymentCopyWith<$Res> {
//   __$$_GetPaymentCopyWithImpl(
//       _$_GetPayment _value, $Res Function(_$_GetPayment) _then)
//       : super(_value, (v) => _then(v as _$_GetPayment));

//   @override
//   _$_GetPayment get _value => super._value as _$_GetPayment;

//   @override
//   $Res call({
//     Object? body = freezed,
//   }) {
//     return _then(_$_GetPayment(
//       body: body == freezed
//           ? _value.body
//           : body // ignore: cast_nullable_to_non_nullable
//               as ReservationBody,
//     ));
//   }
// }

// /// @nodoc

// class _$_GetPayment implements _GetPayment {
//   const _$_GetPayment({required this.body});

//   @override
//   final ReservationBody body;

//   @override
//   String toString() {
//     return 'BookingsEvent.getPayment(body: $body)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_GetPayment &&
//             const DeepCollectionEquality().equals(other.body, body));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

//   @JsonKey(ignore: true)
//   @override
//   _$$_GetPaymentCopyWith<_$_GetPayment> get copyWith =>
//       __$$_GetPaymentCopyWithImpl<_$_GetPayment>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String date) getCheckReserved,
//     required TResult Function(ReservationBody body) getPayment,
//     required TResult Function(String id, ReservationPatchBody body)
//         getPaymentPatch,
//   }) {
//     return getPayment(body);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function(String date)? getCheckReserved,
//     TResult Function(ReservationBody body)? getPayment,
//     TResult Function(String id, ReservationPatchBody body)? getPaymentPatch,
//   }) {
//     return getPayment?.call(body);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String date)? getCheckReserved,
//     TResult Function(ReservationBody body)? getPayment,
//     TResult Function(String id, ReservationPatchBody body)? getPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (getPayment != null) {
//       return getPayment(body);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetCheckReserved value) getCheckReserved,
//     required TResult Function(_GetPayment value) getPayment,
//     required TResult Function(_GetPaymentPatch value) getPaymentPatch,
//   }) {
//     return getPayment(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_GetCheckReserved value)? getCheckReserved,
//     TResult Function(_GetPayment value)? getPayment,
//     TResult Function(_GetPaymentPatch value)? getPaymentPatch,
//   }) {
//     return getPayment?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetCheckReserved value)? getCheckReserved,
//     TResult Function(_GetPayment value)? getPayment,
//     TResult Function(_GetPaymentPatch value)? getPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (getPayment != null) {
//       return getPayment(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetPayment implements BookingsEvent {
//   const factory _GetPayment({required final ReservationBody body}) =
//       _$_GetPayment;

//   ReservationBody get body => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   _$$_GetPaymentCopyWith<_$_GetPayment> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$_GetPaymentPatchCopyWith<$Res> {
//   factory _$$_GetPaymentPatchCopyWith(
//           _$_GetPaymentPatch value, $Res Function(_$_GetPaymentPatch) then) =
//       __$$_GetPaymentPatchCopyWithImpl<$Res>;
//   $Res call({String id, ReservationPatchBody body});
// }

// /// @nodoc
// class __$$_GetPaymentPatchCopyWithImpl<$Res>
//     extends _$BookingsEventCopyWithImpl<$Res>
//     implements _$$_GetPaymentPatchCopyWith<$Res> {
//   __$$_GetPaymentPatchCopyWithImpl(
//       _$_GetPaymentPatch _value, $Res Function(_$_GetPaymentPatch) _then)
//       : super(_value, (v) => _then(v as _$_GetPaymentPatch));

//   @override
//   _$_GetPaymentPatch get _value => super._value as _$_GetPaymentPatch;

//   @override
//   $Res call({
//     Object? id = freezed,
//     Object? body = freezed,
//   }) {
//     return _then(_$_GetPaymentPatch(
//       id: id == freezed
//           ? _value.id
//           : id // ignore: cast_nullable_to_non_nullable
//               as String,
//       body: body == freezed
//           ? _value.body
//           : body // ignore: cast_nullable_to_non_nullable
//               as ReservationPatchBody,
//     ));
//   }
// }

// /// @nodoc

// class _$_GetPaymentPatch implements _GetPaymentPatch {
//   const _$_GetPaymentPatch({required this.id, required this.body});

//   @override
//   final String id;
//   @override
//   final ReservationPatchBody body;

//   @override
//   String toString() {
//     return 'BookingsEvent.getPaymentPatch(id: $id, body: $body)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_GetPaymentPatch &&
//             const DeepCollectionEquality().equals(other.id, id) &&
//             const DeepCollectionEquality().equals(other.body, body));
//   }

//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(id),
//       const DeepCollectionEquality().hash(body));

//   @JsonKey(ignore: true)
//   @override
//   _$$_GetPaymentPatchCopyWith<_$_GetPaymentPatch> get copyWith =>
//       __$$_GetPaymentPatchCopyWithImpl<_$_GetPaymentPatch>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String date) getCheckReserved,
//     required TResult Function(ReservationBody body) getPayment,
//     required TResult Function(String id, ReservationPatchBody body)
//         getPaymentPatch,
//   }) {
//     return getPaymentPatch(id, body);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function(String date)? getCheckReserved,
//     TResult Function(ReservationBody body)? getPayment,
//     TResult Function(String id, ReservationPatchBody body)? getPaymentPatch,
//   }) {
//     return getPaymentPatch?.call(id, body);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String date)? getCheckReserved,
//     TResult Function(ReservationBody body)? getPayment,
//     TResult Function(String id, ReservationPatchBody body)? getPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (getPaymentPatch != null) {
//       return getPaymentPatch(id, body);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetCheckReserved value) getCheckReserved,
//     required TResult Function(_GetPayment value) getPayment,
//     required TResult Function(_GetPaymentPatch value) getPaymentPatch,
//   }) {
//     return getPaymentPatch(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_GetCheckReserved value)? getCheckReserved,
//     TResult Function(_GetPayment value)? getPayment,
//     TResult Function(_GetPaymentPatch value)? getPaymentPatch,
//   }) {
//     return getPaymentPatch?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetCheckReserved value)? getCheckReserved,
//     TResult Function(_GetPayment value)? getPayment,
//     TResult Function(_GetPaymentPatch value)? getPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (getPaymentPatch != null) {
//       return getPaymentPatch(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetPaymentPatch implements BookingsEvent {
//   const factory _GetPaymentPatch(
//       {required final String id,
//       required final ReservationPatchBody body}) = _$_GetPaymentPatch;

//   String get id => throw _privateConstructorUsedError;
//   ReservationPatchBody get body => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   _$$_GetPaymentPatchCopyWith<_$_GetPaymentPatch> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$BookingsState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)
//         allCheckReserved,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPayment,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPaymentPatch,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_AllCheckReserved value) allCheckReserved,
//     required TResult Function(_GotPayment value) gotPayment,
//     required TResult Function(_GotPaymentPatch value) gotPaymentPatch,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $BookingsStateCopyWith<$Res> {
//   factory $BookingsStateCopyWith(
//           BookingsState value, $Res Function(BookingsState) then) =
//       _$BookingsStateCopyWithImpl<$Res>;
// }

// /// @nodoc
// class _$BookingsStateCopyWithImpl<$Res>
//     implements $BookingsStateCopyWith<$Res> {
//   _$BookingsStateCopyWithImpl(this._value, this._then);

//   final BookingsState _value;
//   // ignore: unused_field
//   final $Res Function(BookingsState) _then;
// }

// /// @nodoc
// abstract class _$$_InitialCopyWith<$Res> {
//   factory _$$_InitialCopyWith(
//           _$_Initial value, $Res Function(_$_Initial) then) =
//       __$$_InitialCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_InitialCopyWithImpl<$Res> extends _$BookingsStateCopyWithImpl<$Res>
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
//     return 'BookingsState.initial()';
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
//     required TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)
//         allCheckReserved,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPayment,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPaymentPatch,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
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
//     required TResult Function(_AllCheckReserved value) allCheckReserved,
//     required TResult Function(_GotPayment value) gotPayment,
//     required TResult Function(_GotPaymentPatch value) gotPaymentPatch,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements BookingsState {
//   const factory _Initial() = _$_Initial;
// }

// /// @nodoc
// abstract class _$$_LoadingCopyWith<$Res> {
//   factory _$$_LoadingCopyWith(
//           _$_Loading value, $Res Function(_$_Loading) then) =
//       __$$_LoadingCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$_LoadingCopyWithImpl<$Res> extends _$BookingsStateCopyWithImpl<$Res>
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
//     return 'BookingsState.loading()';
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
//     required TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)
//         allCheckReserved,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPayment,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPaymentPatch,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
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
//     required TResult Function(_AllCheckReserved value) allCheckReserved,
//     required TResult Function(_GotPayment value) gotPayment,
//     required TResult Function(_GotPaymentPatch value) gotPaymentPatch,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements BookingsState {
//   const factory _Loading() = _$_Loading;
// }

// /// @nodoc
// abstract class _$$_AllCheckReservedCopyWith<$Res> {
//   factory _$$_AllCheckReservedCopyWith(
//           _$_AllCheckReserved value, $Res Function(_$_AllCheckReserved) then) =
//       __$$_AllCheckReservedCopyWithImpl<$Res>;
//   $Res call({Either<ExtendedErrors, List<CheckReserved>> data});
// }

// /// @nodoc
// class __$$_AllCheckReservedCopyWithImpl<$Res>
//     extends _$BookingsStateCopyWithImpl<$Res>
//     implements _$$_AllCheckReservedCopyWith<$Res> {
//   __$$_AllCheckReservedCopyWithImpl(
//       _$_AllCheckReserved _value, $Res Function(_$_AllCheckReserved) _then)
//       : super(_value, (v) => _then(v as _$_AllCheckReserved));

//   @override
//   _$_AllCheckReserved get _value => super._value as _$_AllCheckReserved;

//   @override
//   $Res call({
//     Object? data = freezed,
//   }) {
//     return _then(_$_AllCheckReserved(
//       data == freezed
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as Either<ExtendedErrors, List<CheckReserved>>,
//     ));
//   }
// }

// /// @nodoc

// class _$_AllCheckReserved implements _AllCheckReserved {
//   const _$_AllCheckReserved(this.data);

//   @override
//   final Either<ExtendedErrors, List<CheckReserved>> data;

//   @override
//   String toString() {
//     return 'BookingsState.allCheckReserved(data: $data)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_AllCheckReserved &&
//             const DeepCollectionEquality().equals(other.data, data));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

//   @JsonKey(ignore: true)
//   @override
//   _$$_AllCheckReservedCopyWith<_$_AllCheckReserved> get copyWith =>
//       __$$_AllCheckReservedCopyWithImpl<_$_AllCheckReserved>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)
//         allCheckReserved,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPayment,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPaymentPatch,
//   }) {
//     return allCheckReserved(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//   }) {
//     return allCheckReserved?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (allCheckReserved != null) {
//       return allCheckReserved(data);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_AllCheckReserved value) allCheckReserved,
//     required TResult Function(_GotPayment value) gotPayment,
//     required TResult Function(_GotPaymentPatch value) gotPaymentPatch,
//   }) {
//     return allCheckReserved(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//   }) {
//     return allCheckReserved?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (allCheckReserved != null) {
//       return allCheckReserved(this);
//     }
//     return orElse();
//   }
// }

// abstract class _AllCheckReserved implements BookingsState {
//   const factory _AllCheckReserved(
//           final Either<ExtendedErrors, List<CheckReserved>> data) =
//       _$_AllCheckReserved;

//   Either<ExtendedErrors, List<CheckReserved>> get data =>
//       throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   _$$_AllCheckReservedCopyWith<_$_AllCheckReserved> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$_GotPaymentCopyWith<$Res> {
//   factory _$$_GotPaymentCopyWith(
//           _$_GotPayment value, $Res Function(_$_GotPayment) then) =
//       __$$_GotPaymentCopyWithImpl<$Res>;
//   $Res call({Either<ExtendedErrors, PostBookings> data});
// }

// /// @nodoc
// class __$$_GotPaymentCopyWithImpl<$Res>
//     extends _$BookingsStateCopyWithImpl<$Res>
//     implements _$$_GotPaymentCopyWith<$Res> {
//   __$$_GotPaymentCopyWithImpl(
//       _$_GotPayment _value, $Res Function(_$_GotPayment) _then)
//       : super(_value, (v) => _then(v as _$_GotPayment));

//   @override
//   _$_GotPayment get _value => super._value as _$_GotPayment;

//   @override
//   $Res call({
//     Object? data = freezed,
//   }) {
//     return _then(_$_GotPayment(
//       data == freezed
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as Either<ExtendedErrors, PostBookings>,
//     ));
//   }
// }

// /// @nodoc

// class _$_GotPayment implements _GotPayment {
//   const _$_GotPayment(this.data);

//   @override
//   final Either<ExtendedErrors, PostBookings> data;

//   @override
//   String toString() {
//     return 'BookingsState.gotPayment(data: $data)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_GotPayment &&
//             const DeepCollectionEquality().equals(other.data, data));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

//   @JsonKey(ignore: true)
//   @override
//   _$$_GotPaymentCopyWith<_$_GotPayment> get copyWith =>
//       __$$_GotPaymentCopyWithImpl<_$_GotPayment>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)
//         allCheckReserved,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPayment,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPaymentPatch,
//   }) {
//     return gotPayment(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//   }) {
//     return gotPayment?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (gotPayment != null) {
//       return gotPayment(data);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_AllCheckReserved value) allCheckReserved,
//     required TResult Function(_GotPayment value) gotPayment,
//     required TResult Function(_GotPaymentPatch value) gotPaymentPatch,
//   }) {
//     return gotPayment(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//   }) {
//     return gotPayment?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (gotPayment != null) {
//       return gotPayment(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GotPayment implements BookingsState {
//   const factory _GotPayment(final Either<ExtendedErrors, PostBookings> data) =
//       _$_GotPayment;

//   Either<ExtendedErrors, PostBookings> get data =>
//       throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   _$$_GotPaymentCopyWith<_$_GotPayment> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$_GotPaymentPatchCopyWith<$Res> {
//   factory _$$_GotPaymentPatchCopyWith(
//           _$_GotPaymentPatch value, $Res Function(_$_GotPaymentPatch) then) =
//       __$$_GotPaymentPatchCopyWithImpl<$Res>;
//   $Res call({Either<ExtendedErrors, PostBookings> data});
// }

// /// @nodoc
// class __$$_GotPaymentPatchCopyWithImpl<$Res>
//     extends _$BookingsStateCopyWithImpl<$Res>
//     implements _$$_GotPaymentPatchCopyWith<$Res> {
//   __$$_GotPaymentPatchCopyWithImpl(
//       _$_GotPaymentPatch _value, $Res Function(_$_GotPaymentPatch) _then)
//       : super(_value, (v) => _then(v as _$_GotPaymentPatch));

//   @override
//   _$_GotPaymentPatch get _value => super._value as _$_GotPaymentPatch;

//   @override
//   $Res call({
//     Object? data = freezed,
//   }) {
//     return _then(_$_GotPaymentPatch(
//       data == freezed
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as Either<ExtendedErrors, PostBookings>,
//     ));
//   }
// }

// /// @nodoc

// class _$_GotPaymentPatch implements _GotPaymentPatch {
//   const _$_GotPaymentPatch(this.data);

//   @override
//   final Either<ExtendedErrors, PostBookings> data;

//   @override
//   String toString() {
//     return 'BookingsState.gotPaymentPatch(data: $data)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_GotPaymentPatch &&
//             const DeepCollectionEquality().equals(other.data, data));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

//   @JsonKey(ignore: true)
//   @override
//   _$$_GotPaymentPatchCopyWith<_$_GotPaymentPatch> get copyWith =>
//       __$$_GotPaymentPatchCopyWithImpl<_$_GotPaymentPatch>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)
//         allCheckReserved,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPayment,
//     required TResult Function(Either<ExtendedErrors, PostBookings> data)
//         gotPaymentPatch,
//   }) {
//     return gotPaymentPatch(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//   }) {
//     return gotPaymentPatch?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(Either<ExtendedErrors, List<CheckReserved>> data)?
//         allCheckReserved,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)? gotPayment,
//     TResult Function(Either<ExtendedErrors, PostBookings> data)?
//         gotPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (gotPaymentPatch != null) {
//       return gotPaymentPatch(data);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_AllCheckReserved value) allCheckReserved,
//     required TResult Function(_GotPayment value) gotPayment,
//     required TResult Function(_GotPaymentPatch value) gotPaymentPatch,
//   }) {
//     return gotPaymentPatch(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//   }) {
//     return gotPaymentPatch?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_AllCheckReserved value)? allCheckReserved,
//     TResult Function(_GotPayment value)? gotPayment,
//     TResult Function(_GotPaymentPatch value)? gotPaymentPatch,
//     required TResult orElse(),
//   }) {
//     if (gotPaymentPatch != null) {
//       return gotPaymentPatch(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GotPaymentPatch implements BookingsState {
//   const factory _GotPaymentPatch(
//       final Either<ExtendedErrors, PostBookings> data) = _$_GotPaymentPatch;

//   Either<ExtendedErrors, PostBookings> get data =>
//       throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   _$$_GotPaymentPatchCopyWith<_$_GotPaymentPatch> get copyWith =>
//       throw _privateConstructorUsedError;
// }
