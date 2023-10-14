import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:run_n_rush/data/dto/account/account.dart';
import 'package:run_n_rush/data/dto/auth/src/user_data/user_data_token.dart';
import 'package:run_n_rush/data/dto/referral/referral.dart';
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/data/dto/sneakers/src/shop.dart';
import 'package:run_n_rush/data/dto/walking/walking.dart';

import 'token_interceptor.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://runrushapi.pp.ua')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    dio.interceptors.add(TokenInterceptor()); // Add the interceptor here
    return _ApiService(dio, baseUrl: baseUrl);
  }

  /// authentication

  @POST('/api/auth/send_code')
  Future<void> sendCode(@Body() Map<String, dynamic> data);

  @POST('/api/auth/login_or_signup')
  Future<UserDataTokenDto> loginOrSignup(@Body() Map<String, dynamic> data);

  @POST('/api/auth/jwt/verify')
  Future<void> verifyToken(@Body() Map<String, dynamic> data);

  @POST('/api/auth/jwt/refresh')
  Future<void> refreshToken(@Body() Map<String, dynamic> data);

  /// sneakers: inventories

  @GET('/api/sneaker/inventories')
  Future<List<SneakerInventoryDto>> getSneakerInventories(
    @Query('dress_status') String dressStatus,
    @Query('earned_amount_ordering') String earnedAmountOrdering,
    @Query('offset') int offset,
  );

  // использую модели SneakerPostRequest и SneakerPostResponse
  @POST('/api/sneaker/inventories/put_on')
  Future<void> putOn(@Body() Map<String, dynamic> data);

  // использую модели SneakerPostRequest и SneakerPostResponse
  @POST('/api/sneaker/inventories/take_off')
  Future<void> takeOff(@Body() Map<String, dynamic> data);

  /// sneakers: shop

  // использую модели SneakerPostRequest и SneakerPostResponse
  @POST('/api/sneaker/buy_sneaker')
  Future<void> buySneaker(@Body() Map<String, dynamic> data);

  @GET('/api/sneaker/selling_orders')
  Future<List<SneakerShopDto>> getSneakerShop(
    @Query('price_ordering') String priceOrdering,
    @Query('offset') int offset,
  );

  /// sneakers: walking

  @GET('/api/sneaker/walking')
  Future<WalkingDataDto> getWalkingData();

  @POST('/api/sneaker/walking/start')
  Future<WalkingStartDto> walkingStart(Map<String, dynamic> data);

  @POST('/api/sneaker/walking/update')
  Future<WalkingUpdateDto> walkingUpdate(@Body() Map<String, dynamic> data);

  @POST('/api/sneaker/walking/finish')
  Future<WalkingFinishDto> walkingFinish(@Body() Map<String, dynamic> data);

  /// referral program

  @GET('/api/referral/rewards')
  Future<List<ReferralRewardsDto>> referallRewards();

  @GET('/api/referral/profile')
  Future<ReferralProfileDto> getReferralProfile();

  /// account

  @GET('/api/account')
  Future<GetAccountDto> getAccount();

  @POST('/api/account/update')
  Future<UpdateAccountDto> updateAccount(Map<String, dynamic> data);

  @GET('/api/account/transactions')
  Future<List<GetTransactionDto>> getTransactions();
}
