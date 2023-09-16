import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:run_n_rush/data/dto/auth/src/user_data_token.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://runrushapi.pp.ua')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST('/api/auth/send_code')
  Future<void> sendCode(@Body() Map<String, dynamic> data);

  @POST('/api/auth/login_or_signup')
  Future<UserDataToken> loginOrSignup(@Body() Map<String, dynamic> data);

  // другие методы
}
