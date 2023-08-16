import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/data/%20dto/auth/detail.dart';
import 'package:riverside/domain/auth/detail.dart';
import 'package:riverside/domain/auth/user_data.dart';
import 'package:riverside/domain/core/extended_errors.dart';
import 'package:riverside/logic/repository/repository.dart';

part 'sign_in_bloc.freezed.dart';

@prod
@lazySingleton
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({Repository? repo})
      : _repo = repo ?? GetIt.I.get(),
        super(const SignInState.initial()) {
    on<_GetSignInEvent>(_getSignIn);
    on<_GetResetPasswordEvent>(_getResetPassword);
  }

  final Repository _repo;

  Future _getSignIn(_GetSignInEvent event, Emitter<SignInState> emit) async {
    emit(const SignInState.loading());
    try {
      final res = await _repo.signIn(
        email: event.email,
        password: event.password,
      );
      emit(SignInState.gotSignIn(res));
    } on Exception catch (e) {
      debugPrint('Exception _getSignIn:  $e');
      emit(SignInState.gotSignIn(left(ExtendedErrors.simple(e.toString()))));
    }
  }

  Future _getResetPassword(
      _GetResetPasswordEvent event, Emitter<SignInState> emit) async {
    emit(const SignInState.loading());
    try {
      final res = await _repo.resetPassword(
        body: ResetPasswordBody(email: event.email),
      );
      emit(SignInState.gotRessetPassword(res));
    } on Exception catch (e) {
      debugPrint('Exception _getResetPassword:  $e');
      emit(SignInState.gotRessetPassword(
          left(ExtendedErrors.simple(e.toString()))));
    }
  }
}

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.getSignIn({
    required String email,
    required String password,
  }) = _GetSignInEvent;
  const factory SignInEvent.getResetPassword({
    required String email,
  }) = _GetResetPasswordEvent;
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = _Loading;

  const factory SignInState.gotSignIn(Either<ExtendedErrors, UserData> data) =
      _GotSignIn;
  const factory SignInState.gotRessetPassword(
      Either<ExtendedErrors, Detail> data) = _GotResetPassword;
}
