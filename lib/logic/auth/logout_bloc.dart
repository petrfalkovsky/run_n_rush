import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:run_n_rush/core/safe_coding/safe_coding.dart';
import 'package:run_n_rush/domain/auth/detail.dart';
import 'package:run_n_rush/domain/core/extended_errors.dart';
import 'package:run_n_rush/logic/repository/repository.dart';

part 'logout_bloc.freezed.dart';

@prod
@lazySingleton
class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc({Repository? repo})
      : _repo = repo ?? GetIt.I.get(),
        super(const LogoutState.initial()) {
    on<_GetLogoutEvent>(_getLogout);
  }

  final Repository _repo;

  Future _getLogout(_GetLogoutEvent event, Emitter<LogoutState> emit) async {
    emit(const LogoutState.loading());
    try {
      final res = await _repo.logout(event.refreshToken);
      emit(LogoutState.gotLogout(res));
    } on Exception catch (e) {
      emit(LogoutState.gotLogout(left(ExtendedErrors.simple(e.toString()))));
    }
  }
}

@freezed
class LogoutEvent with _$LogoutEvent {
  const factory LogoutEvent.getLogout(String refreshToken) = _GetLogoutEvent;
}

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.loading() = _Loading;

  const factory LogoutState.gotLogout(Either<ExtendedErrors, Detail> data) =
      _GotLogout;
}
