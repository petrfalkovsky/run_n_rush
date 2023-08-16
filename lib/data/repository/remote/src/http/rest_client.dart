import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverside/data/%20dto/auth/detail.dart';
import 'package:riverside/data/%20dto/auth/sign_in.dart';
import 'package:riverside/data/%20dto/auth/auth_dto.dart';
import 'package:riverside/data/%20dto/auth/sign_up.dart';
import 'package:riverside/data/%20dto/bookings/bookings_dto.dart';
import 'package:riverside/data/%20dto/my_booking/booking_dto.dart';
import 'package:riverside/data/%20dto/bookings/post_booking_dto.dart';
import 'package:riverside/data/%20dto/qr/qr_dto.dart';
import 'package:riverside/data/%20dto/settings/change_email_dto.dart';
import 'package:riverside/data/%20dto/settings/profile_dto.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @POST('/api/v1/auth/login/')
  Future<UserDataDto> signIn(@Body() SignInBody body);

  @POST('/api/v1/auth/signup/')
  Future<UserDataDto> signUp(@Body() SignUpBody body);

  @POST('/api/v1/auth/email/verify/')
  Future<UserDataDto> emailVerify(@Body() EmailVerifyBody body);

  @POST('/api/v1/auth/password/reset/')
  Future<DetailDto> resetPassword(@Body() ResetPasswordBody body);

  @POST('/api/v1/auth/password/change/')
  Future<DetailDto> changePassword(@Body() ChangePasswordBody body);

  @POST('/api/v1/auth/logout/')
  Future<DetailDto> logout(@Body() LogoutBody refreshToken);

  @POST('/api/v1/auth/email/change/')
  Future<DetailDto> emailChange(@Body() ChangeEmailBody newEmail);

  @POST('/api/v1/auth/email/change/confirm/')
  Future<DetailDto> emailChangeConfirm(@Body() ChangeEmailConfirmBody body);

  @GET('/api/v1/auth/profile/')
  Future<ProfileDto> getProfile();

  @PATCH('/api/v1/auth/profile/')
  Future<ProfileDto> changeProfile(@Body() ProfileBody body);

  @GET('/api/v1/client/reservations/')
  Future<List<BookingDto>> reservations();

  @POST('/api/v1/client/reservations/')
  Future<PostBookingDto> reservationsPost(@Body() ReservationBody body);

  @PATCH('/api/v1/client/reservations/{id}/')
  Future<PostBookingDto> reservationsPatch(
    @Path('id') String id,
    @Body() ReservationPatchBody body,
  );

  @GET('/api/v1/services/check_reserved/{date}/')
  Future<CheckReservedDto> checkReserved(@Path('date') String date);

  @POST('/api/v1/services/open_lock/')
  Future<QRCodeDto> getOpenLock(@Body() OpenLockBody body);
}
