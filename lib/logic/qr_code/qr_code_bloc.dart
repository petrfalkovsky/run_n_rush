import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:run_n_rush/core/safe_coding/safe_coding.dart';
import 'package:run_n_rush/data/%20dto/qr/qr_dto.dart';
import 'package:run_n_rush/domain/core/extended_errors.dart';
import 'package:run_n_rush/domain/qr_code/qr_code.dart';
import 'package:run_n_rush/logic/repository/repository.dart';

part 'qr_code_bloc.freezed.dart';

@prod
@lazySingleton
class QRCodeBloc extends Bloc<QRCodeEvent, QRCodeState> {
  QRCodeBloc({Repository? repo})
      : _repo = repo ?? GetIt.I.get(),
        super(const QRCodeState.initial()) {
    on<_GetQRCode>(_getQRCode);
  }

  final Repository _repo;

  Future _getQRCode(_GetQRCode event, Emitter<QRCodeState> emit) async {
    emit(const QRCodeState.loading());
    try {
      final res = await _repo.getOpenLock(body: event.body);
      emit(QRCodeState.gotQRCode(res));
    } on Exception catch (e) {
      emit(QRCodeState.gotQRCode(left(ExtendedErrors.simple(e.toString()))));
    }
  }
}

@freezed
class QRCodeEvent with _$QRCodeEvent {
  const factory QRCodeEvent.getOpenLock({required OpenLockBody body}) =
      _GetQRCode;
}

@freezed
class QRCodeState with _$QRCodeState {
  const factory QRCodeState.initial() = _Initial;
  const factory QRCodeState.loading() = _Loading;

  const factory QRCodeState.gotQRCode(Either<ExtendedErrors, QRCode> data) =
      _GotQRCode;
}
