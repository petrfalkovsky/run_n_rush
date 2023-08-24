import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/screens/referral/referral.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';

class Settings extends StatexWidget<SettingsController> {
  Settings({Key? key}) : super(() => SettingsController(), key: key) {
    debugPrint(' экран настроек"');
  }

  @override
  Widget buildWidget(BuildContext context) {
    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.black,
      navBarEnable: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: AppBarWidget(),
      ),
      child: Obx(
        () {
          return ListView(
            children: [
              const BalanceWidget(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Settings',
                      style: AppStyles.title2
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.primary),
                    ),
                    8.h,
                    StdButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      text: '345465',
                      isActive: false,
                      isLoading: controller.isLoading,
                      onPress: controller.logout,
                    ),
                    8.h,
                    Text(
                      "Friends must use your ID when sign up!",
                      style: AppStyles.caption
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.secondary),
                    ),
                    16.h,
                    StdButton(
                      text: 'Copy Link',
                      isActive: true,
                      isLoading: controller.isLoading,
                      onPress: controller.logout,
                    ),
                    40.h,
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Reward From Referrals",
                        style: AppStyles.body
                            .andWeight(FontWeight.w600)
                            .andColor(AppColors.text.primary),
                      ),
                    ),
                    18.h,
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ReferalItemWidget extends StatelessWidget {
  const ReferalItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      /// уменьшить расстояние между девайдером и айтемом
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF01B8FF),
            ),
            child: Center(
              child: Image.asset(
                AppIcons.avatar,
                width: 16.3,
                height: 16.3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          6.w,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              4.h,
              Text(
                "11.12.2022, 18:43",
                style: AppStyles.caption
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.secondary),
              ),
              9.h,
              Row(
                children: [
                  Text(
                    "some@email.com",
                    style: AppStyles.body
                        .andWeight(FontWeight.w600)
                        .andColor(AppColors.text.primary),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Image.asset(AppIcons.coin),
              5.5.w,
              Text(
                "75",
                style: AppStyles.body
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.primary),
                textAlign: TextAlign.end,
              ),
            ],
          )
        ],
      ),
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
        children: [
          const AboutUserWidget(),
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
            padding: const EdgeInsets.only(left: 18),
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
                  children: const [
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF01B8FF),
            ),
            child: Center(
              child: Image.asset(
                AppIcons.avatar,
                width: 28,
                height: 28,
                fit: BoxFit.cover,
              ),
            ),
          ),
          16.w,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              12.h,
              Text(
                "Runner",
                style: AppStyles.headline
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.primary),
              ),
              18.h,
              Text(
                "somelongemail@outlook.com",
                style: AppStyles.caption
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.secondary),
              ),
              12.h,
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () => Get.back(),
            child: AppIcons.svgWidget(AppIcons.arrowForward, width: 8),
          ),
        ],
      ),
    );
  }
}
