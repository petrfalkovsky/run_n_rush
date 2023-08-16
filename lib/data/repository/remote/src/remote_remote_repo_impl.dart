import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:riverside/core/safe_coding/safe_coding.dart';
import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/data/%20dto/auth/detail.dart';
import 'package:riverside/data/%20dto/auth/sign_in.dart';
import 'package:riverside/data/%20dto/auth/sign_up.dart';
import 'package:riverside/data/%20dto/bookings/bookings_dto.dart';
import 'package:riverside/data/%20dto/bookings/post_booking_dto.dart';
import 'package:riverside/data/%20dto/my_booking/booking_dto.dart';
import 'package:riverside/data/%20dto/qr/qr_dto.dart';
import 'package:riverside/data/%20dto/settings/change_email_dto.dart';
import 'package:riverside/data/%20dto/settings/profile_dto.dart';
import 'package:riverside/data/repository/remote/remote_repository.dart';
import 'package:riverside/data/repository/remote/src/http/api_client.dart';
import 'package:riverside/domain/auth/detail.dart';
import 'package:riverside/domain/auth/user_data.dart';
import 'package:riverside/domain/bookings/check_reserved.dart';
import 'package:riverside/domain/bookings/post_bookings.dart';
import 'package:riverside/domain/core/extended_errors.dart';
import 'package:riverside/domain/my_booking/booking_entity.dart';
import 'package:riverside/domain/qr_code/qr_code.dart';
import 'package:riverside/domain/profile/profile_info.dart';

/// Имплементация
@prod
@LazySingleton(as: RemoteRepository)
class MockRemoteRepositoryImpl implements RemoteRepository {
  MockRemoteRepositoryImpl({
    ApiClient? apiClient,
  }) : _client = apiClient ?? GetIt.I.get();

  final ApiClient _client;

  @override
  Future<Either<ExtendedErrors, UserData>> signIn(
      {required String email, required String password}) async {
    return _safeFunc(() async {
      final client = _client.getClient();
      final dto = await client.signIn(
        SignInBody(
          email: email,
          password: password,
        ),
      );
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, UserData>> signUp(
      {required SignUpBody body}) async {
    final client = _client.getClient();
    final dto = await client.signUp(body);
    final domain = dto.toDomain();
    return domain;
  }

  @override
  Future<Either<ExtendedErrors, UserData>> emailVerify(
      {required EmailVerifyBody body}) async {
    final client = _client.getClient();
    final dto = await client.emailVerify(body);
    final domain = dto.toDomain();
    return domain;
  }

  @override
  Future<Either<ExtendedErrors, Detail>> resetPassword(
      {required ResetPasswordBody body}) async {
    return _safeFunc(() async {
      final client = _client.getClient();

      final dto = await client.resetPassword(body);
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, Detail>> changePassword(
      {required ChangePasswordBody body}) async {
    return _safeFunc(() async {
      final client = _client.getClient();

      final dto = await client.changePassword(body);
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, Detail>> logout(String refreshToken) async {
    return _safeFunc(() async {
      final client = _client.getClient();
      final dto = await client.logout(LogoutBody(refresh: refreshToken));
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, List<BookingEntity>>> reservations() {
    return _safeFunc(() async {
      final client = _client.getClient();
      final dto = await client.reservations();
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, PostBookings>> reservationsPost(
      {required ReservationBody body}) async {
    return _safeFunc(() async {
      final client = _client.getClient();

      final dto = await client.reservationsPost(body);
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, PostBookings>> reservationsPatch(
      {required String id, required ReservationPatchBody body}) async {
    return _safeFunc(() async {
      final client = _client.getClient();

      final dto = await client.reservationsPatch(id, body);
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, List<CheckReserved>>> checkReserved(
      {required String date}) async {
    return _safeFunc(() async {
      final client = _client.getClient();

      final dto = await client.checkReserved(date);
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, QRCode>> getOpenLock(
      {required OpenLockBody body}) async {
    return _safeFunc(() async {
      final client = _client.getClient();

      final dto = await client.getOpenLock(body);
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, Detail>> emailChange(ChangeEmailBody body) {
    return _safeFunc(() async {
      final client = _client.getClient();
      final dto = await client.emailChange(body);
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, Detail>> emailChangeConfirm(
      ChangeEmailConfirmBody body) {
    return _safeFunc(() async {
      final client = _client.getClient();
      final dto = await client.emailChangeConfirm(body);
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, ProfileInfo>> getProfile() {
    return _safeFunc(() async {
      final client = _client.getClient();
      final dto = await client.getProfile();
      final domain = dto.toDomain();
      return domain;
    });
  }

  @override
  Future<Either<ExtendedErrors, ProfileInfo>> changeProfile(ProfileBody body) {
    return _safeFunc(() async {
      final client = _client.getClient();
      final dto = await client.changeProfile(body);
      final domain = dto.toDomain();
      return domain;
    });
  }

  Future<Either<ExtendedErrors, R>> _safeFunc<R>(
      Future<Either<ExtendedErrors, R>> Function() f) async {
    try {
      final r = await f.call();
      return r;
    } on Error catch (e) {
      debugPrint('ERROR _safeFunc: $e \n ${e.runtimeType} \n ${e.stackTrace}');
      return left(ExtendedErrors.simple(e.toString()));
    } on Exception catch (e) {
      debugPrint('Exception _safeFunc: $e \n ${e.runtimeType}');
      return left(ExtendedErrors.simple(e.toString()));
    }
  }

  // Future<Either<String, R>> _safeFuncS<R>(
  //     Future<Either<String, R>> Function() f) async {
  //   try {
  //     final r = await f.call();
  //     return r;
  //   } on Exception catch (e) {
  //     return left(e.toString());
  //   }
  // }

  // Future<Either<List<String>, R>> _safeFuncLS<R>(
  //     Future<Either<List<String>, R>> Function() f) async {
  //   try {
  //     final r = await f.call();
  //     return r;
  //   } on Exception catch (e) {
  //     return left([e.toString()]);
  //   }
  // }
}
