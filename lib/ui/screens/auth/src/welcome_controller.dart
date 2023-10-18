import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:hive/hive.dart';
import 'package:run_n_rush/data/dto/auth/src/login/login_or_signup.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:run_n_rush/data/storage/hive/hive.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class WelcomeController extends StatexController {
  RxBool isChecked = false.obs;
  late final Dio dio;
  late final ApiService apiService;

  WelcomeController() {
    dio = Dio();
    apiService = ApiService(dio);
  }

  Future<void> snackEmptyInput() async {
    Get.snackbar(
      'oops'.tr(),
      'specify_email'.tr(),
      backgroundColor: AppColors.accent[2],
      colorText: Colors.white,
    );
  }

  /// метод показывает успешный снек
  Future<void> snackSendCode() async {
    Get.snackbar(
      'we_ve_sent'.tr(),
      'copy_it'.tr(),
      backgroundColor: AppColors.accent[2],
      colorText: Colors.white,
    );
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

      // ignore: unused_local_variable
      final userId = userData.id;
      final userFirstName = userData.firstName;
      final userLastName = userData.lastName;
      final userEmail = userData.email;
      final userAvatarUrl = userData.avatarUrl;

      // debugPrint(
      //     'что получил после входа: $userId, $userFirstName, $userLastName, $userEmail, $userAvatarUrl');

      debugPrint('аксесс и рефреш: $access, $refresh');

      // устанавливаю значение - авторизован
      final authStatusBox = await Hive.openBox<AuthStatus>('authStatusBox');
      await authStatusBox.put('status', AuthStatus(isAuthenticated: true));

      // если запрос завершился успешно (без ошибок - код 422)
      // и не вернул ошибку от сервера, переходим на другой экран
      Get.toNamed(AppRoutes.main);

      ///   саздаю экземпляр User и сохраняю его в Hive
      final user = UserStorage(
        id: userData.id ?? '',
        firstName: userFirstName ?? '',
        lastName: userLastName ?? '',
        email: userEmail ?? '',
        avatarUrl: userAvatarUrl ?? '',
      );

      ///   саздаю экземпляр Tokens и сохраняю его в Hive
      final tokens = TokenStorage(
        access: access ?? '',
        refresh: refresh ?? '',
      );

      /// кладу экземпляр юзера в бокс
      final userBox = await Hive.openBox<UserStorage>('userBox');
      await userBox.put('user', user);

      /// кладу экземпляр токена в бокс
      final tokensBox = await Hive.openBox<TokenStorage>('tokenBox');
      await tokensBox.put('token', tokens);

      Get.snackbar(
        'hooray'.tr(),
        'got_it'.tr(),
        backgroundColor: AppColors.accent[2],
        colorText: Colors.white,
      );

      /// пробрасываю ошибку, если что-то пошло не так
    } catch (e) {
      debugPrint('Ошибка при отправке кода: $e');
      // если произошла ошибка, отображаем снекбар с сообщением об ошибке
      Get.snackbar(
        'error'.tr(),
        'something_went_wrong'.tr(),
        backgroundColor: AppColors.background[3],
        colorText: Colors.white,
      );
    }
  }
}
