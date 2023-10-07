// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/data/dto/account/account.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/screens/referral/referral.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';

import '../balance.dart';

class Balance extends StatexWidget<BalanceController> {
  Balance({Key? key}) : super(() => BalanceController(), key: key) {
    debugPrint('balance_screen'.tr());
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
            26.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Transaction History".tr(),
                      style: AppStyles.body
                          .andWeight(FontWeight.w600)
                          .andColor(AppColors.text.primary),
                    ),
                  ),
                  18.h,
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.transactionList
                        .length, // Используйте длину списка транзакций
                    itemBuilder: (context, index) {
                      final transaction = controller.transactionList[
                          index]; // Получите транзакцию по индексу

                      return Column(
                        children: [
                          TransactionItemWidget(
                            transaction:
                                transaction, // Передайте транзакцию в виджет
                          ),
                          if (index < controller.transactionList.length - 1)
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
                      'amount_coins_example_two'.tr(),
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
                text: 'buy'.tr().toUpperCase(),
                isActive: true,
                onPress: () {},
              ),
              8.w,
              StdButton(
                icon: AppIcons.outIcon,
                height: 56,
                color: Colors.transparent,
                width: 176,
                text: 'sell'.tr().toUpperCase(),
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
                      'balance'.tr(),
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
