import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_entity.freezed.dart';

@freezed
class BookingEntity with _$BookingEntity {
  const factory BookingEntity({
    required String id,
    required String title,
    required Price price,
    required bool isActive,
    required DateTime bookingDate,
    required int indSeat,
    required int famSeat,
    required int tennisCourtNumber,
    required List<String>? durationTime,
    required String? paymentTime,
    required List<VisitLogEntity> visitLog,
  }) = _BookingEntity;
}

@freezed
class Price with _$Price {
  const factory Price({
    required String currencyCode,
    required int amount,
  }) = _Price;
}

@freezed
class VisitLogEntity with _$VisitLogEntity {
  const factory VisitLogEntity({
    required int lock,
    required String openedAt,
  }) = _VisitLogEntity;
}
