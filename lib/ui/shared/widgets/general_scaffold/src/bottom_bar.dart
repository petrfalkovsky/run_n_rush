// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/buttons/button_animator.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/custom_bottom_appbar.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

@immutable
class BottomAppBarItem {
  // final String text;
  final String iconAsset;
  final String router;

  const BottomAppBarItem({
    // required this.text,
    required this.iconAsset,
    required this.router,
  });
}

class CustomBottomAppBar extends GetView<GeneralScaffoldService> {
  final double cornerRadius;
  const CustomBottomAppBar({Key? key, this.cornerRadius = 35.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map bottomAppBarMargin = {
      'left': 20.0,
      'right': 20.0,
      'bottom': 29.0,
      'top': 0.0,
    };

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: bottomAppBarMargin['left'],
            right: bottomAppBarMargin['right'],
            bottom: bottomAppBarMargin['bottom'],
            top: bottomAppBarMargin['top'],
          ),
          child: ClipPath(
            clipper: _BottomAppBarClipper(cornerRadius: cornerRadius),
            child: BottomAppBarChildCustom(
              // clipBehavior: Clip.antiAlias,
              positionHorizontal: (0.0 - bottomAppBarMargin['left']),
              elevation: 10,
              color: const AppColorsThemeLight().other.black,
              // notchMargin: 10.0,
              // shape: const CircularNotchedRectangle(),
              child: SizedBox(
                height: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            // flex: 3,
                            child: Obx(
                              () => Row(
                                children: List.generate(
                                  controller.bottomAppBarItems.length,
                                  (index) {
                                    final item =
                                        controller.bottomAppBarItems[index];

                                    return Expanded(
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.translucent,
                                        onTap: () => controller.goToPage(index),
                                        child: _BottomAppBarButton(
                                          // text: item.text,
                                          iconAsset: item.iconAsset,
                                          isSelected: index ==
                                              controller.currentNavIndex$,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BottomAppBarClipper extends CustomClipper<Path> {
  final double cornerRadius;

  _BottomAppBarClipper({this.cornerRadius = 0.0});

  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0);
    path.lineTo(size.width - cornerRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    path.lineTo(size.width, size.height - cornerRadius);
    path.quadraticBezierTo(
        size.width, size.height, size.width - cornerRadius, size.height);
    path.lineTo(cornerRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _BottomAppBarButton extends StatelessWidget {
  // final String text;
  final String iconAsset;
  final bool isSelected;

  const _BottomAppBarButton({
    // required this.text,
    required this.iconAsset,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const unselectedColor = Color(0xFF5C5D5F);
    const selectedColor = Color(0xFFFFFFFF);
    const lightColor = Color.fromARGB(255, 8, 9, 10);
    const darkColor = Color(0xFF3A3956);
    const middleFraction = 0.02;

    final purpleGradient = RadialGradient(
      colors: [
        Color.lerp(lightColor, darkColor, middleFraction)!,
        darkColor,
        Color.lerp(lightColor, darkColor, middleFraction)!,
      ],
      stops: const [0.0, middleFraction, 1.0],
      center: Alignment.center,
      focal: Alignment.center,
      focalRadius: 0.01,
      radius: 1.0,
    );

    return Container(
      width: 100.0,
      decoration: BoxDecoration(
        gradient: isSelected ? purpleGradient : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ButtonAnimator(
            childWidget: Container(
              padding: const EdgeInsets.symmetric(vertical: 21.5),
              child: SvgPicture.asset(
                iconAsset,
                height: 21,
                color: isSelected ? selectedColor : unselectedColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
