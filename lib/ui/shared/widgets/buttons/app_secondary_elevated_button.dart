import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/constants/constants.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';

class AppSecondaryElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final bool isActive;

  const AppSecondaryElevatedButton({
    Key? key,
    this.onPressed,
    required this.title,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isActive
              ? theme.appColorsScheme.colors.background.bgB2
              : Theme.of(context).colorScheme.surface,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          isActive
              ? Theme.of(context).colorScheme.onBackground
              : theme.appColorsScheme.colors.text.secondary,
        ),
        overlayColor: MaterialStateProperty.all(
          theme.appColorsScheme.colors.background.bgB2,
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(
            vertical: WidgetsSettings.cardElementsMiddleSpacing,
            horizontal: WidgetsSettings.widgetsHorisontalMiddleSpacing,
          ),
        ),
      ),
      child: Text(title),
    );
  }
}
