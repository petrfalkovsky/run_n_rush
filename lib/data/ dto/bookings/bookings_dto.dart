import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:run_n_rush/core/safe_coding/safe_coding.dart';
import 'package:run_n_rush/domain/bookings/check_reserved.dart';
import 'package:run_n_rush/domain/core/extended_errors.dart';
part 'bookings_dto.g.dart';

@JsonSerializable()
class CheckReservedDto {
  CheckReservedDto({
    required this.resDate,
    required this.reserves,
  });

  @JsonKey(name: 'res_date')
  final String resDate;
  final List<CheckReservedDataDto> reserves;

  factory CheckReservedDto.fromJson(Map<String, dynamic> json) =>
      _$CheckReservedDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CheckReservedDtoToJson(this);
}

@JsonSerializable()
class CheckReservedDataDto {
  CheckReservedDataDto({
    required this.serviceName,
    required this.freeIndSeats,
    required this.indSeatPrice,
    required this.freeFamSeats,
    required this.famSeatPrice,
    required this.courtId,
    required this.openHour,
    required this.closeHour,
    required this.hourPrice,
    required this.reserved,
  });

  @JsonKey(name: 'service_name')
  final String serviceName;
  @JsonKey(name: 'free_ind_seats')
  final int? freeIndSeats;
  @JsonKey(name: 'ind_seat_price')
  final int? indSeatPrice;
  @JsonKey(name: 'free_fam_seats')
  final int? freeFamSeats;
  @JsonKey(name: 'fam_seat_price')
  final int? famSeatPrice;
  @JsonKey(name: 'court_id')
  final int? courtId;
  @JsonKey(name: 'open_hour')
  final int? openHour;
  @JsonKey(name: 'close_hour')
  final int? closeHour;
  @JsonKey(name: 'hour_price')
  final int? hourPrice;
  final List<int>? reserved;

  factory CheckReservedDataDto.fromJson(Map<String, dynamic> json) =>
      _$CheckReservedDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CheckReservedDataDtoToJson(this);
}

extension CheckReservedDtoX on CheckReservedDto {
  Either<ExtendedErrors, List<CheckReserved>> toDomain() {
    try {
      final domain = reserves
          .map(
            (e) => CheckReserved(
              serviceName: e.serviceName,
              freeIndSeats: e.freeIndSeats ?? 0,
              indSeatPrice: e.indSeatPrice ?? 0,
              freeFamSeats: e.freeFamSeats ?? 0,
              famSeatPrice: e.famSeatPrice ?? 0,
              courtId: e.courtId ?? 0,
              openHour: e.openHour ?? 0,
              closeHour: e.closeHour ?? 0,
              hourPrice: e.hourPrice ?? 0,
              reserved: e.reserved ?? [],
            ),
          )
          .toList();

      return Right(domain);
    } on Exception catch (e) {
      // Возвращаем исключение
      return left(ExtendedErrors.simple(e.toString()));
    }
  }
}
