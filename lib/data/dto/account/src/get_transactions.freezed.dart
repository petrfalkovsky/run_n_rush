// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTransactionDto _$GetTransactionDtoFromJson(Map<String, dynamic> json) {
  return _GetTransactionDto.fromJson(json);
}

/// @nodoc
mixin _$GetTransactionDto {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_id')
  String? get accountID => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'operation_type')
  String? get operationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_accepted')
  bool? get isAccepted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTransactionDtoCopyWith<GetTransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTransactionDtoCopyWith<$Res> {
  factory $GetTransactionDtoCopyWith(
          GetTransactionDto value, $Res Function(GetTransactionDto) then) =
      _$GetTransactionDtoCopyWithImpl<$Res, GetTransactionDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'account_id') String? accountID,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'operation_type') String? operationType,
      @JsonKey(name: 'is_accepted') bool? isAccepted,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$GetTransactionDtoCopyWithImpl<$Res, $Val extends GetTransactionDto>
    implements $GetTransactionDtoCopyWith<$Res> {
  _$GetTransactionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountID = freezed,
    Object? amount = freezed,
    Object? operationType = freezed,
    Object? isAccepted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      accountID: freezed == accountID
          ? _value.accountID
          : accountID // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      operationType: freezed == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as String?,
      isAccepted: freezed == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetTransactionDtoCopyWith<$Res>
    implements $GetTransactionDtoCopyWith<$Res> {
  factory _$$_GetTransactionDtoCopyWith(_$_GetTransactionDto value,
          $Res Function(_$_GetTransactionDto) then) =
      __$$_GetTransactionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'account_id') String? accountID,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'operation_type') String? operationType,
      @JsonKey(name: 'is_accepted') bool? isAccepted,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$_GetTransactionDtoCopyWithImpl<$Res>
    extends _$GetTransactionDtoCopyWithImpl<$Res, _$_GetTransactionDto>
    implements _$$_GetTransactionDtoCopyWith<$Res> {
  __$$_GetTransactionDtoCopyWithImpl(
      _$_GetTransactionDto _value, $Res Function(_$_GetTransactionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountID = freezed,
    Object? amount = freezed,
    Object? operationType = freezed,
    Object? isAccepted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_GetTransactionDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      accountID: freezed == accountID
          ? _value.accountID
          : accountID // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      operationType: freezed == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as String?,
      isAccepted: freezed == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetTransactionDto implements _GetTransactionDto {
  const _$_GetTransactionDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'account_id') required this.accountID,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'operation_type') required this.operationType,
      @JsonKey(name: 'is_accepted') required this.isAccepted,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_GetTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$$_GetTransactionDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'account_id')
  final String? accountID;
  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'operation_type')
  final String? operationType;
  @override
  @JsonKey(name: 'is_accepted')
  final bool? isAccepted;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'GetTransactionDto(id: $id, accountID: $accountID, amount: $amount, operationType: $operationType, isAccepted: $isAccepted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTransactionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountID, accountID) ||
                other.accountID == accountID) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType) &&
            (identical(other.isAccepted, isAccepted) ||
                other.isAccepted == isAccepted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountID, amount,
      operationType, isAccepted, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTransactionDtoCopyWith<_$_GetTransactionDto> get copyWith =>
      __$$_GetTransactionDtoCopyWithImpl<_$_GetTransactionDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTransactionDtoToJson(
      this,
    );
  }
}

abstract class _GetTransactionDto implements GetTransactionDto {
  const factory _GetTransactionDto(
          {@JsonKey(name: 'id') required final String? id,
          @JsonKey(name: 'account_id') required final String? accountID,
          @JsonKey(name: 'amount') required final String? amount,
          @JsonKey(name: 'operation_type') required final String? operationType,
          @JsonKey(name: 'is_accepted') required final bool? isAccepted,
          @JsonKey(name: 'created_at') required final String? createdAt,
          @JsonKey(name: 'updated_at') required final String? updatedAt}) =
      _$_GetTransactionDto;

  factory _GetTransactionDto.fromJson(Map<String, dynamic> json) =
      _$_GetTransactionDto.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'account_id')
  String? get accountID;
  @override
  @JsonKey(name: 'amount')
  String? get amount;
  @override
  @JsonKey(name: 'operation_type')
  String? get operationType;
  @override
  @JsonKey(name: 'is_accepted')
  bool? get isAccepted;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_GetTransactionDtoCopyWith<_$_GetTransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
