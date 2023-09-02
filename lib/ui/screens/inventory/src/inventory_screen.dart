// ignore_for_file: unused_import

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/screens/shop/src/shop_screen.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/bottom_sheet_modal.dart';
import 'package:run_n_rush/ui/shared/widgets/drop_down.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/toggle_swithcer.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class InventoryScreen extends StatexWidget<InventoryController> {
  InventoryScreen({Key? key}) : super(() => InventoryController(), key: key) {
    debugPrint('inventory_screen'.tr());
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
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  /// фильтр
                  FilterDropdown(),
                  const Spacer(),

                  /// переключатель предложений купить/продать
                  AnimatedSwitcherWidget(
                    onTap: () {},
                  ),
                ],
              ),
            ),
            20.h,
            Expanded(
              child: Stack(
                children: const [
                  /// товары
                  ProductListWidget(),
                ],
              ),
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
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'inventory'.tr(),
                      style: AppStyles.headline
                          .andWeight(FontWeight.bold)
                          .andColor(AppColors.text.primary),
                    ),
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

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
        // controller: controller.pageController,
        physics: const BouncingScrollPhysics(),
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              /// можно регулировать высоту карточки
              mainAxisExtent: 300,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 0,
            ),
            // число карточек в списке
            itemCount: 8,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Stack(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                              // color: Colors.grey,
                              ),
                        ),
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(

                                  /// боттом - центрировать кнопку к бордеру карточки по вертикали
                                  bottom: 14,
                                  top: 12,
                                  left: 10,
                                  right: 10),
                              child: Container(
                                // height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: const Color(0xFF134552),
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 14, right: 14, top: 14),
                                      child: DottedBorder(
                                        dashPattern: const [12, 4],
                                        color: const Color(0xFF134552),
                                        borderType: BorderType.RRect,
                                        radius: const Radius.circular(12),
                                        // padding: const EdgeInsets.all(6),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Container(
                                            width: 122,
                                            height: 118,
                                            color:
                                                Colors.black.withOpacity(0.05),
                                          ),
                                        ),
                                      ),
                                    ),
                                    10.h,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "jogger".tr(),
                                          style: AppStyles.plainText
                                              .andWeight(FontWeight.bold)
                                              .andColor(AppColors.text.primary),
                                        ),
                                        10.w,
                                        Text(
                                          "4-10".tr(),
                                          style: AppStyles.plainText
                                              .andWeight(FontWeight.normal)
                                              .andColor(AppColors.text.primary),
                                        ),
                                        4.w,
                                        Text(
                                          "km_h".tr(),
                                          style: AppStyles.plainText
                                              .andWeight(FontWeight.normal)
                                              .andColor(AppColors.text.primary),
                                        ),
                                      ],
                                    ),
                                    10.h,
                                    Text(
                                      "amount_id_transaction_exapmple".tr(),
                                      style: AppStyles.plainText
                                          .andWeight(FontWeight.bold)
                                          .andColor(AppColors.text.primary),
                                    ),
                                    10.h,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(AppIcons.coin),
                                        5.w,
                                        Text(
                                          'amount_coins_example_three'.tr(),
                                          style: AppStyles.plainText
                                              .andWeight(FontWeight.bold)
                                              .andColor(AppColors.text.primary),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StdButton(
                                color: Colors.transparent,
                                height: 36,
                                width: 122,
                                text: 'put_on'.tr().toUpperCase(),
                                isActive: true,
                                onPress: () {
                                  CustomModal.show(
                                    color: Colors.black,
                                    context,
                                    child: const BottomSheetChildWidget(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ]);
  }
}
