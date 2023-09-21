import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/ui/screens/auth/welcome.dart';
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/screens/internet/internet.dart';
import 'package:run_n_rush/ui/screens/language/language.dart';
import 'package:run_n_rush/ui/screens/main/main.dart';
import 'package:run_n_rush/ui/screens/referral/referral.dart';
import 'package:run_n_rush/ui/screens/shop/src/shop_service.dart';
import 'package:run_n_rush/ui/screens/splash/splash.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

import '../ui/screens/start/start.dart';

class GeneralService extends GetxService {
  @override
  void onInit() {
    super.onInit();

    Get
      ..put(LanguageScreenService())
      ..put(InternetScreenService())

      /// fenix: true помогает избежать ошибки, когда Get.find()
      /// вызывается перед Get.put(контроллером).
      /// то есть когда вызов функции Get.find() перед инициализацией Get.put() выдает ошибку
      ..lazyPut(() => MainController(), fenix: true)
      ..lazyPut(() => WelcomeController())
      ..lazyPut(() => MainService())
      ..lazyPut(() => Dio())
      ..lazyPut(() => SplashScreenService())
      ..lazyPut(() => InventoryService())
      ..lazyPut(() => ReferralsService())
      ..lazyPut(() => GeneralScaffoldService())
      ..lazyPut(() => InventoryService())
      ..lazyPut(() => InventoryController())
      ..lazyPut(() => ShopService())
      ..lazyPut(() => StartController());
  }
}
