// ignore_for_file: unused_import

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

  // переменная для хранения ID прогулки
  String? walkingId;

  // для отслеживания начала прогулки, чтобы включать/отклбчать запросы на апдейт
  bool isWalkingStarted = false;

  // ignore: empty_constructor_bodies
  StartController() {}

  // метод для обновления актуальных данных во время прогулки
  Future<void> walkingUpdate() async {
    // использую сохраненный ID прогулки
    if (walkingId == null) {
      debugPrint('ID прогулки не задан');
      return;
    }

    const int stepsCount = 0;
    const double distance = 0.0;

    final Map<String, dynamic> requestBody = {
      'id': walkingId,
      'steps_count': stepsCount,
      'distance': distance,
    };

    final response = await getDataAndHandleError(
        () => _apiService.walkingUpdate(requestBody));
    if (response != null) {
      debugPrint(
          'Walking updated: stepsCount ${response.stepsCount} and distans ${response.distance}');
      // debugPrint('Walking updated: ${response.id}');
    }
  }

  // типа таймер для автоматических запросов на обновление каждый период
  // todo позже можно переделать под шаги, когда будет готов шагомер
  void _startAutoUpdate() {
    const Duration updateInterval = Duration(seconds: 3);

    Future<void> updateLoop() async {
      while (isWalkingStarted) {
        await Future.delayed(updateInterval);
        await walkingUpdate();
      }
    }

    updateLoop();
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

    const int stepsCount = 0;
    const double distance = 0.0;

    final Map<String, dynamic> requestBody = {
      'id': walkingId,
      'steps_count': stepsCount,
      'distance': distance,
    };

    final response = await getDataAndHandleError(
        () => _apiService.walkingFinish(requestBody));
    if (response != null) {
      debugPrint('Walking finished: ${response.finished}');
      debugPrint('Walking finished: ${response.id}');
    }
  }

  // метод для начала прогулки
  Future<void> walkingStart() async {
    final response =
        await getDataAndHandleError(() => _apiService.walkingStart());

    if (response != null) {
      debugPrint('Walking started: ${response.started}');
      debugPrint('Walking started: ${response.id}');

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
