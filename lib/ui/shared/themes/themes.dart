import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';

abstract class Themes {
  const Themes._();

  static ThemeData mainTheme = _themeFrom(const AppColorsThemeLight());

  static _themeFrom(AppColorsTheme colorsTheme) {
    final textTheme = AppTextTheme.fromPlatform;

    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        brightness: colorsTheme.brightness,
      ).copyWith(
        secondary: colorsTheme.colors.accent.accent1,
      ),
      errorColor: colorsTheme.colors.notification.error,
      brightness: colorsTheme.brightness,
      scaffoldBackgroundColor: colorsTheme.other.white,
      appBarTheme: AppBarTheme(
        backgroundColor: colorsTheme.other.white,
        foregroundColor: colorsTheme.colors.text.primary,
        titleTextStyle: textTheme.b1_0,
        titleSpacing: 24.0,
        iconTheme: IconThemeData(
          color: colorsTheme.colors.text.primary,
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        elevation: 4.0,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorsTheme.colors.accent.accent1,
        elevation: 4.0,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colorsTheme.colors.accent.accent1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(16.0),
          ),
          foregroundColor: MaterialStateProperty.all(
            colorsTheme.other.white,
          ),
          backgroundColor: MaterialStateProperty.all(
            colorsTheme.colors.accent.accent1,
          ),
          textStyle: MaterialStateProperty.all(
            textTheme.b2_0,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorsTheme.colors.accent.accent1,
        selectionColor: colorsTheme.colors.accent.accent1.withOpacity(.25),
        selectionHandleColor: colorsTheme.colors.accent.accent1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        labelStyle: textTheme.b2_1.copyWith(
          color: colorsTheme.colors.text.secondary,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: colorsTheme.colors.accent.accent1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: colorsTheme.colors.notification.error,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: colorsTheme.colors.notification.error,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: colorsTheme.colors.background.bgB1,
          ),
        ),
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24.0),
          ),
        ),
      ),
    );
  }
}
