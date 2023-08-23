import 'package:flutter/foundation.dart';
import 'package:run_n_rush/core/safe_coding/safe_coding.dart';
import 'package:run_n_rush/data/%20dto/auth/detail.dart';
import 'package:run_n_rush/data/%20dto/auth/sign_up.dart';
import 'package:run_n_rush/data/%20dto/bookings/post_booking_dto.dart';
import 'package:run_n_rush/data/%20dto/qr/qr_dto.dart';
import 'package:run_n_rush/data/%20dto/settings/change_email_dto.dart';
import 'package:run_n_rush/data/%20dto/settings/profile_dto.dart';
import 'package:run_n_rush/domain/auth/detail.dart';
import 'package:run_n_rush/domain/auth/user_data.dart';
import 'package:run_n_rush/domain/bookings/check_reserved.dart';
import 'package:run_n_rush/domain/bookings/post_bookings.dart';
import 'package:run_n_rush/domain/core/extended_errors.dart';
import 'package:run_n_rush/domain/my_booking/booking_entity.dart';
import 'package:run_n_rush/domain/qr_code/qr_code.dart';
import 'package:run_n_rush/domain/profile/profile_info.dart';

abstract class Repository extends ChangeNotifier {
  Future<Either<ExtendedErrors, UserData>> signIn(
      {required String email, required String password});

  Future<Either<ExtendedErrors, UserData>> signUp({required SignUpBody body});

  Future<Either<ExtendedErrors, UserData>> emailVerify(
      {required EmailVerifyBody body});

  Future<Either<ExtendedErrors, Detail>> resetPassword(
      {required ResetPasswordBody body});
  Future<Either<ExtendedErrors, Detail>> changePassword(
      {required ChangePasswordBody body});
  Future<Either<ExtendedErrors, Detail>> logout(String refreshToken);
  Future<Either<ExtendedErrors, List<BookingEntity>>> reservations();
  Future<Either<ExtendedErrors, List<CheckReserved>>> checkReserved(
      {required String date});

  Future<Either<ExtendedErrors, PostBookings>> reservationsPost(
      {required ReservationBody body});

  Future<Either<ExtendedErrors, Detail>> emailChange(
      {required ChangeEmailBody body});

  Future<Either<ExtendedErrors, Detail>> emailChangeConfirm(
      {required ChangeEmailConfirmBody body});

  Future<Either<ExtendedErrors, ProfileInfo>> getProfile();

  Future<Either<ExtendedErrors, ProfileInfo>> changeProfile(
      {required ProfileBody body});
  Future<Either<ExtendedErrors, PostBookings>> reservationsPatch(
      {required String id, required ReservationPatchBody body});
  Future<Either<ExtendedErrors, QRCode>> getOpenLock(
      {required OpenLockBody body});
}
