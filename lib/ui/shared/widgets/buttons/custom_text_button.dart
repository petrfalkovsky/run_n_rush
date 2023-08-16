import 'package:flutter/material.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color? color;
  final EdgeInsets? padding;
  final AlignmentGeometry alignment;

  const CustomTextButton({
    required this.text,
    required this.onPressed,
    this.color,
    this.padding = const EdgeInsets.symmetric(horizontal: 2.0),
    this.alignment = Alignment.center,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorsScheme = theme.appColorsScheme;
    final resolvedColor = color ?? colorsScheme.colors.accent.accent1;

    return Align(
      alignment: alignment,
      child: InkWell(
        splashColor: resolvedColor.withOpacity(0.2),
        highlightColor: resolvedColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(2.0),
        onTap: onPressed,
        child: Ink(
          padding: padding,
          child: Text(
            text,
            style: theme.appTextTheme.b2_1.copyWith(color: resolvedColor),
          ),
        ),
      ),
    );
  }
}
