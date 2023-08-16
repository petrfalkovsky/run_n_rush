import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:riverside/ui/screens/auth/src/sign_up/src/sign_up_controller.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';
import 'package:riverside/ui/shared/widgets/std_button.dart';
import 'package:riverside/ui/shared/widgets/std_input.dart';

class CreateProfileSignUp extends GetView<SignUpController> {
  const CreateProfileSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      navBarEnable: false,
      appBar: getStatAppBar(
        context,
        title: Obx(
          () => Text(
            controller.isCode ? 'inputCode'.tr() : 'creatingProfile'.tr(),
            style: AppTextStyles.b2SemiBold,
          ),
        ),
        rChange: true,
        elevation: 0,
        isLeading: true,
      ),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Obx(
                () => Column(
                  children: [
                    if (controller.isCode)
                      Column(
                        children: [
                          16.h,
                          Text(
                            'instructionEntryCode'.tr(),
                            style: AppTextStyles.b2Regular,
                          ),
                          16.h,
                          StdInput(
                            hintText: 'inputCode'.tr(),
                            keyboardType: TextInputType.number,
                            controller: controller.codeController,
                            onChanged: (v) => controller.onChange(
                                controller.codeController, v),
                          ),
                        ],
                      )
                    else ...[
                      StdInput(
                        hintText: 'name'.tr(),
                        controller: controller.nameController,
                        onChanged: (v) =>
                            controller.onChange(controller.nameController, v),
                      ),
                      16.h,
                      StdInput(
                        hintText: 'surname'.tr(),
                        controller: controller.surnameController,
                        onChanged: (v) => controller.onChange(
                            controller.surnameController, v),
                      ),
                      16.h,
                      StdInput(
                        isPhone: true,
                        inputFormatters: [
                          MaskTextInputFormatter(
                            mask: '###-###-##-##',
                            filter: {'#': RegExp(r'[0-9]')},
                          )
                        ],
                        hintText: 'instructionEditPhoneNumber'.tr(),
                        controller: controller.phoneController,
                        onChanged: (v) =>
                            controller.onChange(controller.phoneController, v),
                      ),
                      16.h,
                      StdInput(
                        inputFormatters: [
                          MaskTextInputFormatter(mask: '##-##-####')
                        ],
                        hintText: 'birthdayDateMask'.tr(),
                        controller: controller.birthdayController,
                        onChanged: (v) => controller.onChange(
                            controller.birthdayController, v),
                      ),
                    ],
                    16.h,
                    StdButton(
                      text: 'completeRegistration'.tr(),
                      onPress: controller.getSignUp,
                      isActive: true,
                      isLoading: controller.isLoading,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
