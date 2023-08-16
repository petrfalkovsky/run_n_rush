// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingDto _$BookingDtoFromJson(Map<String, dynamic> json) => BookingDto(
      id: json['id'] as String,
      resDate: DateTime.parse(json['res_date'] as String),
      indSeatQty: json['ind_seat_qty'] as int,
      famSeatQty: json['fam_seat_qty'] as int,
      tennisHours:
          (json['tennis_hours'] as List<dynamic>).map((e) => e as int).toList(),
      court: json['court'] as int?,
      paymentStatus: json['payment_status'] as String,
      statusName: json['status_name'] as String,
      paymentTime: json['payment_time'] == null
          ? null
          : DateTime.parse(json['payment_time'] as String),
      visitLog: (json['visit_log'] as List<dynamic>)
          .map((e) => VisitLogDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookingDtoToJson(BookingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'res_date': instance.resDate.toIso8601String(),
      'ind_seat_qty': instance.indSeatQty,
      'fam_seat_qty': instance.famSeatQty,
      'tennis_hours': instance.tennisHours,
      'court': instance.court,
      'payment_status': instance.paymentStatus,
      'status_name': instance.statusName,
      'payment_time': instance.paymentTime?.toIso8601String(),
      'visit_log': instance.visitLog,
    };

VisitLogDto _$VisitLogDtoFromJson(Map<String, dynamic> json) => VisitLogDto(
      lock: json['lock'] as int?,
      openedAt: json['opened_at'] == null
          ? null
          : DateTime.parse(json['opened_at'] as String),
    );

Map<String, dynamic> _$VisitLogDtoToJson(VisitLogDto instance) =>
    <String, dynamic>{
      'lock': instance.lock,
      'opened_at': instance.openedAt?.toIso8601String(),
    };
