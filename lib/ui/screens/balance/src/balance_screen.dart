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

import '../balance.dart';

class Balance extends StatexWidget<BalanceController> {
  Balance({Key? key}) : super(() => BalanceController(), key: key) {
    debugPrint(' экран реферальной программы');
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
      child: ListView(
        children: [
          const BalanceWidget(),
          26.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Transaction History",
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
                AppIcons.outIcon,
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
                    "Withdraw",
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
              Text(
                "+",
                style: AppStyles.body
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.primary),
                textAlign: TextAlign.end,
              ),
              Image.asset(AppIcons.coin),
              5.5.w,
              Text(
                "74.32",
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
      height: 152,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 176,
            child: Column(
              children: [
                10.h,
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
              ],
            ),
          ),
          20.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StdButton(
                icon: AppIcons.inIcon,
                height: 56,
                color: Colors.transparent,
                width: 176,
                text: 'BUY',
                isActive: true,
                onPress: () {},
              ),
              8.w,
              StdButton(
                icon: AppIcons.outIcon,
                height: 56,
                color: Colors.transparent,
                width: 176,
                text: 'SELL',
                isActive: true,
                onPress: () {},
              ),
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
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Balance',
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
