// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_patch_settings_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPatchSettingsUserDto _$GetPatchSettingsUserDtoFromJson(
    Map<String, dynamic> json) {
  return _GetPatchSettingsUserDto.fromJson(json);
}

/// @nodoc
mixin _$GetPatchSettingsUserDto {
  @JsonKey(name: 'sound')
  bool? get sound => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_distance')
  int? get totalDistance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPatchSettingsUserDtoCopyWith<GetPatchSettingsUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPatchSettingsUserDtoCopyWith<$Res> {
  factory $GetPatchSettingsUserDtoCopyWith(GetPatchSettingsUserDto value,
          $Res Function(GetPatchSettingsUserDto) then) =
      _$GetPatchSettingsUserDtoCopyWithImpl<$Res, GetPatchSettingsUserDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sound') bool? sound,
      @JsonKey(name: 'total_distance') int? totalDistance});
}

/// @nodoc
class _$GetPatchSettingsUserDtoCopyWithImpl<$Res,
        $Val extends GetPatchSettingsUserDto>
    implements $GetPatchSettingsUserDtoCopyWith<$Res> {
  _$GetPatchSettingsUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sound = freezed,
    Object? totalDistance = freezed,
  }) {
    return _then(_value.copyWith(
      sound: freezed == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalDistance: freezed == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPatchSettingsUserDtoCopyWith<$Res>
    implements $GetPatchSettingsUserDtoCopyWith<$Res> {
  factory _$$_GetPatchSettingsUserDtoCopyWith(_$_GetPatchSettingsUserDto value,
          $Res Function(_$_GetPatchSettingsUserDto) then) =
      __$$_GetPatchSettingsUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sound') bool? sound,
      @JsonKey(name: 'total_distance') int? totalDistance});
}

/// @nodoc
class __$$_GetPatchSettingsUserDtoCopyWithImpl<$Res>
    extends _$GetPatchSettingsUserDtoCopyWithImpl<$Res,
        _$_GetPatchSettingsUserDto>
    implements _$$_GetPatchSettingsUserDtoCopyWith<$Res> {
  __$$_GetPatchSettingsUserDtoCopyWithImpl(_$_GetPatchSettingsUserDto _value,
      $Res Function(_$_GetPatchSettingsUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sound = freezed,
    Object? totalDistance = freezed,
  }) {
    return _then(_$_GetPatchSettingsUserDto(
      sound: freezed == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalDistance: freezed == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPatchSettingsUserDto implements _GetPatchSettingsUserDto {
  const _$_GetPatchSettingsUserDto(
      {@JsonKey(name: 'sound') required this.sound,
      @JsonKey(name: 'total_distance') required this.totalDistance});

  factory _$_GetPatchSettingsUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_GetPatchSettingsUserDtoFromJson(json);

  @override
  @JsonKey(name: 'sound')
  final bool? sound;
  @override
  @JsonKey(name: 'total_distance')
  final int? totalDistance;

  @override
  String toString() {
    return 'GetPatchSettingsUserDto(sound: $sound, totalDistance: $totalDistance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPatchSettingsUserDto &&
            (identical(other.sound, sound) || other.sound == sound) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sound, totalDistance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPatchSettingsUserDtoCopyWith<_$_GetPatchSettingsUserDto>
      get copyWith =>
          __$$_GetPatchSettingsUserDtoCopyWithImpl<_$_GetPatchSettingsUserDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPatchSettingsUserDtoToJson(
      this,
    );
  }
}

abstract class _GetPatchSettingsUserDto implements GetPatchSettingsUserDto {
  const factory _GetPatchSettingsUserDto(
          {@JsonKey(name: 'sound') required final bool? sound,
          @JsonKey(name: 'total_distance') required final int? totalDistance}) =
      _$_GetPatchSettingsUserDto;

  factory _GetPatchSettingsUserDto.fromJson(Map<String, dynamic> json) =
      _$_GetPatchSettingsUserDto.fromJson;

  @override
  @JsonKey(name: 'sound')
  bool? get sound;
  @override
  @JsonKey(name: 'total_distance')
  int? get totalDistance;
  @override
  @JsonKey(ignore: true)
  _$$_GetPatchSettingsUserDtoCopyWith<_$_GetPatchSettingsUserDto>
      get copyWith => throw _privateConstructorUsedError;
}
