import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:run_n_rush/ui/screens/settings/src/referral_controller.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/std_input.dart';

class UpdateProfileScreen extends GetView<SettingsController> {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      navBarEnable: false,
      appBar: getStatAppBar(
        context,
        isLeading: true,
        funcBack: controller.clearFunc,
        text: controller.updateTitle.tr(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              controller.updateDesc.tr(),
              style: AppTextStyles.manrope,
            ),
            16.h,
            StdInput(
              isPhone: controller.isPhone,
              hintText: controller.updateHintText.tr(),
              controller: controller.commonController,
              obscureText: controller.isPassword,
              keyboardType: controller.isBirthday || controller.isPhone
                  ? TextInputType.number
                  : null,
              inputFormatters: controller.isBirthday
                  ? [
                      MaskTextInputFormatter(
                        mask: '##-##-####',
                        filter: {'#': RegExp(r'[0-9]')},
                      ),
                    ]
                  : controller.isPhone
                      ? [
                          MaskTextInputFormatter(
                            mask: ' ###-###-##-##',
                            filter: {'#': RegExp(r'[0-9]')},
                          ),
                        ]
                      : [],
            ),
            if (controller.isPassword) ...[
              16.h,
              StdInput(
                hintText: 'newPassword'.tr(),
                obscureText: true,
                controller: controller.newPasswordController,
              ),
            ],
            const Spacer(),
            Obx(
              () => StdButton(
                text: controller.updateButtonName.tr(),
                isActive: true,
                isLoading: controller.isLoading,
                onPress: controller.updateProfile,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
