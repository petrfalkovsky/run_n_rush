import 'package:flutter/material.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';

class CircularSwitcher extends StatelessWidget {
  final bool value;

  const CircularSwitcher({
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = const AppColorsThemeLight().colors;
    final unselectedColor = colorTheme.background[3]!;
    final selectedColor = colorTheme.accent[1]!;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: value ? selectedColor : unselectedColor,
          width: value ? 6.0 : 2.0,
        ),
      ),
    );
  }
}
