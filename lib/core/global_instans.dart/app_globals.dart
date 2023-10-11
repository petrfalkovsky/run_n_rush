library my_app.globals;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hive/hive.dart';
// import 'package:run_n_rush/data/storage/hive/src/token_storage.dart';
// import 'package:run_n_rush/ui/screens/walking/walking.dart';

/// сюда можно добавлять глобальные переменные

/// импортируем акссес токен из мэйн контроллера
// final mainController = Get.find<WalkingController>();
// final accessToken = mainController.accessToken;
// final refreshToken = mainController.refreshToken;

// метод для обработки ошибок
void handleApiError(dynamic e) {
  if (e is DioException) {
    debugPrint('DioException: ${e.message}');
    if (e.response != null) {
      debugPrint('Response data: ${e.response!.data}');
    }
  } else {
    debugPrint('Error fetching data: $e');
  }
}
