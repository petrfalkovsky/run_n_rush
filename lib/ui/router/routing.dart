import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/account/src/account_screen.dart';
import 'package:run_n_rush/ui/screens/auth/src/welcome_screen.dart';
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/screens/main/main.dart';
import 'package:run_n_rush/ui/screens/referral/src/referral_screen.dart';
import 'package:run_n_rush/ui/screens/settings/src/settings_screen.dart';
import 'package:run_n_rush/ui/screens/shop/src/shop_screen.dart';
import 'package:run_n_rush/ui/screens/splash/splash.dart';

class AppRoutes {
  static const String splash = '/';
  static const String authWelcome = '/authWelcome';
  static const String main = '/main';
  static const String inventory = '/bookings';
  static const String referral = '/referral';
  static const String shop = '/shop';
  static const String settings = '/settings';
  static const String account = '/account';

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
    name: AppRoutes.main,
    page: () => Main(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.inventory,
    page: () => InventoryScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.referral,
    page: () => Referral(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.shop,
    page: () => ShopScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.settings,
    page: () => Settings(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.account,
    page: () => Account(),
    transition: Transition.fadeIn,
  ),
];
