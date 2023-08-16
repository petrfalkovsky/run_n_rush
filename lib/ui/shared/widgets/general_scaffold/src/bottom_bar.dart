import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

@immutable
class BottomAppBarItem {
  final String text;
  final String iconAsset;
  final String router;

  const BottomAppBarItem({
    required this.text,
    required this.iconAsset,
    required this.router,
  });
}

class CustomBottomAppBar extends GetView<GeneralScaffoldService> {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10.0,
      shape: const CircularNotchedRectangle(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Obx(
                () => Row(
                  children: List.generate(
                    controller.bottomAppBarItems.length,
                    (index) {
                      final item = controller.bottomAppBarItems[index];

                      return Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () => controller.goToPage(index),
                          child: _BottomAppBarButton(
                            text: item.text,
                            iconAsset: item.iconAsset,
                            isSelected: index == controller.currentNavIndex$,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const Expanded(
              child: SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomAppBarButton extends StatelessWidget {
  final String text;
  final String iconAsset;
  final bool isSelected;

  const _BottomAppBarButton({
    required this.text,
    required this.iconAsset,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const unselectedColor = Color(0xFFA4A8AB);
    const selectedColor = Color(0xFF4AAE3A);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SvgPicture.asset(
          iconAsset,
          color: isSelected ? selectedColor : unselectedColor,
        ),
        const SizedBox(height: 12.0),
        Text(
          text.tr(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? selectedColor : unselectedColor,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
          ),
        ),
      ],
    );
  }
}
