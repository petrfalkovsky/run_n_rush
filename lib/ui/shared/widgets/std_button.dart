// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/ext.dart';
import 'package:run_n_rush/ui/shared/styles.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';

class StdButton extends StatelessWidget {
  const StdButton({
    required this.text,
    required this.isActive,
    this.color,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.isOutlined = false,
    this.isLoading = false,
    this.padding,
    this.width,
    this.height,
    this.icon,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  final String text;
  final bool isActive;
  final bool isOutlined;
  final bool isLoading;
  final VoidCallback onPress;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  // ignore: prefer_typing_uninitialized_variables
  final fontWeight;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      height: height,
      child: isOutlined
          ? _CustomOutlinaButton(
              text: text,
              padding: padding,
              isActive: isActive,
              isLoading: isLoading,
              onPress: onPress,
              textColor: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              icon: icon,
            )
          : _CustomElevatedButton(
              text: text,
              padding: padding,
              isActive: isActive,
              isLoading: isLoading,
              onPress: onPress,
              color: color,
              textColor: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              icon: icon,
            ),
    );
  }
}

class _CustomOutlinaButton extends StatelessWidget {
  const _CustomOutlinaButton({
    Key? key,
    required this.text,
    required this.isActive,
    required this.isLoading,
    required this.onPress,
    this.padding,
    this.icon,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  final String text;
  final bool isActive;
  final bool isLoading;
  final Function() onPress;
  final EdgeInsets? padding;
  final Color? textColor;
  final double? fontSize;
  // ignore: prefer_typing_uninitialized_variables
  final fontWeight;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52, // высота всего инпута
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        // color: AppColors.accent, // фон
        boxShadow: [
          BoxShadow(
            color: Color(0xFF282A66),
          ),
          BoxShadow(
            color: Colors.black,
            spreadRadius: -0.5,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: OutlinedButton(
        onPressed: isActive ? onPress : null,
        style: OutlinedButton.styleFrom(
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          side: BorderSide(
            width: isActive ? 1 : 0,
            color: const AppColorsThemeLight().colors.background[3]!,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Row(
                children: [
                  Image.asset(icon!),
                  8.w,
                ],
              ),
            isLoading
                ? const SizedBox(
                    height: 16,
                    child: FittedBox(
                      child: CircularProgressIndicator(
                        strokeWidth: 8,
                      ),
                    ),
                  )
                : Text(
                    text,
                    style: AppTextTheme.fromPlatform.b2_0.copyWith(
                      color: textColor,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class _CustomElevatedButton extends StatelessWidget {
  const _CustomElevatedButton({
    Key? key,
    required this.text,
    required this.isActive,
    required this.isLoading,
    required this.onPress,
    required this.color,
    this.padding,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.icon,
  }) : super(key: key);

  final String text;
  final bool isActive;
  final bool isLoading;
  final Function() onPress;
  final EdgeInsets? padding;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  // ignore: prefer_typing_uninitialized_variables
  final fontWeight;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorsScheme = theme.appColorsScheme;
    final resolvedButtonColor = color ?? colorsScheme.colors.accent.accent1;
    // final resolvedTextColor = textColor ?? colorsScheme.other.white;

    return Container(
      height: 52, // высота всего инпута
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        // color: AppColors.accent, // фон
        boxShadow: [
          BoxShadow(
            color: Color(0xFF282A66),
          ),
          BoxShadow(
            color: Color(0xFF1DB9DD),
            spreadRadius: -0.9,
            blurRadius: 2.0,
          ),
        ],
      ),
      child: ElevatedButton(
          onPressed: isActive
              ? isLoading
                  ? null
                  : onPress
              : null,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(padding ??
                const EdgeInsets.symmetric(vertical: 0, horizontal: 0)),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            backgroundColor: MaterialStateProperty.all(resolvedButtonColor),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (icon != null)
              Row(
                children: [
                  Image.asset(icon!),
                  8.w,
                ],
              ),
            isLoading
                ? const SizedBox(
                    height: 16,
                    child: FittedBox(
                      child: CircularProgressIndicator(
                        strokeWidth: 8,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Text(
                    text,
                    softWrap: false,
                    style: AppStyles.input.andWeight(FontWeight.bold).copyWith(
                          // color: AppColors.text[1],
                          color: textColor,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                  ),
          ])),
    );
  }
}
