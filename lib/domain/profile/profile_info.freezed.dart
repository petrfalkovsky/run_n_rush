// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) {
  return _ProfileInfo.fromJson(json);
}

/// @nodoc
mixin _$ProfileInfo {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  int? get dateReceiveToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileInfoCopyWith<ProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoCopyWith<$Res> {
  factory $ProfileInfoCopyWith(
          ProfileInfo value, $Res Function(ProfileInfo) then) =
      _$ProfileInfoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? email,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? birthday,
      int? dateReceiveToken});
}

/// @nodoc
class _$ProfileInfoCopyWithImpl<$Res> implements $ProfileInfoCopyWith<$Res> {
  _$ProfileInfoCopyWithImpl(this._value, this._then);

  final ProfileInfo _value;
  // ignore: unused_field
  final $Res Function(ProfileInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? birthday = freezed,
    Object? dateReceiveToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      dateReceiveToken: dateReceiveToken == freezed
          ? _value.dateReceiveToken
          : dateReceiveToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileInfoCopyWith<$Res>
    implements $ProfileInfoCopyWith<$Res> {
  factory _$$_ProfileInfoCopyWith(
          _$_ProfileInfo value, $Res Function(_$_ProfileInfo) then) =
      __$$_ProfileInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? email,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? birthday,
      int? dateReceiveToken});
}

/// @nodoc
class __$$_ProfileInfoCopyWithImpl<$Res> extends _$ProfileInfoCopyWithImpl<$Res>
    implements _$$_ProfileInfoCopyWith<$Res> {
  __$$_ProfileInfoCopyWithImpl(
      _$_ProfileInfo _value, $Res Function(_$_ProfileInfo) _then)
      : super(_value, (v) => _then(v as _$_ProfileInfo));

  @override
  _$_ProfileInfo get _value => super._value as _$_ProfileInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? birthday = freezed,
    Object? dateReceiveToken = freezed,
  }) {
    return _then(_$_ProfileInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      dateReceiveToken: dateReceiveToken == freezed
          ? _value.dateReceiveToken
          : dateReceiveToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileInfo extends _ProfileInfo {
  const _$_ProfileInfo(
      {required this.id,
      required this.email,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      required this.birthday,
      this.dateReceiveToken})
      : super._();

  factory _$_ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileInfoFromJson(json);

  @override
  final String? id;
  @override
  final String? email;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? birthday;
  @override
  final int? dateReceiveToken;

  @override
  String toString() {
    return 'ProfileInfo(id: $id, email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, birthday: $birthday, dateReceiveToken: $dateReceiveToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality()
                .equals(other.dateReceiveToken, dateReceiveToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(dateReceiveToken));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileInfoCopyWith<_$_ProfileInfo> get copyWith =>
      __$$_ProfileInfoCopyWithImpl<_$_ProfileInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileInfoToJson(this);
  }
}

abstract class _ProfileInfo extends ProfileInfo {
  const factory _ProfileInfo(
      {required final String? id,
      required final String? email,
      @JsonKey(name: 'first_name') required final String? firstName,
      @JsonKey(name: 'last_name') required final String? lastName,
      @JsonKey(name: 'phone_number') required final String? phoneNumber,
      required final String? birthday,
      final int? dateReceiveToken}) = _$_ProfileInfo;
  const _ProfileInfo._() : super._();

  factory _ProfileInfo.fromJson(Map<String, dynamic> json) =
      _$_ProfileInfo.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  String? get birthday => throw _privateConstructorUsedError;
  @override
  int? get dateReceiveToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileInfoCopyWith<_$_ProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewEmail {
  String get newEmail => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewEmailCopyWith<NewEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewEmailCopyWith<$Res> {
  factory $NewEmailCopyWith(NewEmail value, $Res Function(NewEmail) then) =
      _$NewEmailCopyWithImpl<$Res>;
  $Res call({String newEmail, String code});
}

/// @nodoc
class _$NewEmailCopyWithImpl<$Res> implements $NewEmailCopyWith<$Res> {
  _$NewEmailCopyWithImpl(this._value, this._then);

  final NewEmail _value;
  // ignore: unused_field
  final $Res Function(NewEmail) _then;

  @override
  $Res call({
    Object? newEmail = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NewEmailCopyWith<$Res> implements $NewEmailCopyWith<$Res> {
  factory _$$_NewEmailCopyWith(
          _$_NewEmail value, $Res Function(_$_NewEmail) then) =
      __$$_NewEmailCopyWithImpl<$Res>;
  @override
  $Res call({String newEmail, String code});
}

/// @nodoc
class __$$_NewEmailCopyWithImpl<$Res> extends _$NewEmailCopyWithImpl<$Res>
    implements _$$_NewEmailCopyWith<$Res> {
  __$$_NewEmailCopyWithImpl(
      _$_NewEmail _value, $Res Function(_$_NewEmail) _then)
      : super(_value, (v) => _then(v as _$_NewEmail));

  @override
  _$_NewEmail get _value => super._value as _$_NewEmail;

  @override
  $Res call({
    Object? newEmail = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_NewEmail(
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewEmail implements _NewEmail {
  const _$_NewEmail({required this.newEmail, required this.code});

  @override
  final String newEmail;
  @override
  final String code;

  @override
  String toString() {
    return 'NewEmail(newEmail: $newEmail, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewEmail &&
            const DeepCollectionEquality().equals(other.newEmail, newEmail) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newEmail),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_NewEmailCopyWith<_$_NewEmail> get copyWith =>
      __$$_NewEmailCopyWithImpl<_$_NewEmail>(this, _$identity);
}

abstract class _NewEmail implements NewEmail {
  const factory _NewEmail(
      {required final String newEmail,
      required final String code}) = _$_NewEmail;

  @override
  String get newEmail => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NewEmailCopyWith<_$_NewEmail> get copyWith =>
      throw _privateConstructorUsedError;
}
