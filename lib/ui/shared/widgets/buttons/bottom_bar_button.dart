import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/constants/constants.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/app_icon.dart';

class BottomBarButton extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback? onTap;
  final bool isActive;

  const BottomBarButton({
    required this.onTap,
    required this.title,
    required this.iconPath,
    required this.isActive,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius:
          const BorderRadius.all(Radius.circular(WidgetsSettings.radius)),
      onTap: onTap,
      child: TweenAnimationBuilder(
        duration: kThemeAnimationDuration,
        curve: Curves.fastOutSlowIn,
        tween: ColorTween(
          begin: theme.appColorsScheme.colors.text.tertiary,
          end: isActive
              ? theme.appColorsScheme.colors.text.primary
              : theme.appColorsScheme.colors.text.tertiary,
        ),
        builder: (_, Color? color, __) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppIcon(
                path: iconPath,
                color: color,
              ),
              const SizedBox(
                height: WidgetsSettings.cardElementsMiddleSpacing,
              ),
              Text(
                title,
                style: TextStyle(color: color),
              ),
            ],
          );
        },
      ),
    );
  }
}
