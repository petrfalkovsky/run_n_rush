import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:easy_localization/easy_localization.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/widgets/std_button.dart';

void showDialogYesNo({
  required String text,
  required Function() funcYes,
  bool isLoading = false,
}) {
  Get.dialog(
    AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      titlePadding: const EdgeInsets.only(bottom: 32, top: 71),
      title: Container(
        width: Get.width - 40,
        alignment: Alignment.center,
        child: Text(
          text.tr(),
          style: AppStyles.text17.andWeight(FontWeight.bold),
        ),
      ),
      actions: [
        StdButton(
          text: 'mobile_wallet_app.yes'.tr(),
          isActive: true,
          onPress: funcYes,
          isOutlined: true,
          isLoading: isLoading,
        ),
        StdButton(
          text: 'mobile_wallet_app.no'.tr(),
          isActive: true,
          onPress: Get.back,
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    barrierDismissible: false,
    barrierColor: AppColors.background.bgB2,
  );
}
