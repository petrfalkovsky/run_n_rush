// ignore_for_file: unused_import

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hive/hive.dart';
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/data/dto/walking/src/walking.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:run_n_rush/data/storage/hive/hive.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class WalkingController extends StatexController {
  /// управляет показом изображения
  // final RxBool showImage = true.obs;

  /// апи инстансы
  final ApiService _apiService = ApiService(Dio());
  WalkingData? walkingData;
  final List<WalkingSneaker> sneakerList = RxList<WalkingSneaker>();
  final RxList<WalkingSneaker> sneakersUptateData = RxList<WalkingSneaker>();
  final Rxn avatarUrl = Rxn();
  final Rxn firstName = Rxn();
  final Rxn balance = Rxn();
  final RxInt distance = RxInt(0);
  final RxInt distanceMax = RxInt(0);
  final Rxn energy = Rxn();
  final Rxn energyMax = Rxn();

  // переменные для расчета показателя прогресс бара
  final RxDouble currentValueOne = RxDouble(0.0);
  final RxDouble currentValueTwo = RxDouble(0.0);

  WalkingController() {
    getFirstName();
    getBalance();
    getSneakers();
    getDistance();
    getmaxDistance();
    getEnergy();
    getEnergyMax();
    calculateCurrentValueOne();
    calculateCurrentValueTwo();
  }

// Метод для расчета currentValueOne
  void calculateCurrentValueOne() {
    if (distanceMax.value.toDouble() != 0) {
      currentValueOne.value =
          (distance.value.toDouble() / distanceMax.value.toDouble()) * 100;
    } else {
      currentValueOne.value = 0;
    }
    currentValueOne.value = currentValueOne.value.clamp(0, 100);
  }

// Метод для расчета currentValueTwo
  void calculateCurrentValueTwo() {
    final double energyMaxValue = energyMax.value != null
        ? double.tryParse(energyMax.value.toString()) ?? 0.0
        : 0.0;
    final double energyValue = energy.value != null
        ? double.tryParse(energy.value.toString()) ?? 0.0
        : 0.0;

    if (energyMaxValue != 0) {
      currentValueTwo.value = (energyValue / energyMaxValue) * 100;
    } else {
      currentValueTwo.value = 0;
    }
    currentValueTwo.value = currentValueTwo.value.clamp(0, 100);
  }

  /// === методы апишки === ///

  // метод для получения avatar_url
  Future<void> getAvatarUrl() async {
    final response =
        await getDataAndHandleError(() => _apiService.getWalkingData());
    if (response != null) {
      avatarUrl.value = response.user.avatarUrl;
    }
  }

  // метод для получения first_name
  Future<void> getFirstName() async {
    final response =
        await getDataAndHandleError(() => _apiService.getWalkingData());
    if (response != null) {
      firstName.value = response.user.firstName;
    }
  }

  // метод для получения balance
  Future<void> getBalance() async {
    final response =
        await getDataAndHandleError(() => _apiService.getWalkingData());
    if (response != null) {
      balance.value = response.balance;
    }
  }

  // метод для получения всех полей sneakers
  Future<void> getSneakers() async {
    final response =
        await getDataAndHandleError(() => _apiService.getWalkingData());
    if (response != null) {
      sneakerList.assignAll(response.sneakers);

      // метод обновления данных в SneakersWidget
      updateSneakersData(sneakerList);
    }
  }

  // метод для обновления данных SneakersWidget
  void updateSneakersData(List<WalkingSneaker> newData) {
    sneakersUptateData.assignAll(newData);
  }

  // метод для получения значения distance
  Future<void> getDistance() async {
    final response =
        await getDataAndHandleError(() => _apiService.getWalkingData());
    if (response != null) {
      distanceMax.value = response.distanceMax!;
      calculateCurrentValueOne();
    }
  }

  // метод для получения значения distance_max
  Future<void> getmaxDistance() async {
    final response =
        await getDataAndHandleError(() => _apiService.getWalkingData());
    if (response != null) {
      distance.value = response.distance!;
      calculateCurrentValueOne();
    }
  }

  // метод для получения значения energy
  Future<void> getEnergy() async {
    final response =
        await getDataAndHandleError(() => _apiService.getWalkingData());
    if (response != null) {
      energy.value = response.energy;
      calculateCurrentValueTwo();
    }
  }

  // метод для получения значения energy_max
  Future<void> getEnergyMax() async {
    final response =
        await getDataAndHandleError(() => _apiService.getWalkingData());
    if (response != null) {
      energyMax.value = response.energyMax!;
      calculateCurrentValueTwo();
    }
  }

  /// === методы перед написанием апишки === ///

  /// переменная для хранения токена глобально в приложении
  late String accessToken = '';
  late String refreshToken = '';

  /// метод для принта в консоль ид пользователя
  // Future<void> printUserId() async {
  //   final userBox = await Hive.openBox<UserStorage>('userBox');
  //   final user = userBox.get('user');

  //   if (user != null) {
  //     final userId = user.id;
  //     debugPrint('User ID: $userId');
  //   } else {
  //     debugPrint('User data not found.');
  //   }
  // }

  /// метод для принта в консоль рефреш токена
  // Future<void> printRefreshToken() async {
  //   final tokenBox = await Hive.openBox<TokenStorage>('tokenBox');
  //   final token = tokenBox.get('token');

  //   if (token != null) {
  //     final refresh = token.refresh;

  //     /// сохраняем аксесс токен в переменной
  //     refreshToken = refresh;
  //     debugPrint('Token refresh: $refresh');
  //   } else {
  //     debugPrint('Token refresh not found.');
  //   }
  // }

  // общий метод данных и обработки ошибок
  Future<T?> getDataAndHandleError<T>(Future<T> Function() getData) async {
    try {
      return await getData();
    } catch (e) {
      handleApiError(e);
      return null;
    }
  }
}
