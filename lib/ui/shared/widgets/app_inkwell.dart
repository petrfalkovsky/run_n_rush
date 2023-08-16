import 'package:flutter/material.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';

// карточка для экрана бронирования бассейна

class CardPoolBooking extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Color? color;
  final bool isActive;

  const CardPoolBooking({
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
    this.margin = const EdgeInsets.only(bottom: 8),
    this.color,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: isActive ? AppColors.accent.accent1 : Colors.transparent,
        ),
        color: color ?? const AppColorsThemeLight().colors.background[1],
      ),
      child: child,
    );
  }
}
