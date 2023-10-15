// ignore_for_file: unused_import

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:run_n_rush/data/storage/hive/hive.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class StartController extends StatexController {
  final ApiService _apiService = ApiService(Dio());
  RxBool isPlaying = false.obs;
  // реактивные переменные для передачи данных на экран

  final RxString earnedCoins = ''.obs;

  // переменная для хранения ID прогулки
  String? walkingId;
  // для отслеживания начала прогулки, чтобы включать/отклбчать запросы на апдейт
  bool isWalkingStarted = false;
  double distanceCalc = 0.0; // Дистанция
  int stepsCountCalc = 0; // Количество шагов

  // ignore: empty_constructor_bodies
  StartController() {}

  // типа таймер для автоматических запросов на обновление каждый период
  // todo позже можно переделать под шаги, когда будет готов шагомер
  Timer? autoUpdateTimer;

  void _startAutoUpdate() {
    const updateInterval = Duration(seconds: 3);

    autoUpdateTimer = Timer.periodic(updateInterval, (timer) {
      if (!isWalkingStarted) {
        timer.cancel();
        return;
      }

      // Добавляем 1 метр и 1 шаг при каждой итерации
      distanceCalc += 1;
      stepsCountCalc += 2;

      // Принт данных перед обновлением
      // debugPrint('Before Update - Distance: $distanceCalc, Steps Count: $stepsCountCalc');
      walkingUpdate();
    });
  }

  // метод для остановки прогулки
  Future<void> walkingUpdate() async {
    // использую сохраненный ID прогулки
    if (walkingId == null) {
      debugPrint('ID прогулки не задан');
      return;
    }

    // останавливаем таймер, если запущен
    isWalkingStarted = false;

    final Map<String, dynamic> requestBody = {
      'id': walkingId,
      'steps_count': 2,
      'distance': 1,
    };

    final response = await getDataAndHandleError(
        () => _apiService.walkingUpdate(requestBody));
    if (response != null) {
      debugPrint('Walking finished: ${response.finished}');
      debugPrint(
          'Walking update: \nЗаработано ${response.earnedCoins}\n с такой дистанцей: ${response.distance} и таким кол-вом шагов ${response.stepsCount} \nстолько потрачено энергии ${response.spendEnergy} и столько энергии осталось ${response.energy}');
    }
  }

  // метод для остановки прогулки
  Future<void> walkingFinish() async {
    // использую сохраненный ID прогулки
    if (walkingId == null) {
      debugPrint('ID прогулки не задан');
      return;
    }

    // останавливаем таймер, если запущен
    isWalkingStarted = false;

    final Map<String, dynamic> requestBody = {
      'id': walkingId,
      'steps_count': stepsCountCalc,
      'distance': distanceCalc,
    };

    final response = await getDataAndHandleError(
        () => _apiService.walkingFinish(requestBody));
    if (response != null) {
      debugPrint('Walking finished: ${response.finished}');
      debugPrint(
          'Walking finished: \nЗаработано ${response.earnedCoins}\n с такой дистанцей: ${response.distance} и таким кол-вом шагов ${response.stepsCount} \nстолко потрачено энергии ${response.spendEnergy} и столько энергии осталось ${response.energy}');
    }
  }

  // метод для начала прогулки
  Future<void> walkingStart() async {
    final response =
        await getDataAndHandleError(() => _apiService.walkingStart());

    if (response != null) {
      debugPrint('Walking started: ${response.started}');
      debugPrint('Walking started: ${response.id}');
      debugPrint(
          'Walking started: \nЗаработано ${response.earnedCoins}\n с такой дистанцей: ${response.distance} и таким кол-вом шагов ${response.stepsCount} \nстолко потрачено энергии ${response.spendEnergy} и столько энергии осталось ${response.energy}');

      // сохраняю ID прогулки
      walkingId = response.id;

      // запускаем таймер для отправки запросов каждые 3 секунды
      isWalkingStarted = true;
      _startAutoUpdate();
    }
  }

  // просто методы для смены вида кнопки плей/пауза
  startPlay() {
    isPlaying.value = true;
  }

  pausePlay() {
    isPlaying.value = false;
  }
}
