library my_app.globals;

import 'package:get/get.dart';
import 'package:run_n_rush/ui/screens/main/main.dart';

/// сюда можно добавлять глобальные переменные

/// импортируем акссес токен из мэйн контроллера
final mainController = Get.find<MainController>();
final accessToken = mainController.accessToken;
final refreshToken = mainController.refreshToken;
