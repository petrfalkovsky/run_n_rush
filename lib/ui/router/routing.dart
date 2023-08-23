import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/auth/src/sign_in/sign_in.dart';
import 'package:run_n_rush/ui/screens/auth/src/sign_in/src/reset_password.dart';
import 'package:run_n_rush/ui/screens/auth/src/sign_up/sign_up.dart';
import 'package:run_n_rush/ui/screens/qr_scanner/src/qr_scanner_screen.dart';
import 'package:run_n_rush/ui/screens/scan/entry_code.dart';
import 'package:run_n_rush/ui/screens/auth/src/auth_welcome_screen.dart';
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/screens/main/main.dart';
import 'package:run_n_rush/ui/screens/settings/src/referral_screen.dart';
import 'package:run_n_rush/ui/screens/shop/src/shop_screen.dart';
import 'package:run_n_rush/ui/screens/splash/splash.dart';

class AppRoutes {
  static const String splash = '/';
  static const String authWelcome = '/authWelcome';
  static const String authEntry = '/authEntry';
  static const String signIn = '/signIn';
  static const String resetPassword = '/resetPassword';
  static const String signUp = '/signUp';
  static const String createProfileSignUp = '/createProfileSignUp';
  static const String main = '/main';
  static const String bookings = '/bookings';
  static const String settings = '/settings';
  static const String currentBookings = '/currentBookings';
  static const String updateProfile = '/updateProfile';
  static const String qrScanner = '/qrScanner';
  static const String payment = '/payment';
  static const String shop = '/shop';

  static navigator(RouteSettings settings) {
    debugPrint('RouteSettings  $settings');
  }
}

final List<GetPage> routes = [
  GetPage(
    name: AppRoutes.splash,
    page: () => SplashScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.authWelcome,
    page: () => AuthWelcomeScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.authEntry,
    page: () => const EntryCodeScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.signIn,
    page: () => SignInScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.resetPassword,
    page: () => const ResetPasswordScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.signUp,
    page: () => SignUpScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.createProfileSignUp,
    page: () => const CreateProfileSignUp(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.signIn,
    page: () => SignInScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.main,
    page: () => Main(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.bookings,
    page: () => InventoryScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.settings,
    page: () => Referral(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.qrScanner,
    page: () => QrScannerScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.shop,
    page: () => ShopScreen(),
    transition: Transition.fadeIn,
  ),
];
