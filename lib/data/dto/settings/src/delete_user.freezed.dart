// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteUserDto _$DeleteUserDtoFromJson(Map<String, dynamic> json) {
  return _DeleteUserDto.fromJson(json);
}

/// @nodoc
mixin _$DeleteUserDto {
  @JsonKey(name: 'deleted_user_id')
  String? get deletedUserID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteUserDtoCopyWith<DeleteUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserDtoCopyWith<$Res> {
  factory $DeleteUserDtoCopyWith(
          DeleteUserDto value, $Res Function(DeleteUserDto) then) =
      _$DeleteUserDtoCopyWithImpl<$Res, DeleteUserDto>;
  @useResult
  $Res call({@JsonKey(name: 'deleted_user_id') String? deletedUserID});
}

/// @nodoc
class _$DeleteUserDtoCopyWithImpl<$Res, $Val extends DeleteUserDto>
    implements $DeleteUserDtoCopyWith<$Res> {
  _$DeleteUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedUserID = freezed,
  }) {
    return _then(_value.copyWith(
      deletedUserID: freezed == deletedUserID
          ? _value.deletedUserID
          : deletedUserID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteUserDtoCopyWith<$Res>
    implements $DeleteUserDtoCopyWith<$Res> {
  factory _$$_DeleteUserDtoCopyWith(
          _$_DeleteUserDto value, $Res Function(_$_DeleteUserDto) then) =
      __$$_DeleteUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'deleted_user_id') String? deletedUserID});
}

/// @nodoc
class __$$_DeleteUserDtoCopyWithImpl<$Res>
    extends _$DeleteUserDtoCopyWithImpl<$Res, _$_DeleteUserDto>
    implements _$$_DeleteUserDtoCopyWith<$Res> {
  __$$_DeleteUserDtoCopyWithImpl(
      _$_DeleteUserDto _value, $Res Function(_$_DeleteUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deletedUserID = freezed,
  }) {
    return _then(_$_DeleteUserDto(
      deletedUserID: freezed == deletedUserID
          ? _value.deletedUserID
          : deletedUserID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteUserDto implements _DeleteUserDto {
  const _$_DeleteUserDto(
      {@JsonKey(name: 'deleted_user_id') required this.deletedUserID});

  factory _$_DeleteUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteUserDtoFromJson(json);

  @override
  @JsonKey(name: 'deleted_user_id')
  final String? deletedUserID;

  @override
  String toString() {
    return 'DeleteUserDto(deletedUserID: $deletedUserID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteUserDto &&
            (identical(other.deletedUserID, deletedUserID) ||
                other.deletedUserID == deletedUserID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deletedUserID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteUserDtoCopyWith<_$_DeleteUserDto> get copyWith =>
      __$$_DeleteUserDtoCopyWithImpl<_$_DeleteUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteUserDtoToJson(
      this,
    );
  }
}

abstract class _DeleteUserDto implements DeleteUserDto {
  const factory _DeleteUserDto(
      {@JsonKey(name: 'deleted_user_id')
      required final String? deletedUserID}) = _$_DeleteUserDto;

  factory _DeleteUserDto.fromJson(Map<String, dynamic> json) =
      _$_DeleteUserDto.fromJson;

  @override
  @JsonKey(name: 'deleted_user_id')
  String? get deletedUserID;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteUserDtoCopyWith<_$_DeleteUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
