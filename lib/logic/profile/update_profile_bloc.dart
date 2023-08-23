import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:run_n_rush/core/safe_coding/safe_coding.dart';
import 'package:run_n_rush/data/%20dto/auth/detail.dart';
import 'package:run_n_rush/data/%20dto/settings/change_email_dto.dart';
import 'package:run_n_rush/data/%20dto/settings/profile_dto.dart';
import 'package:run_n_rush/domain/auth/detail.dart';
import 'package:run_n_rush/domain/core/extended_errors.dart';
import 'package:run_n_rush/domain/profile/profile_info.dart';
import 'package:run_n_rush/logic/repository/repository.dart';

part 'update_profile_bloc.freezed.dart';

@prod
@lazySingleton
class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  UpdateProfileBloc({Repository? repo})
      : _repo = repo ?? GetIt.I.get(),
        super(const UpdateProfileState.initial()) {
    on<_ChangePasswordEvent>(_getChangePassword);
    on<_GetVerifyCodeEvent>(_getVerifyCode);
    on<_ChangeEmailEvent>(_changeEmail);
    on<_ChangeProfileEvent>(_changeProfile);
  }

  final Repository _repo;

  Future _getChangePassword(
      _ChangePasswordEvent event, Emitter<UpdateProfileState> emit) async {
    emit(const UpdateProfileState.loading());
    try {
      final res = await _repo.changePassword(
        body: ChangePasswordBody(
          oldPassword: event.oldPassword,
          newPassword: event.newPassword,
        ),
      );
      emit(UpdateProfileState.gotChangePassword(res));
    } on Exception catch (e) {
      emit(UpdateProfileState.gotChangePassword(
          left(ExtendedErrors.simple(e.toString()))));
    }
  }

  Future _getVerifyCode(
      _GetVerifyCodeEvent event, Emitter<UpdateProfileState> emit) async {
    emit(const UpdateProfileState.loading());
    try {
      final res = await _repo.emailChange(
        body: event.body,
      );
      emit(UpdateProfileState.getVerifyCode(res));
    } on Exception catch (e) {
      emit(UpdateProfileState.getVerifyCode(
          left(ExtendedErrors.simple(e.toString()))));
    }
  }

  Future _changeEmail(
      _ChangeEmailEvent event, Emitter<UpdateProfileState> emit) async {
    emit(const UpdateProfileState.loading());
    try {
      await _repo.emailChangeConfirm(body: event.body);
      final res = await _repo.getProfile();
      emit(UpdateProfileState.gotChangeEmail(res));
    } on Exception catch (e) {
      emit(UpdateProfileState.gotChangeEmail(
          left(ExtendedErrors.simple(e.toString()))));
    }
  }

  Future _changeProfile(
      _ChangeProfileEvent event, Emitter<UpdateProfileState> emit) async {
    emit(const UpdateProfileState.loading());
    try {
      final res = await _repo.changeProfile(
        body: event.profileDto,
      );
      emit(UpdateProfileState.gotChangeProfile(res));
    } on Exception catch (e) {
      emit(UpdateProfileState.gotChangeProfile(
          left(ExtendedErrors.simple(e.toString()))));
    }
  }
}

@freezed
class UpdateProfileEvent with _$UpdateProfileEvent {
  const factory UpdateProfileEvent.changePassword({
    required String oldPassword,
    required String newPassword,
  }) = _ChangePasswordEvent;
  const factory UpdateProfileEvent.getVerifyCode({
    required ChangeEmailBody body,
  }) = _GetVerifyCodeEvent;
  const factory UpdateProfileEvent.changeEmail({
    required ChangeEmailConfirmBody body,
  }) = _ChangeEmailEvent;
  const factory UpdateProfileEvent.changeProfile({
    required ProfileBody profileDto,
  }) = _ChangeProfileEvent;
}

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = _Initial;
  const factory UpdateProfileState.loading() = _Loading;

  const factory UpdateProfileState.gotChangePassword(
      Either<ExtendedErrors, Detail> data) = _GotChangePassword;

  const factory UpdateProfileState.getVerifyCode(
      Either<ExtendedErrors, Detail> data) = _GetVerifyCode;

  const factory UpdateProfileState.gotChangeEmail(
      Either<ExtendedErrors, ProfileInfo> data) = _GotChangeEmail;

  const factory UpdateProfileState.gotChangeProfile(
      Either<ExtendedErrors, ProfileInfo> data) = _GotChangeProfile;
}
