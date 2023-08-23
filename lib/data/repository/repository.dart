import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:run_n_rush/core/safe_coding/safe_coding.dart';
import 'package:run_n_rush/data/%20dto/auth/detail.dart';
import 'package:run_n_rush/data/%20dto/auth/sign_up.dart';
import 'package:run_n_rush/data/%20dto/bookings/post_booking_dto.dart';
import 'package:run_n_rush/data/%20dto/qr/qr_dto.dart';
import 'package:run_n_rush/data/%20dto/settings/change_email_dto.dart';
import 'package:run_n_rush/data/%20dto/settings/profile_dto.dart';
import 'package:run_n_rush/data/repository/local/local_repository.dart';
import 'package:run_n_rush/data/repository/remote/remote_repository.dart';
import 'package:run_n_rush/domain/auth/detail.dart';
import 'package:run_n_rush/domain/auth/user_data.dart';
import 'package:run_n_rush/domain/bookings/check_reserved.dart';
import 'package:run_n_rush/domain/bookings/post_bookings.dart';
import 'package:run_n_rush/domain/core/extended_errors.dart';
import 'package:run_n_rush/domain/my_booking/booking_entity.dart';
import 'package:run_n_rush/domain/qr_code/qr_code.dart';
import 'package:run_n_rush/domain/profile/profile_info.dart';
import 'package:run_n_rush/logic/repository/repository.dart';

@prod
@LazySingleton(as: Repository)
class RepositoryImpl extends Repository {
  RepositoryImpl(LocalRepository? local, RemoteRepository? remote)
      : _local = local ?? GetIt.I.get(),
        _remote = remote ?? GetIt.I.get();

  // ignore: unused_field
  final LocalRepository _local;
  final RemoteRepository _remote;

  @override
  Future<Either<ExtendedErrors, UserData>> signIn(
      {required String email, required String password}) {
    return _remote.signIn(email: email, password: password);
  }

  @override
  Future<Either<ExtendedErrors, UserData>> signUp({required SignUpBody body}) {
    return _remote.signUp(body: body);
  }

  @override
  Future<Either<ExtendedErrors, UserData>> emailVerify(
      {required EmailVerifyBody body}) {
    return _remote.emailVerify(body: body);
  }

  @override
  Future<Either<ExtendedErrors, Detail>> resetPassword(
      {required ResetPasswordBody body}) async {
    return await _remote.resetPassword(body: body);
  }

  @override
  Future<Either<ExtendedErrors, Detail>> changePassword(
      {required ChangePasswordBody body}) async {
    return await _remote.changePassword(body: body);
  }

  @override
  Future<Either<ExtendedErrors, Detail>> logout(String refreshToken) async {
    return await _remote.logout(refreshToken);
  }

  @override
  Future<Either<ExtendedErrors, List<BookingEntity>>> reservations() async {
    return await _remote.reservations();
  }

  @override
  Future<Either<ExtendedErrors, PostBookings>> reservationsPost(
      {required ReservationBody body}) async {
    return await _remote.reservationsPost(body: body);
  }

  @override
  Future<Either<ExtendedErrors, PostBookings>> reservationsPatch(
      {required String id, required ReservationPatchBody body}) async {
    return await _remote.reservationsPatch(id: id, body: body);
  }

  @override
  Future<Either<ExtendedErrors, List<CheckReserved>>> checkReserved(
      {required String date}) async {
    return await _remote.checkReserved(date: date);
  }

  @override
  Future<Either<ExtendedErrors, QRCode>> getOpenLock(
      {required OpenLockBody body}) async {
    return await _remote.getOpenLock(body: body);
  }

  @override
  Future<Either<ExtendedErrors, Detail>> emailChange(
      {required ChangeEmailBody body}) async {
    return await _remote.emailChange(body);
  }

  @override
  Future<Either<ExtendedErrors, Detail>> emailChangeConfirm(
      {required ChangeEmailConfirmBody body}) async {
    return await _remote.emailChangeConfirm(body);
  }

  @override
  Future<Either<ExtendedErrors, ProfileInfo>> getProfile() async {
    return await _remote.getProfile();
  }

  @override
  Future<Either<ExtendedErrors, ProfileInfo>> changeProfile(
      {required ProfileBody body}) async {
    return await _remote.changeProfile(body);
  }
}
