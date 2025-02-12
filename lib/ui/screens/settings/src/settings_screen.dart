import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/shared/avatar_blurred.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/shared/all_shared.dart';

import '../settings.dart';

class Settings extends StatexWidget<SettingsController> {
  Settings({Key? key}) : super(() => SettingsController(), key: key) {
    debugPrint('settings_screen'.tr());
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Obx(
      () => GeneralScaffold(
          backgroundColor: const AppColorsThemeLight().other.black,
          navBarEnable: false,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(64),
            child: AppBarWidget(),
          ),
          child: ListView(
            children: [
              const BalanceWidget(),
              16.h,
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 58,
                      child: Row(
                        children: [
                          Text(
                            "total_distance".tr(),
                            style: AppStyles.plainTextMedium
                                .andWeight(FontWeight.normal)
                                .andColor(AppColors.text.secondary),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                '${controller.totalDistance.value}',
                                style: AppStyles.plainTextMedium
                                    .andWeight(FontWeight.bold)
                                    .andColor(AppColors.text.primary),
                              ),
                              4.w,
                              Text(
                                "km".tr(),
                                style: AppStyles.plainTextMedium
                                    .andWeight(FontWeight.bold)
                                    .andColor(AppColors.text.primary),
                              ),
                              16.w,
                              InkWell(
                                onTap: () => Get.back(),
                                child: AppIcons.svgWidget(AppIcons.arrowForward,
                                    width: 8),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 58,
                      child: Row(
                        children: [
                          Text(
                            "sound".tr(),
                            style: AppStyles.plainTextMedium
                                .andWeight(FontWeight.normal)
                                .andColor(AppColors.text.primary),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            activeColor: AppColors.accent[1],
                            value: controller.sound.value,
                            onChanged: (newValue) {
                              controller.sound.value = newValue;
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 58,
                      child: Row(
                        children: [
                          Text(
                            "terms".tr(),
                            style: AppStyles.plainTextMedium
                                .andWeight(FontWeight.normal)
                                .andColor(AppColors.text.primary),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              16.w,
                              InkWell(
                                onTap: () => Get.back(),
                                child: AppIcons.svgWidget(AppIcons.arrowForward,
                                    width: 8),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 58,
                      child: Row(
                        children: [
                          Text(
                            "privacy_policy".tr(),
                            style: AppStyles.plainTextMedium
                                .andWeight(FontWeight.normal)
                                .andColor(AppColors.text.primary),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              16.w,
                              InkWell(
                                onTap: () => Get.back(),
                                child: AppIcons.svgWidget(AppIcons.arrowForward,
                                    width: 8),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF5A57AC),
      height: 104,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AboutUserWidget(),
        ],
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
        AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 24,
            ),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF8784D3),
          elevation: 0,
          // toolbarHeight: 0,
          automaticallyImplyLeading: true,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'settings'.tr(),
                      style: AppStyles.headline.andColor(AppColors.accent),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AboutUserWidget extends StatelessWidget {
  const AboutUserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SettingsController controller = Get.find<SettingsController>();
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Row(
          children: [
            BlurredAvatar(
              imageUrl: controller.avatar.value,
              innerContainer: 65,
              borderColor: Colors.white.withOpacity(0.3),
              containerSize: 75,
              positionInsets: const EdgeInsets.all(5),
              avatarSize: 28,
            ),
            16.w,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                12.h,
                Text(
                  controller.firstName.value ?? 'waiting..',
                  style: AppStyles.headline
                      .andWeight(FontWeight.w600)
                      .andColor(AppColors.text.primary),
                ),
                18.h,
                Text(
                  controller.email.value ?? 'waiting..',
                  style: AppStyles.plainTextSmall
                      .andWeight(FontWeight.normal)
                      .andColor(AppColors.text.primary),
                ),
                12.h,
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () => Get.toNamed(AppRoutes.account),
              child: AppIcons.svgWidget(AppIcons.arrowForward, width: 8),
            ),
          ],
        ),
      ),
    );
  }
}
