// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get bookingDate => throw _privateConstructorUsedError;
  int get indSeat => throw _privateConstructorUsedError;
  int get famSeat => throw _privateConstructorUsedError;
  int get tennisCourtNumber => throw _privateConstructorUsedError;
  List<String>? get durationTime => throw _privateConstructorUsedError;
  String? get paymentTime => throw _privateConstructorUsedError;
  List<VisitLogEntity> get visitLog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingEntityCopyWith<BookingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEntityCopyWith<$Res> {
  factory $BookingEntityCopyWith(
          BookingEntity value, $Res Function(BookingEntity) then) =
      _$BookingEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      Price price,
      bool isActive,
      DateTime bookingDate,
      int indSeat,
      int famSeat,
      int tennisCourtNumber,
      List<String>? durationTime,
      String? paymentTime,
      List<VisitLogEntity> visitLog});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$BookingEntityCopyWithImpl<$Res>
    implements $BookingEntityCopyWith<$Res> {
  _$BookingEntityCopyWithImpl(this._value, this._then);

  final BookingEntity _value;
  // ignore: unused_field
  final $Res Function(BookingEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? isActive = freezed,
    Object? bookingDate = freezed,
    Object? indSeat = freezed,
    Object? famSeat = freezed,
    Object? tennisCourtNumber = freezed,
    Object? durationTime = freezed,
    Object? paymentTime = freezed,
    Object? visitLog = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingDate: bookingDate == freezed
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      indSeat: indSeat == freezed
          ? _value.indSeat
          : indSeat // ignore: cast_nullable_to_non_nullable
              as int,
      famSeat: famSeat == freezed
          ? _value.famSeat
          : famSeat // ignore: cast_nullable_to_non_nullable
              as int,
      tennisCourtNumber: tennisCourtNumber == freezed
          ? _value.tennisCourtNumber
          : tennisCourtNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationTime: durationTime == freezed
          ? _value.durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      paymentTime: paymentTime == freezed
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String?,
      visitLog: visitLog == freezed
          ? _value.visitLog
          : visitLog // ignore: cast_nullable_to_non_nullable
              as List<VisitLogEntity>,
    ));
  }

  @override
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc
abstract class _$$_BookingEntityCopyWith<$Res>
    implements $BookingEntityCopyWith<$Res> {
  factory _$$_BookingEntityCopyWith(
          _$_BookingEntity value, $Res Function(_$_BookingEntity) then) =
      __$$_BookingEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      Price price,
      bool isActive,
      DateTime bookingDate,
      int indSeat,
      int famSeat,
      int tennisCourtNumber,
      List<String>? durationTime,
      String? paymentTime,
      List<VisitLogEntity> visitLog});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$_BookingEntityCopyWithImpl<$Res>
    extends _$BookingEntityCopyWithImpl<$Res>
    implements _$$_BookingEntityCopyWith<$Res> {
  __$$_BookingEntityCopyWithImpl(
      _$_BookingEntity _value, $Res Function(_$_BookingEntity) _then)
      : super(_value, (v) => _then(v as _$_BookingEntity));

  @override
  _$_BookingEntity get _value => super._value as _$_BookingEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? isActive = freezed,
    Object? bookingDate = freezed,
    Object? indSeat = freezed,
    Object? famSeat = freezed,
    Object? tennisCourtNumber = freezed,
    Object? durationTime = freezed,
    Object? paymentTime = freezed,
    Object? visitLog = freezed,
  }) {
    return _then(_$_BookingEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingDate: bookingDate == freezed
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      indSeat: indSeat == freezed
          ? _value.indSeat
          : indSeat // ignore: cast_nullable_to_non_nullable
              as int,
      famSeat: famSeat == freezed
          ? _value.famSeat
          : famSeat // ignore: cast_nullable_to_non_nullable
              as int,
      tennisCourtNumber: tennisCourtNumber == freezed
          ? _value.tennisCourtNumber
          : tennisCourtNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationTime: durationTime == freezed
          ? _value._durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      paymentTime: paymentTime == freezed
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String?,
      visitLog: visitLog == freezed
          ? _value._visitLog
          : visitLog // ignore: cast_nullable_to_non_nullable
              as List<VisitLogEntity>,
    ));
  }
}

