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
  // переменная для смены вида кнопки плей/пауза
  RxBool isPlaying = false.obs;

  // переменные управления состояним
  RxBool isStarted = false.obs;
  RxBool isFinished = false.obs;
  RxBool isUpdated = false.obs;

  // переменная для хранения ID прогулки
  String? walkingId;

  /// для отслеживания и реактивного изменения данных
  //  заработано
  Rxn earnedCoinsStart = Rxn();
  Rxn earnedCoinsUpdate = Rxn();
  Rxn earnedCoinsFinish = Rxn();

  //  прогрессбар
  Rxn energyStart = Rxn();
  Rxn energyUpdate = Rxn();
  Rxn energyFinish = Rxn();

  //  шаги
  Rxn stepsStart = Rxn();
  Rxn stepsUpdate = Rxn();
  Rxn stepsFinish = Rxn();

  //  километры
  Rxn kmStart = Rxn();
  Rxn kmUpdate = Rxn();
  Rxn kmFinish = Rxn();

  double distanceCalc = 0.0; // дистанция
  int stepsCountCalc = 0; // количество шагов

  // ignore: empty_constructor_bodies
  StartController() {}

  // типа таймер для автоматических запросов на обновление каждый период
  // todo позже можно переделать под шаги, когда будет готов шагомер
  Timer? autoUpdateTimer;

  void _startAutoUpdate() {
    const updateInterval = Duration(seconds: 3);

    autoUpdateTimer = Timer.periodic(updateInterval, (timer) {
      if (!isStarted.value) {
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

  // метод для начала прогулки
  Future<void> walkingStart() async {
    final response =
        await getDataAndHandleError(() => _apiService.walkingStart());

    if (response != null) {
      debugPrint('Walking started: ${response.started}');
      debugPrint('Walking started: ${response.id}');
      debugPrint(
          'Walking started: \nЗаработано ${response.earnedCoins}\n с такой дистанцей: ${response.distance} и таким кол-вом шагов ${response.stepsCount} \nстолко потрачено энергии ${response.spendEnergy} и столько энергии осталось ${response.energy}');

      // сохраняю ID прогулки для принта
      walkingId = response.id;

      // запускаем таймер для отправки запросов каждые 3 секунды
      isStarted.value = true;

      // сохраняю заработанные монеты для передачи на экран
      earnedCoinsStart.value = response.earnedCoins;
      // сохраняю шаги для передачи на экран
      stepsStart.value = response.stepsCount;
      // сохраняю km для передачи на экран
      kmStart.value = response.distance;
      // сохраняю остаток энергии для передачи на экран
      double parsedValue = double.tryParse(response.energy!) ?? 0.0;
      energyStart.value = parsedValue * 10;

      _startAutoUpdate();
    }
  }

  // метод для остановки прогулки
  Future<void> walkingUpdate() async {
    // использую сохраненный ID прогулки
    if (walkingId == null) {
      debugPrint('ID прогулки не задан');
      return;
    }

    // останавливаем таймер, если запущен
    // todo убрать конечно когда фейковые данные не нужны будут
    isStarted.value = false;

    final Map<String, dynamic> requestBody = {
      'id': walkingId,
      'steps_count': 4,
      'distance': 2,
    };

    final response = await getDataAndHandleError(
        () => _apiService.walkingUpdate(requestBody));
    if (response != null) {
      debugPrint(
          'Walking update: \nЗаработано ${response.earnedCoins}\n с такой дистанцей: ${response.distance} и таким кол-вом шагов ${response.stepsCount} \nстолько потрачено энергии ${response.spendEnergy} и столько энергии осталось ${response.energy}');

      isUpdated.value = true;

      // сохраняю заработанные монеты для передачи на экран
      earnedCoinsUpdate.value = response.earnedCoins;
      // сохраняю шаги для передачи на экран
      stepsUpdate.value = response.stepsCount;
      // сохраняю km для передачи на экран
      kmUpdate.value = response.distance;
      // сохраняю остаток энергии для передачи на экран
      double parsedValue = double.tryParse(response.energy!) ?? 0.0;
      energyUpdate.value = parsedValue * 10;
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
    isStarted.value = false;

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

      // устанавливаю состояние завершения прогулки
      isFinished.value = true;

      // сохраняю заработанные монеты для передачи на экран
      earnedCoinsFinish.value = response.earnedCoins;
      // сохраняю шаги для передачи на экран
      stepsFinish.value = response.stepsCount;
      // сохраняю km для передачи на экран
      kmFinish.value = response.distance;
      // сохраняю остаток энергии для передачи на экран
      double parsedValue = double.tryParse(response.energy!) ?? 0.0;
      energyFinish.value = parsedValue * 10;
    }
  }

  // метод для показа сколько km
  String getKMText(StartController controller) {
    if (controller.isStarted.value) {
      return '${controller.kmStart}';
    } else if (controller.isFinished.value) {
      return '${controller.kmFinish}';
    } else if (controller.isUpdated.value) {
      return '${controller.kmUpdate}';
    } else {
      return '0';
    }
  }

  // метод для показа сколько шагов
  String getStepsText(StartController controller) {
    if (controller.isStarted.value) {
      return '${controller.stepsStart}';
    } else if (controller.isFinished.value) {
      return '${controller.stepsFinish}';
    } else if (controller.isUpdated.value) {
      return '${controller.stepsUpdate}';
    } else {
      return '0';
    }
  }

  // метод для показа сколько энергии в прогрессбаре
  double getEnergy(StartController controller) {
    if (controller.isStarted.value) {
      return double.tryParse('${controller.energyStart.value}') ?? 0;
    } else if (controller.isFinished.value) {
      return double.tryParse('${controller.energyFinish.value}') ?? 0;
    } else if (controller.isUpdated.value) {
      return double.tryParse('${controller.energyUpdate.value}') ?? 0;
    } else {
      return 0;
    }
  }

  // метод для показа сколько заработано
  String getCoinsText(StartController controller) {
    if (controller.isStarted.value) {
      return '${controller.earnedCoinsStart}';
    } else if (controller.isFinished.value) {
      return '${controller.earnedCoinsFinish}';
    } else if (controller.isUpdated.value) {
      return '${controller.earnedCoinsUpdate}';
    } else {
      return 'waiting..';
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
