import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';

class Knob extends StatelessWidget {
  const Knob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 6.0,
      decoration: BoxDecoration(
        color: const AppColorsThemeLight().colors.text[2],
        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}
