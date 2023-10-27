// ignore_for_file: unused_import

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class SettingsController extends StatexController {
  final ApiService _apiService = ApiService(Dio());
  RxBool switchValue = true.obs;
  Rxn avatar = Rxn();
  Rxn firstName = Rxn();
  Rxn email = Rxn();
  RxBool sound = RxBool(true);
  RxInt totalDistance = RxInt(0);

  SettingsController() {
    getSettings();
    getUser();
  }

  // метод для получения данных на экран
  Future<void> getSettings() async {
    final response =
        await getDataAndHandleError(() => _apiService.getSettings());

    if (response != null) {
      sound.value = response.sound!;
      totalDistance.value = response.totalDistance ?? 0;
    }
  }

  // метод для получения данных на экран
  Future<void> getUser() async {
    final response = await getDataAndHandleError(() => _apiService.getUser());

    if (response != null) {
      avatar.value = response.avatarUrl;
      firstName.value = response.firstName;
      email.value = response.email;

      debugPrint(
          'Получил данные для настроек: \n аватар урл: ${response.avatarUrl}\n имя: ${response.firstName}\n фамилия: ${response.lastName}');
    }
  }
}
