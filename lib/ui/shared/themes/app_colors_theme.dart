import 'package:flutter/material.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';

abstract class AppColorsTheme {
  const AppColorsTheme();

  Brightness get brightness;

  AppColorsLight get colors;

  OtherColors get other;
}

class AppColorsThemeLight implements AppColorsTheme {
  const AppColorsThemeLight();

  @override
  Brightness get brightness => Brightness.light;

  @override
  AppColorsLight get colors => const AppColorsLight();

  @override
  OtherColors get other => const OtherColors();
}

extension ThemeDataX on ThemeData {
  AppColorsTheme get appColorsScheme => const AppColorsThemeLight();
}
