// ignore_for_file: unused_import

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class AccountController extends StatexController {
  final ApiService _apiService = ApiService(Dio());

  Rxn avatar = Rxn();

  Rxn firstName = Rxn();
  Rxn lastName = Rxn();
  Rxn email = Rxn();

  AccountController() {
    getUser();
  }
  Future<void> editUser() async {
    // Создайте тело запроса с обновленными данными пользователя
    final data = {
      // "first_name": firstName.value,
      // "last_name": lastName.value,
      // "email": email.value,
      "first_name": 'petr1',
      "last_name": 'terentev1',
      "email": 'petreterentev.dev@gmail.com',
    };

    final response = await getDataAndHandleError(() {
      return _apiService.editUser(data);
    });

    if (response != null) {
      debugPrint(
          'Отправили новые данные юзера на сервер - updated_user_id: ${response.updatedUserID}');
    }
  }

  // метод для получения данных о пользователе на экран
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
