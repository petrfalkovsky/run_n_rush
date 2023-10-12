// ignore_for_file: unused_import, unnecessary_import

import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/data/dto/walking/src/walking.dart';
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
                        'result_example'.tr(),
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
                        '50_steps_example'.tr(),
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
                        'result_example'.tr(),
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                      2.w,
                      Text(
                        'slash_sign'.tr(),
                        style: AppStyles.body.andColor(AppColors.accent),
                      ),
                      Text(
                        'result_example'.tr(),
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

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [],
          ),
        ),
        const SettingsIconWidget(),

        /// аватар
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlurredAvatar(
                    customWidget:
                        Get.find<WalkingController>().avatarUrl.value != null
                            ? Image.network(
                                // todo проверить реальный аватар, сейчас пока
                                // не реализована загрузка авы в профиле
                                Get.find<WalkingController>().avatarUrl.value,
                                width: 152,
                                height: 152,
                              )
                            : Image.asset(
                                AppIcons.avatar,
                                fit: BoxFit.cover,
                              ),
                    containerSize: 152,
                    positionInsets: const EdgeInsets.all(8),
                    innerContainer: 136,
                    borderColor: Colors.white.withOpacity(0.3),
                    avatarSize: 59,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SettingsIconWidget extends StatelessWidget {
  const SettingsIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 27,
      top: MediaQuery.of(context).size.height * 0.12,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 16,
              offset: const Offset(0, 14),
            ),
          ],
        ),
        child: InkWell(
            onTap: () => Get.toNamed(AppRoutes.settings),
            child: AppIcons.svgWidget(AppIcons.settings, width: 26.5)),
      ),
    );
  }
}

class OtherSneakersWidget extends StatelessWidget {
  const OtherSneakersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sneakerList = Get.find<WalkingController>().sneakerList;
    List<Widget> sneakerWidgets = [];

    for (int i = 1; i < 5; i++) {
      if (i < sneakerList.length) {
        final sneaker = sneakerList[i];
        if (sneaker.imageUrl != null) {
          sneakerWidgets.add(
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DottedBorder(
                  dashPattern: const [12, 4],
                  color: const Color(0xFF1DB9DD),
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            color: Colors.black.withOpacity(0.05),
                          ),
                          SizedBox(
                            width: 100,
                            height: 80,
                            child: Image.network(sneaker.imageUrl ?? ''),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          // Если элемента нет или нет imageUrl, показываем виджет с иконкой Icons.add
          sneakerWidgets.add(
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DottedBorder(
                  dashPattern: const [12, 4],
                  color: const Color(0xFF1DB9DD),
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: Icon(
                        Icons.add,
                        color: Color(0xFF1DB9DD),
                        size: 36,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      } else {
        // Если i больше или равно длине списка, показываем виджет с иконкой Icons.add
        sneakerWidgets.add(
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DottedBorder(
                dashPattern: const [12, 4],
                color: const Color(0xFF1DB9DD),
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: Icon(
                      Icons.add,
                      color: Color(0xFF1DB9DD),
                      size: 36,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }

    return Row(
      children: sneakerWidgets,
    );
  }
}

class AddSneakerWidget extends StatefulWidget {
  const AddSneakerWidget({
    Key? key,
  }) : super(key: key);

  @override
  AddSneakerWidgetState createState() => AddSneakerWidgetState();
}

class AddSneakerWidgetState extends State<AddSneakerWidget> {
  final WalkingController controller = Get.find<WalkingController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.find<GeneralScaffoldService>().goToPage(1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DottedBorder(
          dashPattern: const [12, 4],
          color: const Color(0xFF1DB9DD),
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          padding: const EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: SizedBox(
                width: double.infinity,
                height: 88,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    width: double.infinity,
                    height: 88,
                    child: _buildFirstSneaker(),
                  ),
                )),
          ),
        ),
      ),
    );
  }

  Widget _buildFirstSneaker() {
    final sneakerList = Get.find<WalkingController>().sneakerList;

    if (sneakerList.isEmpty) {
      return Stack(alignment: Alignment.center, children: [
        Image.asset(AppIcons.disabledJogger),
        Container(
          color: Colors.black.withOpacity(0.05),
        ),
        const Icon(
          Icons.add,
          color: Color(0xFF1DB9DD),
          size: 36,
        ),
      ]);
    } else {
      return Row(
        children: [
          20.w,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sneakerList[0].title ?? 'jogger_2023'.tr(),
                style: AppStyles.headline.andColor(AppColors.accent),
              ),
              17.h,
              Text(
                sneakerList[0].id?.substring(0, 8) ??
                    'amount_id_transaction_exapmple'.tr(),
                style: AppStyles.body.andColor(AppColors.accent),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 80,
                child: Image.network(sneakerList[0].imageUrl ?? ''),
              ),
            ],
          ),
          20.w,
        ],
      );
    }
  }
}
