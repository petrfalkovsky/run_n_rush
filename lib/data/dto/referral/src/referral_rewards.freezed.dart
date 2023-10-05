// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_rewards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferralRewardsDto _$ReferralRewardsDtoFromJson(Map<String, dynamic> json) {
  return _ReferralRewardsDto.fromJson(json);
}

/// @nodoc
mixin _$ReferralRewardsDto {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_from_id')
  String? get userFromID => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_from_email')
  String? get userFromEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_currency')
  String? get amountCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralRewardsDtoCopyWith<ReferralRewardsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralRewardsDtoCopyWith<$Res> {
  factory $ReferralRewardsDtoCopyWith(
          ReferralRewardsDto value, $Res Function(ReferralRewardsDto) then) =
      _$ReferralRewardsDtoCopyWithImpl<$Res, ReferralRewardsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_from_id') String? userFromID,
      @JsonKey(name: 'user_from_email') String? userFromEmail,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'amount_currency') String? amountCurrency});
}

/// @nodoc
class _$ReferralRewardsDtoCopyWithImpl<$Res, $Val extends ReferralRewardsDto>
    implements $ReferralRewardsDtoCopyWith<$Res> {
  _$ReferralRewardsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userFromID = freezed,
    Object? userFromEmail = freezed,
    Object? createdAt = freezed,
    Object? amount = freezed,
    Object? amountCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userFromID: freezed == userFromID
          ? _value.userFromID
          : userFromID // ignore: cast_nullable_to_non_nullable
              as String?,
      userFromEmail: freezed == userFromEmail
          ? _value.userFromEmail
          : userFromEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      amountCurrency: freezed == amountCurrency
          ? _value.amountCurrency
          : amountCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReferralRewardsDtoCopyWith<$Res>
    implements $ReferralRewardsDtoCopyWith<$Res> {
  factory _$$_ReferralRewardsDtoCopyWith(_$_ReferralRewardsDto value,
          $Res Function(_$_ReferralRewardsDto) then) =
      __$$_ReferralRewardsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_from_id') String? userFromID,
      @JsonKey(name: 'user_from_email') String? userFromEmail,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'amount_currency') String? amountCurrency});
}

/// @nodoc
class __$$_ReferralRewardsDtoCopyWithImpl<$Res>
    extends _$ReferralRewardsDtoCopyWithImpl<$Res, _$_ReferralRewardsDto>
    implements _$$_ReferralRewardsDtoCopyWith<$Res> {
  __$$_ReferralRewardsDtoCopyWithImpl(
      _$_ReferralRewardsDto _value, $Res Function(_$_ReferralRewardsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userFromID = freezed,
    Object? userFromEmail = freezed,
    Object? createdAt = freezed,
    Object? amount = freezed,
    Object? amountCurrency = freezed,
  }) {
    return _then(_$_ReferralRewardsDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userFromID: freezed == userFromID
          ? _value.userFromID
          : userFromID // ignore: cast_nullable_to_non_nullable
              as String?,
      userFromEmail: freezed == userFromEmail
          ? _value.userFromEmail
          : userFromEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      amountCurrency: freezed == amountCurrency
          ? _value.amountCurrency
          : amountCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferralRewardsDto implements _ReferralRewardsDto {
  const _$_ReferralRewardsDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_from_id') required this.userFromID,
      @JsonKey(name: 'user_from_email') required this.userFromEmail,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'amount_currency') required this.amountCurrency});

  factory _$_ReferralRewardsDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReferralRewardsDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_from_id')
  final String? userFromID;
  @override
  @JsonKey(name: 'user_from_email')
  final String? userFromEmail;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'amount_currency')
  final String? amountCurrency;

  @override
  String toString() {
    return 'ReferralRewardsDto(id: $id, userFromID: $userFromID, userFromEmail: $userFromEmail, createdAt: $createdAt, amount: $amount, amountCurrency: $amountCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReferralRewardsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userFromID, userFromID) ||
                other.userFromID == userFromID) &&
            (identical(other.userFromEmail, userFromEmail) ||
                other.userFromEmail == userFromEmail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountCurrency, amountCurrency) ||
                other.amountCurrency == amountCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userFromID, userFromEmail,
      createdAt, amount, amountCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReferralRewardsDtoCopyWith<_$_ReferralRewardsDto> get copyWith =>
      __$$_ReferralRewardsDtoCopyWithImpl<_$_ReferralRewardsDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferralRewardsDtoToJson(
      this,
    );
  }
}

abstract class _ReferralRewardsDto implements ReferralRewardsDto {
  const factory _ReferralRewardsDto(
      {@JsonKey(name: 'id') required final String? id,
      @JsonKey(name: 'user_from_id') required final String? userFromID,
      @JsonKey(name: 'user_from_email') required final String? userFromEmail,
      @JsonKey(name: 'created_at') required final String? createdAt,
      @JsonKey(name: 'amount') required final String? amount,
      @JsonKey(name: 'amount_currency')
      required final String? amountCurrency}) = _$_ReferralRewardsDto;

  factory _ReferralRewardsDto.fromJson(Map<String, dynamic> json) =
      _$_ReferralRewardsDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_from_id')
  String? get userFromID;
  @override
  @JsonKey(name: 'user_from_email')
  String? get userFromEmail;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'amount')
  String? get amount;
  @override
  @JsonKey(name: 'amount_currency')
  String? get amountCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_ReferralRewardsDtoCopyWith<_$_ReferralRewardsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
