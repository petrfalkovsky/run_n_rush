import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_reserved.freezed.dart';

@freezed
class CheckReserved with _$CheckReserved {
  const factory CheckReserved({
    required String serviceName,
    required int freeIndSeats,
    required int indSeatPrice,
    required int freeFamSeats,
    required int famSeatPrice,
    required int courtId,
    required int openHour,
    required int closeHour,
    required int hourPrice,
    required List<int> reserved,
  }) = _CheckReserved;
}
