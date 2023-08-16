import 'package:flutter/material.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';

class Consts {
  static const delayMill100 = 100;
  static const exitTimeInMillis = 2000;
  static const showButton = 'showButton';
  static const skipPage = 'skipPage';
  static const argsLogout = 'logout';
  final preloader = Center(
    child: CircularProgressIndicator(
      color: AppColors.notification.success,
    ),
  );
}
