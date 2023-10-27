// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditUserDto _$EditUserDtoFromJson(Map<String, dynamic> json) {
  return _EditUserDto.fromJson(json);
}

/// @nodoc
mixin _$EditUserDto {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_user_id')
  String? get updatedUserID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditUserDtoCopyWith<EditUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserDtoCopyWith<$Res> {
  factory $EditUserDtoCopyWith(
          EditUserDto value, $Res Function(EditUserDto) then) =
      _$EditUserDtoCopyWithImpl<$Res, EditUserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'updated_user_id') String? updatedUserID});
}

/// @nodoc
class _$EditUserDtoCopyWithImpl<$Res, $Val extends EditUserDto>
    implements $EditUserDtoCopyWith<$Res> {
  _$EditUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? updatedUserID = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedUserID: freezed == updatedUserID
          ? _value.updatedUserID
          : updatedUserID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditUserDtoCopyWith<$Res>
    implements $EditUserDtoCopyWith<$Res> {
  factory _$$_EditUserDtoCopyWith(
          _$_EditUserDto value, $Res Function(_$_EditUserDto) then) =
      __$$_EditUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'updated_user_id') String? updatedUserID});
}

/// @nodoc
class __$$_EditUserDtoCopyWithImpl<$Res>
    extends _$EditUserDtoCopyWithImpl<$Res, _$_EditUserDto>
    implements _$$_EditUserDtoCopyWith<$Res> {
  __$$_EditUserDtoCopyWithImpl(
      _$_EditUserDto _value, $Res Function(_$_EditUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? updatedUserID = freezed,
  }) {
    return _then(_$_EditUserDto(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedUserID: freezed == updatedUserID
          ? _value.updatedUserID
          : updatedUserID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditUserDto implements _EditUserDto {
  const _$_EditUserDto(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'updated_user_id') required this.updatedUserID});

  factory _$_EditUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_EditUserDtoFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'updated_user_id')
  final String? updatedUserID;

  @override
  String toString() {
    return 'EditUserDto(firstName: $firstName, lastName: $lastName, email: $email, updatedUserID: $updatedUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserDto &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.updatedUserID, updatedUserID) ||
                other.updatedUserID == updatedUserID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, updatedUserID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditUserDtoCopyWith<_$_EditUserDto> get copyWith =>
      __$$_EditUserDtoCopyWithImpl<_$_EditUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditUserDtoToJson(
      this,
    );
  }
}

abstract class _EditUserDto implements EditUserDto {
  const factory _EditUserDto(
      {@JsonKey(name: 'first_name') required final String? firstName,
      @JsonKey(name: 'last_name') required final String? lastName,
      @JsonKey(name: 'email') required final String? email,
      @JsonKey(name: 'updated_user_id')
      required final String? updatedUserID}) = _$_EditUserDto;

  factory _EditUserDto.fromJson(Map<String, dynamic> json) =
      _$_EditUserDto.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'updated_user_id')
  String? get updatedUserID;
  @override
  @JsonKey(ignore: true)
  _$$_EditUserDtoCopyWith<_$_EditUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
