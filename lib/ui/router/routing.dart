import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/screens/auth/src/sign_in/sign_in.dart';
import 'package:riverside/ui/screens/auth/src/sign_in/src/reset_password.dart';
import 'package:riverside/ui/screens/auth/src/sign_up/sign_up.dart';
import 'package:riverside/ui/screens/bookings/src/current_bookings.dart';
import 'package:riverside/ui/screens/qr_scanner/src/qr_scanner_screen.dart';
import 'package:riverside/ui/screens/scan/entry_code.dart';
import 'package:riverside/ui/screens/auth/src/auth_welcome_screen.dart';
import 'package:riverside/ui/screens/bookings/bookings.dart';
import 'package:riverside/ui/screens/main/main.dart';
import 'package:riverside/ui/screens/settings/src/settings_screen.dart';
import 'package:riverside/ui/screens/settings/src/update_screen.dart';
import 'package:riverside/ui/screens/splash/splash.dart';

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
    page: () => BookingScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.settings,
    page: () => Settings(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.currentBookings,
    page: () => const CurrentBookingScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.updateProfile,
    page: () => const UpdateProfileScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.qrScanner,
    page: () => QrScannerScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.shop,
    page: () => BookingScreen(),
    transition: Transition.fadeIn,
  ),
];
