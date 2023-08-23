import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';

class CustomRoundedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final EdgeInsets paddings;
  final bool hasBorder;

  const CustomRoundedButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.buttonColor,
    this.textColor,
    this.height,
    this.width,
    this.paddings = EdgeInsets.zero,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorsScheme = theme.appColorsScheme;
    final resolvedButtonColor =
        buttonColor ?? colorsScheme.colors.accent.accent1;
    final resolvedTextColor = textColor ?? colorsScheme.other.white;

    return SizedBox(
      height: height ?? 50,
      width: width,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: hasBorder
              ? const BorderSide(width: 1, color: Color(0xfff4f4f4))
              : BorderSide.none,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: onPressed,
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: resolvedButtonColor,
            ),
            padding: paddings,
            child: Center(
              child: Text(
                text,
                style: theme.appTextTheme.b2_0.copyWith(
                  color: resolvedTextColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
