// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAccountDto _$GetAccountDtoFromJson(Map<String, dynamic> json) {
  return _GetAccountDto.fromJson(json);
}

/// @nodoc
mixin _$GetAccountDto {
  @JsonKey(name: 'user_id')
  String? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  String? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  double? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAccountDtoCopyWith<GetAccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAccountDtoCopyWith<$Res> {
  factory $GetAccountDtoCopyWith(
          GetAccountDto value, $Res Function(GetAccountDto) then) =
      _$GetAccountDtoCopyWithImpl<$Res, GetAccountDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userID,
      @JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') double? updatedAt});
}

/// @nodoc
class _$GetAccountDtoCopyWithImpl<$Res, $Val extends GetAccountDto>
    implements $GetAccountDtoCopyWith<$Res> {
  _$GetAccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? balance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetAccountDtoCopyWith<$Res>
    implements $GetAccountDtoCopyWith<$Res> {
  factory _$$_GetAccountDtoCopyWith(
          _$_GetAccountDto value, $Res Function(_$_GetAccountDto) then) =
      __$$_GetAccountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userID,
      @JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') double? updatedAt});
}

/// @nodoc
class __$$_GetAccountDtoCopyWithImpl<$Res>
    extends _$GetAccountDtoCopyWithImpl<$Res, _$_GetAccountDto>
    implements _$$_GetAccountDtoCopyWith<$Res> {
  __$$_GetAccountDtoCopyWithImpl(
      _$_GetAccountDto _value, $Res Function(_$_GetAccountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? balance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_GetAccountDto(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAccountDto implements _GetAccountDto {
  const _$_GetAccountDto(
      {@JsonKey(name: 'user_id') required this.userID,
      @JsonKey(name: 'balance') required this.balance,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_GetAccountDto.fromJson(Map<String, dynamic> json) =>
      _$$_GetAccountDtoFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userID;
  @override
  @JsonKey(name: 'balance')
  final String? balance;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final double? updatedAt;

  @override
  String toString() {
    return 'GetAccountDto(userID: $userID, balance: $balance, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAccountDto &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userID, balance, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAccountDtoCopyWith<_$_GetAccountDto> get copyWith =>
      __$$_GetAccountDtoCopyWithImpl<_$_GetAccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAccountDtoToJson(
      this,
    );
  }
}

abstract class _GetAccountDto implements GetAccountDto {
  const factory _GetAccountDto(
          {@JsonKey(name: 'user_id') required final String? userID,
          @JsonKey(name: 'balance') required final String? balance,
          @JsonKey(name: 'created_at') required final String? createdAt,
          @JsonKey(name: 'updated_at') required final double? updatedAt}) =
      _$_GetAccountDto;

  factory _GetAccountDto.fromJson(Map<String, dynamic> json) =
      _$_GetAccountDto.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userID;
  @override
  @JsonKey(name: 'balance')
  String? get balance;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  double? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_GetAccountDtoCopyWith<_$_GetAccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
