import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/screens/referral/referral.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';

class Settings extends StatexWidget<ReferralsController> {
  Settings({Key? key}) : super(() => ReferralsController(), key: key) {
    debugPrint(' экран настроек"');
  }

  @override
  Widget buildWidget(BuildContext context) {
    RxBool _switchValue = true.obs;

    return Obx(
      () => GeneralScaffold(
          backgroundColor: const AppColorsThemeLight().other.black,
          navBarEnable: true,
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
                            "Total Distance",
                            style: AppStyles.caption
                                .andWeight(FontWeight.w600)
                                .andColor(AppColors.text.secondary),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text(
                                "364 km",
                                style: AppStyles.caption
                                    .andWeight(FontWeight.w600)
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
                            "Sound",
                            style: AppStyles.caption
                                .andWeight(FontWeight.w600)
                                .andColor(AppColors.text.secondary),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            activeColor: AppColors.accent[1],
                            value: _switchValue.value,
                            onChanged: (newValue) {
                              _switchValue.value = newValue;
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
                            "Terms of Use",
                            style: AppStyles.caption
                                .andWeight(FontWeight.w600)
                                .andColor(AppColors.text.secondary),
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
                            "Privacy Policy",
                            style: AppStyles.caption
                                .andWeight(FontWeight.w600)
                                .andColor(AppColors.text.secondary),
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
            onTap: () => Get.toNamed(AppRoutes.account),
            child: AppIcons.svgWidget(AppIcons.arrowForward, width: 8),
          ),
        ],
      ),
    );
  }
}
