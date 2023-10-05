import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/data/dto/auth/src/user_data/user_data_token.dart';
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';

import '../../../../dto/referral/referral.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://runrushapi.pp.ua')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    // открываю и получаем токен из хранилища

    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };
    return _ApiService(dio, baseUrl: baseUrl);
  }

  @POST('/api/auth/send_code')
  Future<void> sendCode(@Body() Map<String, dynamic> data);

  @POST('/api/auth/login_or_signup')
  Future<UserDataToken> loginOrSignup(@Body() Map<String, dynamic> data);

  @POST('/api/auth/jwt/verify')
  Future<void> verifyToken(@Body() Map<String, dynamic> data);

  @POST('/api/auth/jwt/refresh')
  Future<void> refreshToken(@Body() Map<String, dynamic> data);

  @GET('/api/sneaker/inventories')
  Future<List<SneakerInventory>> getSneakerInventories(
    @Query('dress_status') String dressStatus,
    @Query('earned_amount_ordering') String earnedAmountOrdering,
    @Query('offset') int offset,
  );

  @GET('/api/referral/rewards')
  Future<List<ReferralRewardsDto>> referallRewards();

  @GET('/api/referral/profile')
  Future<ReferralProfileDto> getReferralProfile();
}
