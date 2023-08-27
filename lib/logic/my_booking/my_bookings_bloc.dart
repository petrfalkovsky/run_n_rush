// import 'package:bloc/bloc.dart';
// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
// import 'package:run_n_rush/core/safe_coding/safe_coding.dart';
// import 'package:run_n_rush/domain/core/extended_errors.dart';
// import 'package:run_n_rush/domain/my_booking/booking_entity.dart';
// import 'package:run_n_rush/logic/repository/repository.dart';

// part 'my_bookings_bloc.freezed.dart';

// @prod
// @lazySingleton
// class MyBookingsBloc extends Bloc<MyBookingsEvent, MyBookingsState> {
//   MyBookingsBloc({Repository? repo})
//       : _repo = repo ?? GetIt.I.get(),
//         super(const MyBookingsState.initial()) {
//     on<_GetReservations>(_getReservations);
//   }

//   final Repository _repo;

//   Future _getReservations(
//       _GetReservations event, Emitter<MyBookingsState> emit) async {
//     emit(const MyBookingsState.loading());
//     try {
//       final res = await _repo.reservations();
//       emit(MyBookingsState.allReservations(res));
//     } on Exception catch (e) {
//       emit(MyBookingsState.allReservations(
//           left(ExtendedErrors.simple(e.toString()))));
//     }
//   }
// }

// @freezed
// class MyBookingsEvent with _$MyBookingsEvent {
//   const factory MyBookingsEvent.getReservations() = _GetReservations;
// }

// @freezed
// class MyBookingsState with _$MyBookingsState {
//   const factory MyBookingsState.initial() = _Initial;
//   const factory MyBookingsState.loading() = _Loading;

//   const factory MyBookingsState.allReservations(
//       Either<ExtendedErrors, List<BookingEntity>> data) = _AllReservations;
// }
