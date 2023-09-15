import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:run_n_rush/data/dto/auth/src/auth.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://runrushapi.pp.ua')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @POST('/api/auth/send_code')
  Future<UserDataDto> senCode();

  @POST('/api/auth/login_or_signup')
  Future<UserDataDto> signInOrUp();
}



// @RestApi()
// abstract class RestClient {
//   factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

//   @POST('/api/v1/auth/login/')
//   Future<UserDataDto> signIn(@Body() SignInBody body);

//   @POST('/api/v1/auth/signup/')
//   Future<UserDataDto> signUp(@Body() SignUpBody body);

//   @POST('/api/v1/auth/email/verify/')
//   Future<UserDataDto> emailVerify(@Body() EmailVerifyBody body);

//   @POST('/api/v1/auth/password/reset/')
//   Future<DetailDto> resetPassword(@Body() ResetPasswordBody body);

//   @POST('/api/v1/auth/password/change/')
//   Future<DetailDto> changePassword(@Body() ChangePasswordBody body);

//   @POST('/api/v1/auth/logout/')
//   Future<DetailDto> logout(@Body() LogoutBody refreshToken);

//   @POST('/api/v1/auth/email/change/')
//   Future<DetailDto> emailChange(@Body() ChangeEmailBody newEmail);

//   @POST('/api/v1/auth/email/change/confirm/')
//   Future<DetailDto> emailChangeConfirm(@Body() ChangeEmailConfirmBody body);

//   @GET('/api/v1/auth/profile/')
//   Future<ProfileDto> getProfile();

//   @PATCH('/api/v1/auth/profile/')
//   Future<ProfileDto> changeProfile(@Body() ProfileBody body);

//   @GET('/api/v1/client/reservations/')
//   Future<List<BookingDto>> reservations();

//   @POST('/api/v1/client/reservations/')
//   Future<PostBookingDto> reservationsPost(@Body() ReservationBody body);

//   @PATCH('/api/v1/client/reservations/{id}/')
//   Future<PostBookingDto> reservationsPatch(
//     @Path('id') String id,
//     @Body() ReservationPatchBody body,
//   );

//   @GET('/api/v1/services/check_reserved/{date}/')
//   Future<CheckReservedDto> checkReserved(@Path('date') String date);

//   @POST('/api/v1/services/open_lock/')
//   Future<QRCodeDto> getOpenLock(@Body() OpenLockBody body);
// }
