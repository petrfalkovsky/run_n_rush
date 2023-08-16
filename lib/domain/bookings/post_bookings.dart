import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_bookings.freezed.dart';

@freezed
class PostBookings with _$PostBookings {
  const factory PostBookings({
    required String id,
    required DateTime resDate,
    required String paymentStatus,
    required String statusName,
    required DateTime paymentTime,
    required List<Payment> payment,
  }) = _PostBookings;
}

@freezed
class Payment with _$Payment {
  const factory Payment({
    required int id,
    required Settings settings,
    required int paymentId,
    required int amount,
    required String orderId,
    required String description,
    required String token,
  }) = _Payment;
}

@freezed
class Settings with _$Settings {
  const factory Settings({
    required String terminalKey,
    required String password,
    required String publicKey,
  }) = _Settings;
}
