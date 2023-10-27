// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_avatar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAvatarDto _$UserAvatarDtoFromJson(Map<String, dynamic> json) {
  return _UserAvatarDto.fromJson(json);
}

/// @nodoc
mixin _$UserAvatarDto {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail')
  String? get detail => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAvatarDtoCopyWith<UserAvatarDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAvatarDtoCopyWith<$Res> {
  factory $UserAvatarDtoCopyWith(
          UserAvatarDto value, $Res Function(UserAvatarDto) then) =
      _$UserAvatarDtoCopyWithImpl<$Res, UserAvatarDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'detail') String? detail,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$UserAvatarDtoCopyWithImpl<$Res, $Val extends UserAvatarDto>
    implements $UserAvatarDtoCopyWith<$Res> {
  _$UserAvatarDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? detail = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAvatarDtoCopyWith<$Res>
    implements $UserAvatarDtoCopyWith<$Res> {
  factory _$$_UserAvatarDtoCopyWith(
          _$_UserAvatarDto value, $Res Function(_$_UserAvatarDto) then) =
      __$$_UserAvatarDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'detail') String? detail,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$_UserAvatarDtoCopyWithImpl<$Res>
    extends _$UserAvatarDtoCopyWithImpl<$Res, _$_UserAvatarDto>
    implements _$$_UserAvatarDtoCopyWith<$Res> {
  __$$_UserAvatarDtoCopyWithImpl(
      _$_UserAvatarDto _value, $Res Function(_$_UserAvatarDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? detail = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_UserAvatarDto(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAvatarDto implements _UserAvatarDto {
  const _$_UserAvatarDto(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'detail') required this.detail,
      @JsonKey(name: 'url') required this.url});

  factory _$_UserAvatarDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserAvatarDtoFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'detail')
  final String? detail;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'UserAvatarDto(status: $status, detail: $detail, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAvatarDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, detail, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAvatarDtoCopyWith<_$_UserAvatarDto> get copyWith =>
      __$$_UserAvatarDtoCopyWithImpl<_$_UserAvatarDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAvatarDtoToJson(
      this,
    );
  }
}

abstract class _UserAvatarDto implements UserAvatarDto {
  const factory _UserAvatarDto(
      {@JsonKey(name: 'status') required final String? status,
      @JsonKey(name: 'detail') required final String? detail,
      @JsonKey(name: 'url') required final String? url}) = _$_UserAvatarDto;

  factory _UserAvatarDto.fromJson(Map<String, dynamic> json) =
      _$_UserAvatarDto.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'detail')
  String? get detail;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_UserAvatarDtoCopyWith<_$_UserAvatarDto> get copyWith =>
      throw _privateConstructorUsedError;
}
