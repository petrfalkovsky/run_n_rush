// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExtendedErrors _$$_ExtendedErrorsFromJson(Map<String, dynamic> json) =>
    _$_ExtendedErrors(
      error: json['error'] as String,
      errors: (json['errors'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as List<dynamic>),
      ),
      onlyUserFieldsErrors:
          (json['onlyUserFieldsErrors'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as List<dynamic>),
              ) ??
              const {},
    );

Map<String, dynamic> _$$_ExtendedErrorsToJson(_$_ExtendedErrors instance) =>
    <String, dynamic>{
      'error': instance.error,
      'errors': instance.errors,
      'onlyUserFieldsErrors': instance.onlyUserFieldsErrors,
    };
