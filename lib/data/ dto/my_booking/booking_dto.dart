import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/domain/core/extended_errors.dart';
import 'package:riverside/domain/my_booking/booking_entity.dart';

part 'booking_dto.g.dart';

@JsonSerializable()
class BookingDto {
  BookingDto({
    required this.id,
    required this.resDate,
    required this.indSeatQty,
    required this.famSeatQty,
    required this.tennisHours,
    required this.court,
    required this.paymentStatus,
    required this.statusName,
    required this.paymentTime,
    required this.visitLog,
  });

  final String id;
  @JsonKey(name: 'res_date')
  final DateTime resDate;
  @JsonKey(name: 'ind_seat_qty')
  final int indSeatQty;
  @JsonKey(name: 'fam_seat_qty')
  final int famSeatQty;
  @JsonKey(name: 'tennis_hours')
  final List<int> tennisHours;
  final int? court;
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @JsonKey(name: 'status_name')
  final String statusName;
  @JsonKey(name: 'payment_time')
  final DateTime? paymentTime;
  @JsonKey(name: 'visit_log')
  final List<VisitLogDto> visitLog;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookingDtoToJson(this);
}

@JsonSerializable()
class VisitLogDto {
  VisitLogDto({
    this.lock,
    this.openedAt,
  });
  factory VisitLogDto.fromJson(Map<String, dynamic> json) =>
      _$VisitLogDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VisitLogDtoToJson(this);

  final int? lock;
  @JsonKey(name: 'opened_at')
  final DateTime? openedAt;
}

extension ListX on List<BookingDto> {
  Either<ExtendedErrors, List<BookingEntity>> toDomain() {
    try {
      final domain = map((e) {
        List<String> start = [];
        // if (e.paymentStatus == 'w') continue;

        final price = e.famSeatQty * 3000 +
            e.indSeatQty * 1000 +
            e.tennisHours.length * 1500;

        List<int> hours = e.tennisHours;
        if (hours.isNotEmpty) {
          hours.sort((a, b) => a.compareTo(b));
          for (var i = 0; i < hours.length; i++) {
            final s = hours[i]; // 16
            final s1 = hours[i] + 1; //17

            final allText = 'с $s:00 до $s1:00';
            start.add(allText);
          }
        }
        final formatter = DateFormat('dd.MM.yyyy');
        final resDate = formatter.format(e.resDate);
        final dateNow = formatter.format(DateTime.now());
        final paymentDate =
            e.paymentTime != null ? formatter.format(e.paymentTime!) : null;
        List<VisitLogEntity> visitLog = [];
        if (e.visitLog.isNotEmpty) {
          for (var k = 0; k < e.visitLog.length; k++) {
            visitLog.add(VisitLogEntity(
              lock: e.visitLog[k].lock!,
              openedAt: DateFormat('dd.MM.yyyy HH:mm')
                  .format(e.visitLog[k].openedAt!),
            ));
          }
        }
        final title =
            e.court != null && (e.indSeatQty != 0 || e.famSeatQty != 0)
                ? 'Бассейн и Теннисный корт'
                : e.indSeatQty != 0 || e.famSeatQty != 0
                    ? 'Бассейн'
                    : e.court != null
                        ? 'Теннисный корт'
                        : '';
        return BookingEntity(
          id: e.id,
          durationTime: start.isNotEmpty ? start : null,
          title: title,
          bookingDate: e.resDate,
          famSeat: e.famSeatQty,
          indSeat: e.indSeatQty,
          isActive: resDate == dateNow,
          price: Price(amount: price, currencyCode: 'руб.'),
          tennisCourtNumber: e.court ?? 0,
          paymentTime: paymentDate,
          visitLog: visitLog,
        );
      }).toList();
      domain.sort((a, b) => (a.bookingDate).compareTo(b.bookingDate));
      return Right(domain);
    } on Exception catch (e) {
      // Возвращаем исключение
      return left(ExtendedErrors.simple(e.toString()));
    }
  }
}


// extension ListX on List<BookingDto> {
//   Either<ExtendedErrors, List<BookingEntity>> toDomain() {
//     try {
//       List<BookingEntity> listEntity = [];
//       for (var i = 0; i < length; i++) {
//         if (this[i].paymentStatus == 'w') continue;
//         List<String> start = [];
//         final price = this[i].famSeatQty * 3000 +
//             this[i].indSeatQty * 1000 +
//             this[i].tennisHours.length * 1500;

//         List<int> hours = this[i].tennisHours;
//         if (hours.isNotEmpty) {
//           hours.sort((a, b) => a.compareTo(b));
//           for (var i = 0; i < hours.length; i++) {
//             final s = hours[i]; // 16
//             final s1 = hours[i] + 1; //17

//             final allText = 'с $s:00 до $s1:00';
//             start.add(allText);
//           }
//         }
//         final resDate = DateFormat('dd.MM.yyyy').format(this[i].resDate);
//         final dateNow = DateFormat('dd.MM.yyyy').format(DateTime.now());

//         final domain = BookingEntity(
//           id: this[i].id,
//           title: (this[i].court ?? 0) == 0 ? 'Бассейн' : 'Теннисный корт',
//           bookingDate: this[i].resDate,
//           famSeat: this[i].famSeatQty,
//           indSeat: this[i].indSeatQty,
//           isActive: resDate == dateNow,
//           price: Price(amount: price, currencyCode: 'руб.'),
//           tennisCourtNumber: this[i].court ?? 0,
//           durationTime: start.isNotEmpty ? start : null,
//         );

//         listEntity.add(domain);
//       }

//       listEntity
//           .sort((a, b) => (a.bookingDate.day).compareTo(b.bookingDate.day));

//       return Right(listEntity);
//     } on Exception catch (e) {
//       // Возвращаем исключение
//       return left(ExtendedErrors.simple(e.toString()));
//     }
//   }
// }