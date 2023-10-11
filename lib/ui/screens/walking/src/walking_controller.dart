// ignore_for_file: unused_import

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hive/hive.dart';
import 'package:run_n_rush/data/dto/walking/src/walking.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:run_n_rush/data/storage/hive/hive.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class WalkingController extends StatexController {
  final ApiService _apiService = ApiService(Dio());
  final Rxn firstName = Rxn();

  WalkingData? walkingData;

  /// управляет показом изображения
  final RxBool showImage = true.obs;

  WalkingController() {
    getFirstName();
  }

  /// === методы апишки === ///

  // метод для загрузки данных "walking"
  Future<void> fetchWalkingData() async {
    try {
      walkingData = await _apiService.getWalkingData();
    } catch (e) {
      // обработка ошибок при запросе данных
      debugPrint('Ошибка при загрузке данных: $e');
    }
  }

  // метод для получения avatar_url
  String? getAvatarUrl() {
    return walkingData?.user.avatarUrl;
  }

  // метод для получения first_name
  // String? getFirstName() {
  //   return walkingData?.user.firstName;
  // }
  // void getFirstName() {
  //   firstName.value = walkingData?.user.id;
  // }
  Future<void> getFirstName() async {
    try {
      final response = await _apiService.getWalkingData();

      firstName.value = response;

      debugPrint('Account data loaded successfully: $response');
    } catch (e) {
      if (e is DioException) {
        debugPrint('DioException: ${e.message}');
        if (e.response != null) {
          debugPrint('Response data: ${e.response!.data}');
        }
      } else {
        debugPrint('Error fetching data: $e');
      }
    }
  }

  // метод для получения balance
  String? getBalance() {
    return walkingData?.balance;
  }

  // метод для получения всех полей sneakers
  List<WalkingSneaker>? getSneakers() {
    return walkingData?.sneakers;
  }

  // метод для получения значения energy
  String? getEnergy() {
    return walkingData?.energy;
  }

  // метод для получения значения distance
  int? getDistance() {
    return walkingData?.distance;
  }

  // метод для получения значения energy_max
  String? getEnergyMax() {
    return walkingData?.energyMax;
  }

  // метод для получения значения distance_max
  int? getDistanceMax() {
    return walkingData?.distanceMax;
  }

  /// === методы перед написанием апишки === ///

  /// переменная для хранения токена глобально в приложении
  late String accessToken = '';
  late String refreshToken = '';

  /// обновляет виджет после выбора инвенторя
  void toggleShowImage(bool value) {
    showImage.value = value;
  }

  // @override
  // void onInit() async {
  //   super.onInit();

  /// метод для принта вызываю при загрузке экрана мэйн
  // await printUserId();
  // await printAccessToken();
  // await printRefreshToken();
  // }

  /// метод для принта в консоль ид пользователя
  Future<void> printUserId() async {
    final userBox = await Hive.openBox<UserStorage>('userBox');
    final user = userBox.get('user');

    if (user != null) {
      final userId = user.id;
      debugPrint('User ID: $userId');
    } else {
      debugPrint('User data not found.');
    }
  }

  /// метод для принта в консоль рефреш токена
  Future<void> printRefreshToken() async {
    final tokenBox = await Hive.openBox<TokenStorage>('tokenBox');
    final token = tokenBox.get('token');

    if (token != null) {
      final refresh = token.refresh;

      /// сохраняем аксесс токен в переменной
      refreshToken = refresh;
      debugPrint('Token refresh: $refresh');
    } else {
      debugPrint('Token refresh not found.');
    }
  }
}
