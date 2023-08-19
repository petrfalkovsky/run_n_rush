import 'package:get/get.dart';
import 'package:riverside/ui/screens/auth/src/sign_in/sign_in.dart';
import 'package:riverside/ui/screens/auth/src/sign_up/sign_up.dart';
import 'package:riverside/ui/screens/bookings/bookings.dart';
import 'package:riverside/ui/screens/internet/internet.dart';
import 'package:riverside/ui/screens/language/language.dart';
import 'package:riverside/ui/screens/main/src/main_service.dart';
import 'package:riverside/ui/screens/my_bookings/my_bookings.dart';
import 'package:riverside/ui/screens/qr_scanner/src/qr_scanner_service.dart';
import 'package:riverside/ui/screens/settings/settings.dart';
import 'package:riverside/ui/screens/splash/splash.dart';
import 'package:riverside/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

class GeneralService extends GetxService {
  @override
  void onInit() {
    super.onInit();

    Get
      ..put(LanguageScreenService())
      ..put(InternetScreenService())
      ..lazyPut(() => SplashScreenService())
      // ..lazyPut(() => AuthService())
      ..lazyPut(() => SignInService())
      ..lazyPut(() => SignUpService())
      ..lazyPut(() => MyBookingsService())
      ..lazyPut(() => BookingsService())
      ..lazyPut(() => SettingsService())
      ..lazyPut(() => GeneralScaffoldService())
      ..lazyPut(() => QrScannerService())
      ..lazyPut(() => MainService());
  }
}
