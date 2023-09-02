import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/internet/src/internet_controller.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';

import 'package:vfx_flutter_common/getx_helpers.dart';
import 'package:vfx_flutter_common/utils.dart';

class InternetScreen extends StatexWidget<InternetScreenController> {
  InternetScreen({Key? key})
      : super(() => InternetScreenController(), key: key) {
    debugPrint('${'internet_screen'.tr()} $now:');
  }

  @override
  Widget buildWidget(BuildContext context) => const _InternetScreen();
}

class _InternetScreen extends GetView<InternetScreenController> {
  const _InternetScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background.bgB1,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              // const Background(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Center(child: AppIcons.svgWidget(AppIcons.noInternet)),
                  40.h,
                  Text(
                    'no_internet_connection'.tr(),
                    style: AppStyles.body
                        .andWeight(FontWeight.bold)
                        .andColor(AppColors.text.secondary),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
