// ignore_for_file: unused_import, unnecessary_import

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/shared/avatar_blurred.dart';
import 'package:run_n_rush/ui/shared/widgets/animated_progress_bar.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/screens/walking/walking.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';

import 'widgets/add_sneaker.dart';
import 'widgets/appbar.dart';
import 'widgets/other_sneakers.dart';

class Walking extends StatexWidget<WalkingController> {
  // это переменные прогресс-бара показывают наплнение
  // todo убрать хардкод и переменные добавить
  final double currentValueOne = 70;
  final double currentValueTwo = 40;

  Walking({Key? key}) : super(() => WalkingController(), key: key) {
    debugPrint('walking_screen'.tr());
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Obx(
      () => GeneralScaffold(
        backgroundColor: const AppColorsThemeLight().other.black,
        navBarEnable: true,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(227),
          child: AppBarWidget(),
        ),
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// имя
                Text(
                  'Hello, ${controller.firstName}',
                  style: AppStyles.headline.andColor(AppColors.accent),
                ),
                5.h,

                /// баланс
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppIcons.coin),
                    10.w,
                    Text(
                      '${controller.balance}',
                      style: AppStyles.body.andColor(AppColors.accent),
                    ),
                  ],
                ),
                40.h,
                // ignore: prefer_const_constructors
                AddSneakerWidget(),
                20.h,
                InkWell(
                  onTap: () => Get.find<GeneralScaffoldService>().goToPage(1),
                  // ignore: prefer_const_constructors
                  child: OtherSneakersWidget(),
                ),

                40.h,
                AnimatedProgressBar(
                  text: Row(
                    children: [
                      Text(
                        '${(controller.distance / 1000).toInt()}',
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                      Text(
                        'thousand'.tr().toUpperCase(),
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                      2.w,
                      Text(
                        'slash_sign'.tr(),
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                      Text(
                        '${(controller.distanceMax / 1000).toInt()}',
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                      Text(
                        'thousand'.tr().toUpperCase(),
                        style: AppStyles.body.andColor(AppColors.accent),
                      )
                    ],
                  ),
                  size: 32,
                  icon: SizedBox(
                    width: 28,
                    child: AppIcons.svgWidget(AppIcons.sneaker),
                  ),
                  progressColor: AppColors.accent[1] ?? Colors.transparent,
                  backgroundColor:
                      AppColors.background[1] ?? Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  currentValue: currentValueOne,
                ),
                16.h,
                AnimatedProgressBar(
                  text: Row(
                    children: [
                      Text(
                        '${controller.energy}',
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                      2.w,
                      Text(
                        'slash_sign'.tr(),
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                      Text(
                        '${controller.energyMax}',
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                    ],
                  ),
                  size: 32,
                  icon: SizedBox(
                    width: 28,
                    child: AppIcons.svgWidget(AppIcons.lightning, width: 14),
                  ),
                  progressColor: AppColors.accent[1] ?? Colors.transparent,
                  backgroundColor:
                      AppColors.background[1] ?? Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  currentValue: currentValueTwo,
                ),
                46.h,
                StdButton(
                  color: Colors.transparent,
                  height: 52,
                  text: 'start'.tr(),
                  isActive: true,
                  onPress: () {
                    Get.toNamed(AppRoutes.start);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
