// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenLockBody _$OpenLockBodyFromJson(Map<String, dynamic> json) => OpenLockBody(
      qrCode: json['qr_code'] as int,
      resId: json['res_id'] as String,
    );

Map<String, dynamic> _$OpenLockBodyToJson(OpenLockBody instance) =>
    <String, dynamic>{
      'qr_code': instance.qrCode,
      'res_id': instance.resId,
    };

QRCodeDto _$QRCodeDtoFromJson(Map<String, dynamic> json) => QRCodeDto(
      lock1: json['Lock 1'] as String?,
      lock2: json['Lock 2'] as String?,
      lock3: json['Lock 3'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$QRCodeDtoToJson(QRCodeDto instance) => <String, dynamic>{
      'Lock 1': instance.lock1,
      'Lock 2': instance.lock2,
      'Lock 3': instance.lock3,
      'error': instance.error,
    };
