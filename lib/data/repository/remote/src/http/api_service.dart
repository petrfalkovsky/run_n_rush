import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/http.dart';
import 'package:run_n_rush/data/dto/auth/src/auth.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://runrushapi.pp.ua')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST('/api/auth/send_code')
  Future<void> sendCode(@Body() Map<String, dynamic> data);

  // другие методы
}
