// ignore_for_file: unused_import

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/data/dto/auth/src/login_or_signup.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class WelcomeController extends StatexController {
  RxBool isChecked = false.obs;
  late final Dio dio;
  late final ApiService apiService;

  WelcomeController() {
    dio = Dio();
    apiService = ApiService(dio);
  }

  /// метод для кнопки вход или сайнап
  Future<void> onLoginOrSignUpPressed(
    String email,
    String code,
    String referralCode,
  ) async {
    debugPrint('нажата Логин/сайнАп кнопка');

    if (email.isEmpty) {
      return debugPrint('Нужно заполнить поле имейл');
    }

    final loginData = LoginOrSignupDto(
      email: email,
      code: code,
      referalCode: referralCode,
    );
    debugPrint('Email из инпута: $loginData');
    try {
      // отправка боди на сервер, чтобы получить данные для входа
      final response = await apiService.loginOrSignup(loginData.toJson());

      final access = response.access;
      final refresh = response.refresh;
      final userData = response.user;

      final userId = userData.id;
      final userFirstName = userData.firstName;
      final userLastName = userData.lastName;
      final userEmail = userData.email;
      final userAvatarUrl = userData.avatarUrl;

      debugPrint(
          'что получил после входа: $userId, $userFirstName, $userLastName, $userEmail, $userAvatarUrl');

      debugPrint('аксесс и рефреш: $access, $refresh');

      // если запрос завершился успешно (без ошибок) и не вернул ошибку от сервера
      // (например, статус код 422), переходим на другой экран
      Get.toNamed(AppRoutes.main);
    } catch (e) {
      debugPrint('Ошибка при отправке кода: $e');
      // если произошла ошибка, отображаем снекбар с сообщением об ошибке
      Get.snackbar(
        'Ошибка',
        'Что-то пошло не так, попробуйте ввести данные еще раз',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
