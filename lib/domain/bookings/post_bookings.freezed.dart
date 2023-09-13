// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bookings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostBookings {
  String get id => throw _privateConstructorUsedError;
  DateTime get resDate => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String get statusName => throw _privateConstructorUsedError;
  DateTime get paymentTime => throw _privateConstructorUsedError;
  List<Payment> get payment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostBookingsCopyWith<PostBookings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostBookingsCopyWith<$Res> {
  factory $PostBookingsCopyWith(
          PostBookings value, $Res Function(PostBookings) then) =
      _$PostBookingsCopyWithImpl<$Res, PostBookings>;
  @useResult
  $Res call(
      {String id,
      DateTime resDate,
      String paymentStatus,
      String statusName,
      DateTime paymentTime,
      List<Payment> payment});
}

/// @nodoc
class _$PostBookingsCopyWithImpl<$Res, $Val extends PostBookings>
    implements $PostBookingsCopyWith<$Res> {
  _$PostBookingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? resDate = null,
    Object? paymentStatus = null,
    Object? statusName = null,
    Object? paymentTime = null,
    Object? payment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      resDate: null == resDate
          ? _value.resDate
          : resDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostBookingsCopyWith<$Res>
    implements $PostBookingsCopyWith<$Res> {
  factory _$$_PostBookingsCopyWith(
          _$_PostBookings value, $Res Function(_$_PostBookings) then) =
      __$$_PostBookingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime resDate,
      String paymentStatus,
      String statusName,
      DateTime paymentTime,
      List<Payment> payment});
}

/// @nodoc
class __$$_PostBookingsCopyWithImpl<$Res>
    extends _$PostBookingsCopyWithImpl<$Res, _$_PostBookings>
    implements _$$_PostBookingsCopyWith<$Res> {
  __$$_PostBookingsCopyWithImpl(
      _$_PostBookings _value, $Res Function(_$_PostBookings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? resDate = null,
    Object? paymentStatus = null,
    Object? statusName = null,
    Object? paymentTime = null,
    Object? payment = null,
  }) {
    return _then(_$_PostBookings(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      resDate: null == resDate
          ? _value.resDate
          : resDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      payment: null == payment
          ? _value._payment
          : payment // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
    ));
  }
}

/// @nodoc

class _$_PostBookings implements _PostBookings {
  const _$_PostBookings(
      {required this.id,
      required this.resDate,
      required this.paymentStatus,
      required this.statusName,
      required this.paymentTime,
      required final List<Payment> payment})
      : _payment = payment;

  @override
  final String id;
  @override
  final DateTime resDate;
  @override
  final String paymentStatus;
  @override
  final String statusName;
  @override
  final DateTime paymentTime;
  final List<Payment> _payment;
  @override
  List<Payment> get payment {
    if (_payment is EqualUnmodifiableListView) return _payment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payment);
  }

  @override
  String toString() {
    return 'PostBookings(id: $id, resDate: $resDate, paymentStatus: $paymentStatus, statusName: $statusName, paymentTime: $paymentTime, payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostBookings &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.resDate, resDate) || other.resDate == resDate) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.paymentTime, paymentTime) ||
                other.paymentTime == paymentTime) &&
            const DeepCollectionEquality().equals(other._payment, _payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, resDate, paymentStatus,
      statusName, paymentTime, const DeepCollectionEquality().hash(_payment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostBookingsCopyWith<_$_PostBookings> get copyWith =>
      __$$_PostBookingsCopyWithImpl<_$_PostBookings>(this, _$identity);
}

abstract class _PostBookings implements PostBookings {
  const factory _PostBookings(
      {required final String id,
      required final DateTime resDate,
      required final String paymentStatus,
      required final String statusName,
      required final DateTime paymentTime,
      required final List<Payment> payment}) = _$_PostBookings;

  @override
  String get id;
  @override
  DateTime get resDate;
  @override
  String get paymentStatus;
  @override
  String get statusName;
  @override
  DateTime get paymentTime;
  @override
  List<Payment> get payment;
  @override
  @JsonKey(ignore: true)
  _$$_PostBookingsCopyWith<_$_PostBookings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Payment {
  int get id => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  int get paymentId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {int id,
      Settings settings,
      int paymentId,
      int amount,
      String orderId,
      String description,
      String token});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? settings = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? orderId = null,
    Object? description = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$_PaymentCopyWith(
          _$_Payment value, $Res Function(_$_Payment) then) =
      __$$_PaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Settings settings,
      int paymentId,
      int amount,
      String orderId,
      String description,
      String token});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_PaymentCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$_Payment>
    implements _$$_PaymentCopyWith<$Res> {
  __$$_PaymentCopyWithImpl(_$_Payment _value, $Res Function(_$_Payment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? settings = null,
    Object? paymentId = null,
    Object? amount = null,
    Object? orderId = null,
    Object? description = null,
    Object? token = null,
  }) {
    return _then(_$_Payment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Payment implements _Payment {
  const _$_Payment(
      {required this.id,
      required this.settings,
      required this.paymentId,
      required this.amount,
      required this.orderId,
      required this.description,
      required this.token});

  @override
  final int id;
  @override
  final Settings settings;
  @override
  final int paymentId;
  @override
  final int amount;
  @override
  final String orderId;
  @override
  final String description;
  @override
  final String token;

  @override
  String toString() {
    return 'Payment(id: $id, settings: $settings, paymentId: $paymentId, amount: $amount, orderId: $orderId, description: $description, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, settings, paymentId, amount,
      orderId, description, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      __$$_PaymentCopyWithImpl<_$_Payment>(this, _$identity);
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required final int id,
      required final Settings settings,
      required final int paymentId,
      required final int amount,
      required final String orderId,
      required final String description,
      required final String token}) = _$_Payment;

  @override
  int get id;
  @override
  Settings get settings;
  @override
  int get paymentId;
  @override
  int get amount;
  @override
  String get orderId;
  @override
  String get description;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCopyWith<_$_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Settings {
  String get terminalKey => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call({String terminalKey, String password, String publicKey});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terminalKey = null,
    Object? password = null,
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      terminalKey: null == terminalKey
          ? _value.terminalKey
          : terminalKey // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String terminalKey, String password, String publicKey});
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$_Settings>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terminalKey = null,
    Object? password = null,
    Object? publicKey = null,
  }) {
    return _then(_$_Settings(
      terminalKey: null == terminalKey
          ? _value.terminalKey
          : terminalKey // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Settings implements _Settings {
  const _$_Settings(
      {required this.terminalKey,
      required this.password,
      required this.publicKey});

  @override
  final String terminalKey;
  @override
  final String password;
  @override
  final String publicKey;

  @override
  String toString() {
    return 'Settings(terminalKey: $terminalKey, password: $password, publicKey: $publicKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            (identical(other.terminalKey, terminalKey) ||
                other.terminalKey == terminalKey) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, terminalKey, password, publicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {required final String terminalKey,
      required final String password,
      required final String publicKey}) = _$_Settings;

  @override
  String get terminalKey;
  @override
  String get password;
  @override
  String get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
