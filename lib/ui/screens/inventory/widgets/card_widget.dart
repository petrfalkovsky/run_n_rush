import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';

import '../../main/main.dart';

class CardItemWidget extends StatelessWidget {
  final SneakerInventory inventory;

  const CardItemWidget({
    super.key,
    required this.inventory,
  });
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PageView(
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(),
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
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    width: 122,
                                    height: 118,
                                    color: Colors.black.withOpacity(0.05),
                                  ),
                                ),
                              ),
                            ),
                            10.h,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                              mainAxisAlignment: MainAxisAlignment.center,
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
                          final MainController addSneakerController =
                              Get.find<MainController>();

                          // вызываю метод для обновления состояния
                          addSneakerController.toggleShowImage(false);
                          // передаю аргументы при нажатии на кнопку
                          Get.toNamed(
                            AppRoutes.main,
                            arguments: "Добавлено",
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    });
  }
}
