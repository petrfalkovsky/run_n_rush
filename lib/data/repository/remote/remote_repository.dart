import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/data/%20dto/auth/detail.dart';
import 'package:riverside/data/%20dto/auth/sign_up.dart';
import 'package:riverside/data/%20dto/bookings/post_booking_dto.dart';
import 'package:riverside/data/%20dto/qr/qr_dto.dart';
import 'package:riverside/data/%20dto/settings/change_email_dto.dart';
import 'package:riverside/data/%20dto/settings/profile_dto.dart';
import 'package:riverside/domain/auth/detail.dart';
import 'package:riverside/domain/auth/user_data.dart';
import 'package:riverside/domain/bookings/check_reserved.dart';
import 'package:riverside/domain/bookings/post_bookings.dart';
import 'package:riverside/domain/core/extended_errors.dart';
import 'package:riverside/domain/my_booking/booking_entity.dart';
import 'package:riverside/domain/qr_code/qr_code.dart';
import 'package:riverside/domain/profile/profile_info.dart';

/// Абстракция удаленного репозитория.
abstract class RemoteRepository {
  Future<Either<ExtendedErrors, UserData>> signIn({
    required String email,
    required String password,
  });

  Future<Either<ExtendedErrors, UserData>> signUp({required SignUpBody body});

  Future<Either<ExtendedErrors, UserData>> emailVerify(
      {required EmailVerifyBody body});

  Future<Either<ExtendedErrors, Detail>> resetPassword(
      {required ResetPasswordBody body});
  Future<Either<ExtendedErrors, Detail>> changePassword(
      {required ChangePasswordBody body});

  Future<Either<ExtendedErrors, Detail>> logout(String refreshToken);
  Future<Either<ExtendedErrors, Detail>> emailChange(ChangeEmailBody newEmail);
  Future<Either<ExtendedErrors, Detail>> emailChangeConfirm(
      ChangeEmailConfirmBody body);
  Future<Either<ExtendedErrors, ProfileInfo>> getProfile();
  Future<Either<ExtendedErrors, ProfileInfo>> changeProfile(ProfileBody body);
  Future<Either<ExtendedErrors, List<BookingEntity>>> reservations();
  Future<Either<ExtendedErrors, List<CheckReserved>>> checkReserved(
      {required String date});

  Future<Either<ExtendedErrors, PostBookings>> reservationsPost(
      {required ReservationBody body});
  Future<Either<ExtendedErrors, PostBookings>> reservationsPatch(
      {required String id, required ReservationPatchBody body});
  Future<Either<ExtendedErrors, QRCode>> getOpenLock(
      {required OpenLockBody body});
}
