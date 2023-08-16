// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckReservedDto _$CheckReservedDtoFromJson(Map<String, dynamic> json) =>
    CheckReservedDto(
      resDate: json['res_date'] as String,
      reserves: (json['reserves'] as List<dynamic>)
          .map((e) => CheckReservedDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CheckReservedDtoToJson(CheckReservedDto instance) =>
    <String, dynamic>{
      'res_date': instance.resDate,
      'reserves': instance.reserves,
    };

CheckReservedDataDto _$CheckReservedDataDtoFromJson(
        Map<String, dynamic> json) =>
    CheckReservedDataDto(
      serviceName: json['service_name'] as String,
      freeIndSeats: json['free_ind_seats'] as int?,
      indSeatPrice: json['ind_seat_price'] as int?,
      freeFamSeats: json['free_fam_seats'] as int?,
      famSeatPrice: json['fam_seat_price'] as int?,
      courtId: json['court_id'] as int?,
      openHour: json['open_hour'] as int?,
      closeHour: json['close_hour'] as int?,
      hourPrice: json['hour_price'] as int?,
      reserved:
          (json['reserved'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$CheckReservedDataDtoToJson(
        CheckReservedDataDto instance) =>
    <String, dynamic>{
      'service_name': instance.serviceName,
      'free_ind_seats': instance.freeIndSeats,
      'ind_seat_price': instance.indSeatPrice,
      'free_fam_seats': instance.freeFamSeats,
      'fam_seat_price': instance.famSeatPrice,
      'court_id': instance.courtId,
      'open_hour': instance.openHour,
      'close_hour': instance.closeHour,
      'hour_price': instance.hourPrice,
      'reserved': instance.reserved,
    };
