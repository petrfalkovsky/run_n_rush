import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:riverside/core/safe_coding/safe_coding.dart';
import 'package:riverside/data/%20dto/bookings/post_booking_dto.dart';
import 'package:riverside/domain/bookings/check_reserved.dart';
import 'package:riverside/domain/bookings/post_bookings.dart';
import 'package:riverside/domain/core/extended_errors.dart';
import 'package:riverside/logic/repository/repository.dart';

part 'bookings_bloc.freezed.dart';

@prod
@lazySingleton
class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  BookingsBloc({Repository? repo})
      : _repo = repo ?? GetIt.I.get(),
        super(const BookingsState.initial()) {
    on<_GetCheckReserved>(_getCheckReserved);
    on<_GetPayment>(_getPayment);
    on<_GetPaymentPatch>(_getPaymentPatch);
  }

  final Repository _repo;

  Future _getCheckReserved(
      _GetCheckReserved event, Emitter<BookingsState> emit) async {
    emit(const BookingsState.loading());
    try {
      final res = await _repo.checkReserved(date: event.date);
      emit(BookingsState.allCheckReserved(res));
    } on Exception catch (e) {
      emit(BookingsState.allCheckReserved(
          left(ExtendedErrors.simple(e.toString()))));
    }
  }

  Future _getPayment(_GetPayment event, Emitter<BookingsState> emit) async {
    emit(const BookingsState.loading());
    try {
      final res = await _repo.reservationsPost(body: event.body);
      emit(BookingsState.gotPayment(res));
    } on Exception catch (e) {
      emit(BookingsState.gotPayment(left(ExtendedErrors.simple(e.toString()))));
    }
  }

  Future _getPaymentPatch(
      _GetPaymentPatch event, Emitter<BookingsState> emit) async {
    emit(const BookingsState.loading());
    try {
      final res = await _repo.reservationsPatch(id: event.id, body: event.body);
      emit(BookingsState.gotPaymentPatch(res));
    } on Exception catch (e) {
      emit(BookingsState.gotPaymentPatch(
          left(ExtendedErrors.simple(e.toString()))));
    }
  }
}

@freezed
class BookingsEvent with _$BookingsEvent {
  const factory BookingsEvent.getCheckReserved({required String date}) =
      _GetCheckReserved;
  const factory BookingsEvent.getPayment({required ReservationBody body}) =
      _GetPayment;
  const factory BookingsEvent.getPaymentPatch(
      {required String id,
      required ReservationPatchBody body}) = _GetPaymentPatch;
}

@freezed
class BookingsState with _$BookingsState {
  const factory BookingsState.initial() = _Initial;
  const factory BookingsState.loading() = _Loading;

  const factory BookingsState.allCheckReserved(
      Either<ExtendedErrors, List<CheckReserved>> data) = _AllCheckReserved;

  const factory BookingsState.gotPayment(
      Either<ExtendedErrors, PostBookings> data) = _GotPayment;
  const factory BookingsState.gotPaymentPatch(
      Either<ExtendedErrors, PostBookings> data) = _GotPaymentPatch;
}
