import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';

import '../src/inventory_controller.dart';

class CardItemInventory extends StatelessWidget {
  final SneakerInventory inventory;
  final RxBool isButtonActive = RxBool(true);

  CardItemInventory({super.key, required this.inventory});

  @override
  Widget build(BuildContext context) {
    final imageUrl = inventory.imageUrl;
    final isImageUrlEmpty = imageUrl == null || imageUrl.isEmpty;

    return Stack(
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
                  bottom: 14,
                  top: 12,
                  left: 10,
                  right: 10,
                ),
                child: Container(
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
                          left: 14,
                          right: 14,
                          top: 14,
                        ),
                        child: DottedBorder(
                          dashPattern: const [12, 4],
                          color: const Color(0xFF134552),
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                                width: 122,
                                height: 118,
                                color: Colors.black.withOpacity(0.05),
                                child: isImageUrlEmpty
                                    ? Image.asset(AppIcons.jogger_2)
                                    : CachedNetworkImage(
                                        imageUrl: imageUrl,
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      )),
                          ),
                        ),
                      ),
                      15.h,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            inventory.title ?? "jogger".tr(),
                            style: AppStyles.plainText
                                .andWeight(FontWeight.bold)
                                .andColor(AppColors.text.primary),
                          ),
                        ],
                      ),
                      13.h,
                      Text(
                        inventory.earnedAmount ??
                            "amount_id_transaction_exapmple".tr(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppIcons.coin),
                          const SizedBox(width: 5),
                          Text(
                            'coins_balance_example'.tr(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
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
                Obx(
                  () => StdButton(
                    height: 36,
                    width: 97,
                    text: Get.find<InventoryController>()
                            .isDressedFilterActive
                            .value
                        ? 'dressed'.tr().toUpperCase()
                        : Get.find<InventoryController>()
                                    .dressedSneakers[inventory.id] ==
                                true
                            ? 'dressed'.tr().toUpperCase()
                            : isButtonActive.value
                                ? 'put_on'.tr().toUpperCase()
                                : 'dressed'.tr().toUpperCase(),
                    isActive: Get.find<InventoryController>()
                            .isDressedFilterActive
                            .value
                        ? false
                        : Get.find<InventoryController>()
                                    .dressedSneakers[inventory.id] !=
                                true &&
                            isButtonActive.value,
                    onPress: () {
                      final sneakerId = inventory.id;
                      if (sneakerId != null && isButtonActive.value) {
                        Get.find<InventoryController>().putOn(sneakerId);
                        Get.back();
                        isButtonActive.value =
                            false; // Сделать кнопку неактивной после нажатия
                      } else {
                        debugPrint('ой чот кнопка не сработала');
                        // todo Обработка случая, когда sneaker.id равно null.
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
