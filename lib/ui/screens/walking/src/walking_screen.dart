// ignore_for_file: unused_import, unnecessary_import

import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/shared/avatar_blurred.dart';
import 'package:run_n_rush/ui/shared/widgets/animated_progress_bar.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/screens/walking/walking.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';

class Walking extends StatexWidget<WalkingController> {
  // todo убрать хардкод и переменные добавить
  final double currentValueOne = 70;
  final double currentValueTwo = 40;

  Walking({Key? key}) : super(() => WalkingController(), key: key) {
    debugPrint('main_screen'.tr());
  }

  @override
  Widget buildWidget(BuildContext context) {
    return GeneralScaffold(
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
              Text(
                'email_example'.tr(),
                style: AppStyles.headline.andColor(AppColors.accent),
              ),
              5.h,
              const GreatingBalanceWidget(),
              40.h,
              const AddSneakerWidget(),
              20.h,
              const ListAddSneakersWidget(),
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
                backgroundColor: AppColors.background[1] ?? Colors.transparent,
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
                backgroundColor: AppColors.background[1] ?? Colors.transparent,
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
        const AvatarWidget(),
      ],
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlurredAvatar(
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

class ListAddSneakersWidget extends StatelessWidget {
  const ListAddSneakersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 4; i++)
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
                        const Icon(
                          Icons.add,
                          color: Color(0xFF1DB9DD),
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
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
  // изначально показываю пустой виджет
  bool showImage = true;
  final WalkingController controller = Get.find<WalkingController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // если надо при нажатии на блок состояние поменять
        controller.toggleShowImage(false);

        Get.toNamed(AppRoutes.inventory);
      },
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
              child: Obx(() {
                // иcsпользую значение из контроллера чтобы понять,
                // нужно ли отображать новый вид виджета
                if (controller.showImage.value) {
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
                      // 32.w,
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'jogger_2023'.tr(),
                            style:
                                AppStyles.headline.andColor(AppColors.accent),
                          ),
                          17.h,
                          Text(
                            'amount_id_transaction_exapmple'.tr(),
                            style: AppStyles.body.andColor(AppColors.accent),
                          ),
                        ],
                      ),
                      68.w,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppIcons.joggerColored),
                        ],
                      ),
                      const Spacer(),
                      // 32.w,
                    ],
                  );
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class GreatingBalanceWidget extends StatelessWidget {
  const GreatingBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppIcons.coin),
        10.w,
        Text(
          'coins_balance_example'.tr(),
          style: AppStyles.body.andColor(AppColors.accent),
        ),
      ],
    );
  }
}
