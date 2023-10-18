// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/screens/referral/referral.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';

class Referral extends StatexWidget<ReferralController> {
  Referral({Key? key}) : super(() => ReferralController(), key: key) {
    debugPrint('ref_screen'.tr());
  }

  @override
  Widget buildWidget(BuildContext context) {
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
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'refer_friends'.tr(),
                    style: AppStyles.title2
                        .andWeight(FontWeight.bold)
                        .andColor(AppColors.text.primary),
                  ),
                  Text(
                    'earn_money'.tr(),
                    style: AppStyles.title2
                        .andWeight(FontWeight.w600)
                        .andColor(AppColors.text.primary),
                  ),
                  16.h,
                  SizedBox(
                    width: 300,
                    child: Text(
                      textAlign: TextAlign.center,
                      maxLines: 10,
                      '${controller.greeting.value}',
                      // ?? 'invite_friends'.tr(),
                      style: AppStyles.body
                          .andWeight(FontWeight.normal)
                          .andColor(AppColors.text.primary),
                    ),
                  ),
                  20.h,
                  Text(
                    "your_ref_ID".tr(),
                    style: AppStyles.caption
                        .andWeight(FontWeight.normal)
                        .andColor(AppColors.text.secondary),
                  ),
                  8.h,
                  StdButton(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    textColor: Colors.black,
                    color: Colors.white,
                    text: controller.code.value ?? 'ref_ID_example'.tr(),
                    isActive: false,
                    onPress: () {},
                  ),
                  8.h,
                  Text(
                    "friends_must_use".tr(),
                    style: AppStyles.caption
                        .andWeight(FontWeight.normal)
                        .andColor(AppColors.text.secondary),
                  ),
                  16.h,
                  StdButton(
                    fontSize: 20,
                    color: Colors.transparent,
                    text: 'copy_link'.tr(),
                    isActive: true,
                    onPress: () {},
                  ),
                  40.h,
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "reward_from_referrals".tr(),
                      style: AppStyles.body
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.primary),
                    ),
                  ),
                  22.h,
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const ReferalItemWidget(),
                          if (index < 9)
                            const Divider(
                              height: 0.5,
                              color: Color(0xFF47466F),
                            ),
                          17.h,
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
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
                "time_date_example".tr(),
                style: AppStyles.caption
                    .andWeight(FontWeight.normal)
                    .andColor(AppColors.text.secondary),
              ),
              9.h,
              Row(
                children: [
                  Text(
                    "email_example_two".tr(),
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
    final ReferralController controller = Get.find<ReferralController>();
    return Obx(
      () => Container(
        color: const Color(0xFF5A57AC),
        height: 88,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Spacer(),
                SizedBox(
                  width: 176,
                  child: Column(
                    children: [
                      Text(
                        '${controller.referralsCount.value}',
                        style: AppStyles.title2
                            .andWeight(FontWeight.bold)
                            .andColor(AppColors.text.primary),
                      ),
                      Text(
                        'referrals',
                        style: AppStyles.body
                            .andWeight(FontWeight.normal)
                            .andColor(AppColors.text.secondaryTwo),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 176,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppIcons.coin),
                          9.w,
                          Text(
                            '${controller.balance.value}',
                            style: AppStyles.title2
                                .andWeight(FontWeight.bold)
                                .andColor(AppColors.text.primary),
                          ),
                        ],
                      ),
                      Text(
                        'earned'.tr(),
                        style: AppStyles.body
                            .andWeight(FontWeight.normal)
                            .andColor(AppColors.text.secondaryTwo),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
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
        AppBar(
          backgroundColor: const Color(0xFF8784D3),
          elevation: 0,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'referal_program'.tr(),
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
