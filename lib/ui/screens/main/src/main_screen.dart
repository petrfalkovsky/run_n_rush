import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/screens/main/main.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';
import 'package:riverside/ui/shared/widgets/general_scaffold/src/general_scaffold.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class MainScreen extends StatexWidget<MainController> {
  MainScreen({Key? key}) : super(() => MainController(), key: key) {
    // todo: добавить переменную в транслейтер mainscreen
    debugPrint('Главный экран');
  }
  @override
  Widget buildWidget(BuildContext context) {
    final textTheme = AppTextTheme.fromPlatform;

    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.black,
      navBarEnable: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(227),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/appbar_frame.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 100,
              automaticallyImplyLeading: false,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      bottom: 5,
                    ),
                    child: Text('reservation'.tr(), style: textTheme.h1_1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      child: Container(
        color: Colors.amber,
        height: 300,
      ),
    );
  }
}
