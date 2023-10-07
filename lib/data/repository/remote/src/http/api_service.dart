import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/data/dto/account/account.dart';
import 'package:run_n_rush/data/dto/auth/src/user_data/user_data_token.dart';
import 'package:run_n_rush/data/dto/referral/referral.dart';
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/data/dto/sneakers/src/shop.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://runrushapi.pp.ua')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };
    return _ApiService(dio, baseUrl: baseUrl);
  }

  /// authentication
  @POST('/api/auth/send_code')
  Future<void> sendCode(@Body() Map<String, dynamic> data);

  @POST('/api/auth/login_or_signup')
  Future<UserDataToken> loginOrSignup(@Body() Map<String, dynamic> data);

  @POST('/api/auth/jwt/verify')
  Future<void> verifyToken(@Body() Map<String, dynamic> data);

  @POST('/api/auth/jwt/refresh')
  Future<void> refreshToken(@Body() Map<String, dynamic> data);

  /// sneakers: inventories
  @GET('/api/sneaker/inventories')
  Future<List<SneakerInventory>> getSneakerInventories(
    @Query('dress_status') String dressStatus,
    @Query('earned_amount_ordering') String earnedAmountOrdering,
    @Query('offset') int offset,
  );

  /// sneakers: shop
  @GET('/api/sneaker/selling_orders')
  Future<List<SneakerShop>> getSneakerShop(
    @Query('price_ordering') String priceOrdering,
    @Query('offset') int offset,
  );

  @POST('/api/sneaker/buy_sneaker')
  Future<void> buySneaker(@Body() Map<String, dynamic> data);

  /// referral system
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
