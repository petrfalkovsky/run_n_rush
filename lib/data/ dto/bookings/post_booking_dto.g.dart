// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_booking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationBody _$ReservationBodyFromJson(Map<String, dynamic> json) =>
    ReservationBody(
      resDate: json['res_date'] as String?,
      indSeatQty: json['ind_seat_qty'] as int?,
      famSeatQty: json['fam_seat_qty'] as int?,
      tennisHours: (json['tennis_hours'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      court: json['court'] as int?,
      paymentStatus: json['payment_status'] as String?,
      paymentTime: json['payment_time'] as String?,
    );

Map<String, dynamic> _$ReservationBodyToJson(ReservationBody instance) =>
    <String, dynamic>{
      'res_date': instance.resDate,
      'ind_seat_qty': instance.indSeatQty,
      'fam_seat_qty': instance.famSeatQty,
      'tennis_hours': instance.tennisHours,
      'court': instance.court,
      'payment_status': instance.paymentStatus,
      'payment_time': instance.paymentTime,
    };

ReservationPatchBody _$ReservationPatchBodyFromJson(
        Map<String, dynamic> json) =>
    ReservationPatchBody(
      paymentStatus: json['payment_status'] as String?,
      paymentTime: json['payment_time'] as String?,
      payment: (json['payment'] as List<dynamic>?)
          ?.map((e) => PaymentBody.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReservationPatchBodyToJson(
        ReservationPatchBody instance) =>
    <String, dynamic>{
      'payment_status': instance.paymentStatus,
      'payment_time': instance.paymentTime,
      'payment': instance.payment,
    };

PaymentBody _$PaymentBodyFromJson(Map<String, dynamic> json) => PaymentBody(
      paymentId: json['PaymentId'] as int?,
      token: json['Token'] as String?,
    );

Map<String, dynamic> _$PaymentBodyToJson(PaymentBody instance) =>
    <String, dynamic>{
      'PaymentId': instance.paymentId,
      'Token': instance.token,
    };

PostBookingDto _$PostBookingDtoFromJson(Map<String, dynamic> json) =>
    PostBookingDto(
      id: json['id'] as String,
      resDate: DateTime.parse(json['res_date'] as String),
      paymentStatus: json['payment_status'] as String,
      statusName: json['status_name'] as String,
      paymentTime: json['payment_time'] == null
          ? null
          : DateTime.parse(json['payment_time'] as String),
      payment: (json['payment'] as List<dynamic>?)
          ?.map((e) => PaymentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostBookingDtoToJson(PostBookingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'res_date': instance.resDate.toIso8601String(),
      'payment_status': instance.paymentStatus,
      'status_name': instance.statusName,
      'payment_time': instance.paymentTime?.toIso8601String(),
      'payment': instance.payment,
    };

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) => PaymentDto(
      id: json['id'] as int,
      settings: SettingsDto.fromJson(json['settings'] as Map<String, dynamic>),
      paymentId: json['PaymentId'] as int?,
      amount: json['Amount'] as int,
      orderId: json['OrderId'] as String,
      description: json['Description'] as String,
      token: json['Token'] as String?,
    );

Map<String, dynamic> _$PaymentDtoToJson(PaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'settings': instance.settings,
      'PaymentId': instance.paymentId,
      'Amount': instance.amount,
      'OrderId': instance.orderId,
      'Description': instance.description,
      'Token': instance.token,
    };

SettingsDto _$SettingsDtoFromJson(Map<String, dynamic> json) => SettingsDto(
      terminalKey: json['TerminalKey'] as String,
      password: json['password'] as String,
      publicKey: json['PublicKey'] as String,
    );

Map<String, dynamic> _$SettingsDtoToJson(SettingsDto instance) =>
    <String, dynamic>{
      'TerminalKey': instance.terminalKey,
      'password': instance.password,
      'PublicKey': instance.publicKey,
    };
