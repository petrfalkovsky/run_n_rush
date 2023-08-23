import 'package:get/get.dart';
import 'package:run_n_rush/ui/screens/auth/src/sign_in/sign_in.dart';
import 'package:run_n_rush/ui/screens/auth/src/sign_up/sign_up.dart';
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/screens/internet/internet.dart';
import 'package:run_n_rush/ui/screens/language/language.dart';
import 'package:run_n_rush/ui/screens/main/main.dart';
import 'package:run_n_rush/ui/screens/qr_scanner/src/qr_scanner_service.dart';
import 'package:run_n_rush/ui/screens/settings/referral.dart';
import 'package:run_n_rush/ui/screens/shop/src/shop_controller.dart';
import 'package:run_n_rush/ui/screens/shop/src/shop_service.dart';
import 'package:run_n_rush/ui/screens/splash/splash.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

class GeneralService extends GetxService {
  @override
  void onInit() {
    super.onInit();

    Get
      ..put(LanguageScreenService())
      ..put(InternetScreenService())
      ..lazyPut(() => SplashScreenService())
      ..lazyPut(() => SignInService())
      ..lazyPut(() => SignUpService())
      ..lazyPut(() => MainService())
      ..lazyPut(() => InventoryService())
      ..lazyPut(() => SettingsService())
      ..lazyPut(() => GeneralScaffoldService())
      ..lazyPut(() => InventoryService())
      ..lazyPut(() => InventoryController())
      ..lazyPut(() => ShopService())
      ..lazyPut(() => QrScannerService());
  }
}
