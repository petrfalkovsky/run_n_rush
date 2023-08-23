import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/auth/src/sign_in/sign_in.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';
import 'package:run_n_rush/ui/shared/widgets/buttons/custom_rounded_button.dart';
import 'package:run_n_rush/ui/shared/widgets/std_input.dart';

class ResetPasswordScreen extends GetView<SignInController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      navBarEnable: false,
      appBar: getStatAppBar(
        context,
        text: 'passwordRecovery'.tr(),
        elevation: 0,
        isLeading: true,
      ),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    'instructionAboutRestorePassword'.tr(),
                    style: AppTextStyles.b2Regular,
                  ),
                  16.h,
                  StdInput(
                    hintText: 'email'.tr(),
                    controller: controller.emailController,
                    onChanged: (v) =>
                        controller.onChange(controller.emailController, v),
                  ),
                  16.h,
                  CustomRoundedButton(
                    text: 'restorePassword'.tr(),
                    onPressed: controller.resetPassword,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
