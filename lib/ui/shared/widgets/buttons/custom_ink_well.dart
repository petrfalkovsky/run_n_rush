import 'package:flutter/material.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';

class CustomInkWell extends StatelessWidget {
  final VoidCallback onTap;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final bool isActive;
  final String? text;
  final Widget? child;
  final double? height;

  const CustomInkWell({
    required this.onTap,
    this.text,
    this.child,
    this.isActive = false,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    this.color,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextTheme.fromPlatform.b2_1;
    final colorTheme = const AppColorsThemeLight().colors;
    final selectedBoxColor = colorTheme.background[1];
    final unselectedBoxColor = colorTheme.background[2];
    final selectedTextColor = colorTheme.text[2];
    final unselectedTextColor = colorTheme.text[1];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isActive ? unselectedBoxColor : selectedBoxColor,
        ),
        padding: padding,
        child: child ??
            Text(
              text ?? '',
              style: textStyle.copyWith(
                color: isActive ? unselectedTextColor : selectedTextColor,
              ),
            ),
      ),
    );
  }
}
