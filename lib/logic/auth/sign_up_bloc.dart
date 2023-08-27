// import 'package:bloc/bloc.dart';
// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
// import 'package:run_n_rush/core/safe_coding/src/either.dart';
// import 'package:run_n_rush/data/%20dto/auth/sign_up.dart';
// import 'package:run_n_rush/domain/auth/user_data.dart';
// import 'package:run_n_rush/domain/core/extended_errors.dart';
// import 'package:run_n_rush/logic/repository/repository.dart';

// part 'sign_up_bloc.freezed.dart';

// @prod
// @lazySingleton
// class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
//   SignUpBloc({Repository? repo})
//       : _repo = repo ?? GetIt.I.get(),
//         super(const SignUpState.initial()) {
//     on<_GetSignUpEvent>(_getSignUp);
//     on<_GetCodeEvent>(_getCode);
//   }

//   final Repository _repo;

//   Future _getSignUp(_GetSignUpEvent event, Emitter<SignUpState> emit) async {
//     emit(const SignUpState.loading());
//     try {
//       final res = await _repo.signUp(body: event.body);
//       emit(SignUpState.gotSignUp(res));
//     } on Exception catch (e) {
//       debugPrint('Exception _getSignUp:  $e');
//       emit(SignUpState.gotSignUp(left(ExtendedErrors.simple(e.toString()))));
//     }
//   }

//   Future _getCode(_GetCodeEvent event, Emitter<SignUpState> emit) async {
//     emit(const SignUpState.loading());
//     try {
//       final res = await _repo.emailVerify(body: event.body);
//       emit(SignUpState.gotCode(res));
//     } on Exception catch (e) {
//       debugPrint('Exception _getCode:  $e');
//       emit(SignUpState.gotCode(left(ExtendedErrors.simple(e.toString()))));
//     }
//   }
// }

// @freezed
// class SignUpEvent with _$SignUpEvent {
//   const factory SignUpEvent.getSignUp({required SignUpBody body}) =
//       _GetSignUpEvent;
//   const factory SignUpEvent.getCode({required EmailVerifyBody body}) =
//       _GetCodeEvent;
// }

// @freezed
// class SignUpState with _$SignUpState {
//   const factory SignUpState.initial() = _Initial;
//   const factory SignUpState.loading() = _Loading;

//   const factory SignUpState.gotSignUp(Either<ExtendedErrors, UserData> data) =
//       _GotSignUp;
//   const factory SignUpState.gotCode(Either<ExtendedErrors, UserData> data) =
//       _GotCode;
// }