/// @nodoc

class _$_BookingEntity implements _BookingEntity {
  const _$_BookingEntity(
      {required this.id,
      required this.title,
      required this.price,
      required this.isActive,
      required this.bookingDate,
      required this.indSeat,
      required this.famSeat,
      required this.tennisCourtNumber,
      required final List<String>? durationTime,
      required this.paymentTime,
      required final List<VisitLogEntity> visitLog})
      : _durationTime = durationTime,
        _visitLog = visitLog;

  @override
  final String id;
  @override
  final String title;
  @override
  final Price price;
  @override
  final bool isActive;
  @override
  final DateTime bookingDate;
  @override
  final int indSeat;
  @override
  final int famSeat;
  @override
  final int tennisCourtNumber;
  final List<String>? _durationTime;
  @override
  List<String>? get durationTime {
    final value = _durationTime;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? paymentTime;
  final List<VisitLogEntity> _visitLog;
  @override
  List<VisitLogEntity> get visitLog {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visitLog);
  }

  @override
  String toString() {
    return 'BookingEntity(id: $id, title: $title, price: $price, isActive: $isActive, bookingDate: $bookingDate, indSeat: $indSeat, famSeat: $famSeat, tennisCourtNumber: $tennisCourtNumber, durationTime: $durationTime, paymentTime: $paymentTime, visitLog: $visitLog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality()
                .equals(other.bookingDate, bookingDate) &&
            const DeepCollectionEquality().equals(other.indSeat, indSeat) &&
            const DeepCollectionEquality().equals(other.famSeat, famSeat) &&
            const DeepCollectionEquality()
                .equals(other.tennisCourtNumber, tennisCourtNumber) &&
            const DeepCollectionEquality()
                .equals(other._durationTime, _durationTime) &&
            const DeepCollectionEquality()
                .equals(other.paymentTime, paymentTime) &&
            const DeepCollectionEquality().equals(other._visitLog, _visitLog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(bookingDate),
      const DeepCollectionEquality().hash(indSeat),
      const DeepCollectionEquality().hash(famSeat),
      const DeepCollectionEquality().hash(tennisCourtNumber),
      const DeepCollectionEquality().hash(_durationTime),
      const DeepCollectionEquality().hash(paymentTime),
      const DeepCollectionEquality().hash(_visitLog));

  @JsonKey(ignore: true)
  @override
  _$$_BookingEntityCopyWith<_$_BookingEntity> get copyWith =>
      __$$_BookingEntityCopyWithImpl<_$_BookingEntity>(this, _$identity);
}

abstract class _BookingEntity implements BookingEntity {
  const factory _BookingEntity(
      {required final String id,
      required final String title,
      required final Price price,
      required final bool isActive,
      required final DateTime bookingDate,
      required final int indSeat,
      required final int famSeat,
      required final int tennisCourtNumber,
      required final List<String>? durationTime,
      required final String? paymentTime,
      required final List<VisitLogEntity> visitLog}) = _$_BookingEntity;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  Price get price => throw _privateConstructorUsedError;
  @override
  bool get isActive => throw _privateConstructorUsedError;
  @override
  DateTime get bookingDate => throw _privateConstructorUsedError;
  @override
  int get indSeat => throw _privateConstructorUsedError;
  @override
  int get famSeat => throw _privateConstructorUsedError;
  @override
  int get tennisCourtNumber => throw _privateConstructorUsedError;
  @override
  List<String>? get durationTime => throw _privateConstructorUsedError;
  @override
  String? get paymentTime => throw _privateConstructorUsedError;
  @override
  List<VisitLogEntity> get visitLog => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BookingEntityCopyWith<_$_BookingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Price {
  String get currencyCode => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res>;
  $Res call({String currencyCode, int amount});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res> implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  final Price _value;
  // ignore: unused_field
  final $Res Function(Price) _then;

  @override
  $Res call({
    Object? currencyCode = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
  @override
  $Res call({String currencyCode, int amount});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, (v) => _then(v as _$_Price));

  @override
  _$_Price get _value => super._value as _$_Price;

  @override
  $Res call({
    Object? currencyCode = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_Price(
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Price implements _Price {
  const _$_Price({required this.currencyCode, required this.amount});

  @override
  final String currencyCode;
  @override
  final int amount;

  @override
  String toString() {
    return 'Price(currencyCode: $currencyCode, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
            const DeepCollectionEquality()
                .equals(other.currencyCode, currencyCode) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currencyCode),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);
}

abstract class _Price implements Price {
  const factory _Price(
      {required final String currencyCode,
      required final int amount}) = _$_Price;

  @override
  String get currencyCode => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VisitLogEntity {
  int get lock => throw _privateConstructorUsedError;
  String get openedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitLogEntityCopyWith<VisitLogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitLogEntityCopyWith<$Res> {
  factory $VisitLogEntityCopyWith(
          VisitLogEntity value, $Res Function(VisitLogEntity) then) =
      _$VisitLogEntityCopyWithImpl<$Res>;
  $Res call({int lock, String openedAt});
}

/// @nodoc
class _$VisitLogEntityCopyWithImpl<$Res>
    implements $VisitLogEntityCopyWith<$Res> {
  _$VisitLogEntityCopyWithImpl(this._value, this._then);

  final VisitLogEntity _value;
  // ignore: unused_field
  final $Res Function(VisitLogEntity) _then;

  @override
  $Res call({
    Object? lock = freezed,
    Object? openedAt = freezed,
  }) {
    return _then(_value.copyWith(
      lock: lock == freezed
          ? _value.lock
          : lock // ignore: cast_nullable_to_non_nullable
              as int,
      openedAt: openedAt == freezed
          ? _value.openedAt
          : openedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VisitLogEntityCopyWith<$Res>
    implements $VisitLogEntityCopyWith<$Res> {
  factory _$$_VisitLogEntityCopyWith(
          _$_VisitLogEntity value, $Res Function(_$_VisitLogEntity) then) =
      __$$_VisitLogEntityCopyWithImpl<$Res>;
  @override
  $Res call({int lock, String openedAt});
}

/// @nodoc
class __$$_VisitLogEntityCopyWithImpl<$Res>
    extends _$VisitLogEntityCopyWithImpl<$Res>
    implements _$$_VisitLogEntityCopyWith<$Res> {
  __$$_VisitLogEntityCopyWithImpl(
      _$_VisitLogEntity _value, $Res Function(_$_VisitLogEntity) _then)
      : super(_value, (v) => _then(v as _$_VisitLogEntity));

  @override
  _$_VisitLogEntity get _value => super._value as _$_VisitLogEntity;

  @override
  $Res call({
    Object? lock = freezed,
    Object? openedAt = freezed,
  }) {
    return _then(_$_VisitLogEntity(
      lock: lock == freezed
          ? _value.lock
          : lock // ignore: cast_nullable_to_non_nullable
              as int,
      openedAt: openedAt == freezed
          ? _value.openedAt
          : openedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VisitLogEntity implements _VisitLogEntity {
  const _$_VisitLogEntity({required this.lock, required this.openedAt});

  @override
  final int lock;
  @override
  final String openedAt;

  @override
  String toString() {
    return 'VisitLogEntity(lock: $lock, openedAt: $openedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitLogEntity &&
            const DeepCollectionEquality().equals(other.lock, lock) &&
            const DeepCollectionEquality().equals(other.openedAt, openedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lock),
      const DeepCollectionEquality().hash(openedAt));

  @JsonKey(ignore: true)
  @override
  _$$_VisitLogEntityCopyWith<_$_VisitLogEntity> get copyWith =>
      __$$_VisitLogEntityCopyWithImpl<_$_VisitLogEntity>(this, _$identity);
}

abstract class _VisitLogEntity implements VisitLogEntity {
  const factory _VisitLogEntity(
      {required final int lock,
      required final String openedAt}) = _$_VisitLogEntity;

  @override
  int get lock => throw _privateConstructorUsedError;
  @override
  String get openedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VisitLogEntityCopyWith<_$_VisitLogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
