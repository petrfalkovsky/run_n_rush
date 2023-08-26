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

class Referral extends StatexWidget<ReferralsController> {
  Referral({Key? key}) : super(() => ReferralsController(), key: key) {
    debugPrint(' экран реферальной программы"');
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
                      'Refer friends.',
                      style: AppStyles.title2
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.primary),
                    ),
                    Text(
                      'Earn Money',
                      style: AppStyles.title2
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.primary),
                    ),
                    16.h,
                    Text(
                      "Invite friends to sign up using your link \n and you'll get 10% of their purchase",
                      style: AppStyles.body
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.primary),
                    ),
                    20.h,
                    Text(
                      "Your referral ID",
                      style: AppStyles.caption
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.secondary),
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
                      '14',
                      style: AppStyles.title2
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.primary),
                    ),
                    Text(
                      'Referrals',
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
                          '273.54',
                          style: AppStyles.title2
                              .andWeight(FontWeight.w600)
                              .andColor(AppColors.text.primary),
                        ),
                      ],
                    ),
                    Text(
                      'Earned (for all time)',
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
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Refferal Program',
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
