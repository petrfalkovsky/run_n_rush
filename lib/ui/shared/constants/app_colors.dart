// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static _AccentColors accent = const _AccentColors(
    0xFF4AAE3A,
    <int, Color>{
      1: Color(0xFF4AAE3A),
      2: Color(0xFFFF9900),
    },
  );

  static _TextColors text = const _TextColors(
    0xFF222222,
    <int, Color>{
      1: Color(0xFF222222),
      2: Color(0xFF7D8082),
      3: Color(0xFF58616C),
      4: Color(0xFFA4A8AB),
    },
  );
  static _NotificationColors notification = const _NotificationColors(
    0xFFEB5E6C,
    <int, Color>{
      1: Color(0xFFEB5E6C),
      2: Color(0xFFFFF3F4),
      3: Color(0xFF48A36D),
    },
  );
  static _BackgroundColors background = const _BackgroundColors(
    0xFFF9F9FA,
    <int, Color>{
      1: Color(0xFFF9F9FA),
      2: Color(0xFFF4F4F4),
      3: Color(0xFFE9E9E9),
      4: Color(0xFFFFFFFF),
      5: Colors.transparent,
    },
  );
}

abstract class AbstractAppColors {
  const AbstractAppColors();

  _AccentColors get accent;

  _TextColors get text;

  _NotificationColors get notification;

  _BackgroundColors get background;
}

class AppColorsLight implements AbstractAppColors {
  const AppColorsLight();

  @override
  _AccentColors get accent => AppColors.accent;

  @override
  _BackgroundColors get background => AppColors.background;

  @override
  _NotificationColors get notification => AppColors.notification;

  @override
  _TextColors get text => AppColors.text;
}

class _AccentColors extends ColorSwatch<int> {
  const _AccentColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get accent1 => this[1]!;

  Color get accent2 => this[2]!;
}

class _TextColors extends ColorSwatch<int> {
  const _TextColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get primary => this[1]!;

  Color get secondary => this[2]!;

  Color get card => this[3]!;

  Color get tertiary => this[4]!;
}

class _NotificationColors extends ColorSwatch<int> {
  const _NotificationColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get error => this[1]!;

  Color get errorLight => this[2]!;

  Color get success => this[3]!;
}

class _BackgroundColors extends ColorSwatch<int> {
  const _BackgroundColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get bgB1 => this[1]!;

  Color get bgB2 => this[2]!;

  Color get divider => this[3]!;
}

class OtherColors {
  const OtherColors();

  Color get black => const Color(0xFF101113);

  Color get transparent => Colors.transparent;

  Color get white => Colors.white;

  Color get grey => const Color(0xffA4A8AB);
}
