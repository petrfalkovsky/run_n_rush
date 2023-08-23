import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:run_n_rush/core/safe_coding/src/either.dart';
import 'package:run_n_rush/domain/bookings/post_bookings.dart';
import 'package:run_n_rush/domain/core/extended_errors.dart';

part 'post_booking_dto.g.dart';

@JsonSerializable()
class ReservationBody {
  ReservationBody({
    this.resDate,
    this.indSeatQty,
    this.famSeatQty,
    this.tennisHours,
    this.court,
    this.paymentStatus,
    this.paymentTime,
  });

  factory ReservationBody.fromJson(Map<String, dynamic> json) =>
      _$ReservationBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ReservationBodyToJson(this);

  @JsonKey(name: 'res_date')
  final String? resDate;
  @JsonKey(name: 'ind_seat_qty')
  final int? indSeatQty;
  @JsonKey(name: 'fam_seat_qty')
  final int? famSeatQty;
  @JsonKey(name: 'tennis_hours')
  final List<int>? tennisHours;
  final int? court;
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @JsonKey(name: 'payment_time')
  final String? paymentTime;
}

@JsonSerializable()
class ReservationPatchBody {
  ReservationPatchBody({
    this.paymentStatus,
    this.paymentTime,
    this.payment,
  });

  factory ReservationPatchBody.fromJson(Map<String, dynamic> json) =>
      _$ReservationPatchBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ReservationPatchBodyToJson(this);

  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @JsonKey(name: 'payment_time')
  final String? paymentTime;
  final List<PaymentBody>? payment;
}

@JsonSerializable()
class PaymentBody {
  PaymentBody({
    this.paymentId,
    this.token,
  });

  factory PaymentBody.fromJson(Map<String, dynamic> json) =>
      _$PaymentBodyFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentBodyToJson(this);

  @JsonKey(name: 'PaymentId')
  final int? paymentId;
  @JsonKey(name: 'Token')
  final String? token;
}

@JsonSerializable()
class PostBookingDto {
  PostBookingDto({
    required this.id,
    required this.resDate,
    required this.paymentStatus,
    required this.statusName,
    required this.paymentTime,
    required this.payment,
  });

  final String id;
  @JsonKey(name: 'res_date')
  final DateTime resDate;
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @JsonKey(name: 'status_name')
  final String statusName;
  @JsonKey(name: 'payment_time')
  final DateTime? paymentTime;
  final List<PaymentDto>? payment;

  factory PostBookingDto.fromJson(Map<String, dynamic> json) =>
      _$PostBookingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PostBookingDtoToJson(this);
}

@JsonSerializable()
class PaymentDto {
  PaymentDto({
    required this.id,
    required this.settings,
    required this.paymentId,
    required this.amount,
    required this.orderId,
    required this.description,
    required this.token,
  });

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentDtoToJson(this);

  final int id;
  final SettingsDto settings;
  @JsonKey(name: 'PaymentId')
  final int? paymentId;
  @JsonKey(name: 'Amount')
  final int amount;
  @JsonKey(name: 'OrderId')
  final String orderId;
  @JsonKey(name: 'Description')
  final String description;
  @JsonKey(name: 'Token')
  final String? token;
}

@JsonSerializable()
class SettingsDto {
  SettingsDto({
    required this.terminalKey,
    required this.password,
    required this.publicKey,
  });
  factory SettingsDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SettingsDtoToJson(this);

  @JsonKey(name: 'TerminalKey')
  final String terminalKey;
  final String password;
  @JsonKey(name: 'PublicKey')
  final String publicKey;
}

extension PostBookingDtoX on PostBookingDto {
  Either<ExtendedErrors, PostBookings> toDomain() {
    try {
      if (payment == null) {
        return Left(ExtendedErrors.simple('Balance: data is null'));
      }
      final domain = PostBookings(
        payment: payment!
            .map(
              (e) => Payment(
                id: e.id,
                settings: Settings(
                  terminalKey: e.settings.terminalKey,
                  password: e.settings.password,
                  publicKey: e.settings.publicKey,
                ),
                paymentId: e.paymentId ?? 0,
                amount: e.amount,
                orderId: e.orderId,
                description: e.description,
                token: e.token ?? '',
              ),
            )
            .toList(),
        id: id,
        resDate: resDate,
        paymentStatus: paymentStatus,
        statusName: statusName,
        paymentTime: paymentTime ?? DateTime.now(),
      );

      return Right(domain);
    } on Exception catch (e) {
      // Возвращаем исключение
      return left(ExtendedErrors.simple(e.toString()));
    }
  }
}
