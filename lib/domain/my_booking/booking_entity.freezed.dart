// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$BookingEntityCopyWithImpl<$Res, BookingEntity>;
  @useResult
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
class _$BookingEntityCopyWithImpl<$Res, $Val extends BookingEntity>
    implements $BookingEntityCopyWith<$Res> {
  _$BookingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? isActive = null,
    Object? bookingDate = null,
    Object? indSeat = null,
    Object? famSeat = null,
    Object? tennisCourtNumber = null,
    Object? durationTime = freezed,
    Object? paymentTime = freezed,
    Object? visitLog = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingDate: null == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      indSeat: null == indSeat
          ? _value.indSeat
          : indSeat // ignore: cast_nullable_to_non_nullable
              as int,
      famSeat: null == famSeat
          ? _value.famSeat
          : famSeat // ignore: cast_nullable_to_non_nullable
              as int,
      tennisCourtNumber: null == tennisCourtNumber
          ? _value.tennisCourtNumber
          : tennisCourtNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationTime: freezed == durationTime
          ? _value.durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      paymentTime: freezed == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String?,
      visitLog: null == visitLog
          ? _value.visitLog
          : visitLog // ignore: cast_nullable_to_non_nullable
              as List<VisitLogEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
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
  @useResult
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
    extends _$BookingEntityCopyWithImpl<$Res, _$_BookingEntity>
    implements _$$_BookingEntityCopyWith<$Res> {
  __$$_BookingEntityCopyWithImpl(
      _$_BookingEntity _value, $Res Function(_$_BookingEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? isActive = null,
    Object? bookingDate = null,
    Object? indSeat = null,
    Object? famSeat = null,
    Object? tennisCourtNumber = null,
    Object? durationTime = freezed,
    Object? paymentTime = freezed,
    Object? visitLog = null,
  }) {
    return _then(_$_BookingEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingDate: null == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      indSeat: null == indSeat
          ? _value.indSeat
          : indSeat // ignore: cast_nullable_to_non_nullable
              as int,
      famSeat: null == famSeat
          ? _value.famSeat
          : famSeat // ignore: cast_nullable_to_non_nullable
              as int,
      tennisCourtNumber: null == tennisCourtNumber
          ? _value.tennisCourtNumber
          : tennisCourtNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationTime: freezed == durationTime
          ? _value._durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      paymentTime: freezed == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String?,
      visitLog: null == visitLog
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
    if (_durationTime is EqualUnmodifiableListView) return _durationTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? paymentTime;
  final List<VisitLogEntity> _visitLog;
  @override
  List<VisitLogEntity> get visitLog {
    if (_visitLog is EqualUnmodifiableListView) return _visitLog;
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.bookingDate, bookingDate) ||
                other.bookingDate == bookingDate) &&
            (identical(other.indSeat, indSeat) || other.indSeat == indSeat) &&
            (identical(other.famSeat, famSeat) || other.famSeat == famSeat) &&
            (identical(other.tennisCourtNumber, tennisCourtNumber) ||
                other.tennisCourtNumber == tennisCourtNumber) &&
            const DeepCollectionEquality()
                .equals(other._durationTime, _durationTime) &&
            (identical(other.paymentTime, paymentTime) ||
                other.paymentTime == paymentTime) &&
            const DeepCollectionEquality().equals(other._visitLog, _visitLog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      price,
      isActive,
      bookingDate,
      indSeat,
      famSeat,
      tennisCourtNumber,
      const DeepCollectionEquality().hash(_durationTime),
      paymentTime,
      const DeepCollectionEquality().hash(_visitLog));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  String get id;
  @override
  String get title;
  @override
  Price get price;
  @override
  bool get isActive;
  @override
  DateTime get bookingDate;
  @override
  int get indSeat;
  @override
  int get famSeat;
  @override
  int get tennisCourtNumber;
  @override
  List<String>? get durationTime;
  @override
  String? get paymentTime;
  @override
  List<VisitLogEntity> get visitLog;
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
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call({String currencyCode, int amount});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currencyCode, int amount});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? amount = null,
  }) {
    return _then(_$_Price(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
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
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyCode, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);
}

abstract class _Price implements Price {
  const factory _Price(
      {required final String currencyCode,
      required final int amount}) = _$_Price;

  @override
  String get currencyCode;
  @override
  int get amount;
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
      _$VisitLogEntityCopyWithImpl<$Res, VisitLogEntity>;
  @useResult
  $Res call({int lock, String openedAt});
}

/// @nodoc
class _$VisitLogEntityCopyWithImpl<$Res, $Val extends VisitLogEntity>
    implements $VisitLogEntityCopyWith<$Res> {
  _$VisitLogEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lock = null,
    Object? openedAt = null,
  }) {
    return _then(_value.copyWith(
      lock: null == lock
          ? _value.lock
          : lock // ignore: cast_nullable_to_non_nullable
              as int,
      openedAt: null == openedAt
          ? _value.openedAt
          : openedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VisitLogEntityCopyWith<$Res>
    implements $VisitLogEntityCopyWith<$Res> {
  factory _$$_VisitLogEntityCopyWith(
          _$_VisitLogEntity value, $Res Function(_$_VisitLogEntity) then) =
      __$$_VisitLogEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lock, String openedAt});
}

/// @nodoc
class __$$_VisitLogEntityCopyWithImpl<$Res>
    extends _$VisitLogEntityCopyWithImpl<$Res, _$_VisitLogEntity>
    implements _$$_VisitLogEntityCopyWith<$Res> {
  __$$_VisitLogEntityCopyWithImpl(
      _$_VisitLogEntity _value, $Res Function(_$_VisitLogEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lock = null,
    Object? openedAt = null,
  }) {
    return _then(_$_VisitLogEntity(
      lock: null == lock
          ? _value.lock
          : lock // ignore: cast_nullable_to_non_nullable
              as int,
      openedAt: null == openedAt
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
            (identical(other.lock, lock) || other.lock == lock) &&
            (identical(other.openedAt, openedAt) ||
                other.openedAt == openedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lock, openedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitLogEntityCopyWith<_$_VisitLogEntity> get copyWith =>
      __$$_VisitLogEntityCopyWithImpl<_$_VisitLogEntity>(this, _$identity);
}

abstract class _VisitLogEntity implements VisitLogEntity {
  const factory _VisitLogEntity(
      {required final int lock,
      required final String openedAt}) = _$_VisitLogEntity;

  @override
  int get lock;
  @override
  String get openedAt;
  @override
  @JsonKey(ignore: true)
  _$$_VisitLogEntityCopyWith<_$_VisitLogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
