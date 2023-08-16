import 'package:flutter/material.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';

class CustomInkWellQrScan extends StatelessWidget {
  const CustomInkWellQrScan({
    required this.onTap,
    this.text,
    this.child,
    this.isActive = false,
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 30),
    this.color,
    required this.index,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final bool isActive;
  final String? text;
  final Widget? child;
  final int index;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextTheme.fromPlatform.b2_0;
    final colorTheme = const AppColorsThemeLight().colors;
    final colorTheme2 = const AppColorsThemeLight().other;
    final selectedBoxColor = colorTheme.background[5];
    final unselectedBoxColor = colorTheme.background[4];
    final selectedTextColor = colorTheme2.white;
    final unselectedTextColor = colorTheme.text[1];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: index == 0 ? 10 : 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isActive ? unselectedBoxColor : selectedBoxColor,
        ),
        padding: padding,
        child: child ??
            Text(
              text ?? '',
              textAlign: TextAlign.center,
              style: textStyle.copyWith(
                color: isActive ? unselectedTextColor : selectedTextColor,
              ),
            ),
      ),
    );
  }
}
