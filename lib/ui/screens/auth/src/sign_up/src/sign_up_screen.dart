import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/auth/src/sign_up/sign_up.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/std_input.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';
import 'package:vfx_flutter_common/utils.dart';

class SignUpScreen extends StatexWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(() => SignUpController(), key: key) {
    debugPrint('$now: SignInScreen.SignInScreen');
  }

  @override
  Widget buildWidget(BuildContext context) {
    return GeneralScaffold(
      navBarEnable: false,
      appBar: getStatAppBar(
        context,
        text: 'register'.tr(),
        elevation: 0,
        isLeading: true,
        router: AppRoutes.authWelcome,
      ),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StdInput(
                    hintText: 'email'.tr(),
                    controller: controller.emailController,
                    onChanged: (v) =>
                        controller.onChange(controller.emailController, v),
                  ),
                  16.h,
                  StdInput(
                    hintText: 'inventPassword'.tr(),
                    controller: controller.passwordController,
                    obscureText: true,
                    onChanged: (v) =>
                        controller.onChange(controller.passwordController, v),
                  ),
                  const Spacer(),
                  Obx(() => StdButton(
                        text: 'registration'.tr(),
                        onPress: controller.goToCreateProfile,
                        isActive: true,
                        isLoading: controller.isLoading,
                      )),
                  24.h,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${'alreadySignedUp'.tr()}  ',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        TextSpan(
                          text: 'login'.tr(),
                          style: Theme.of(context).appTextTheme.b2_1.copyWith(
                              color: Theme.of(context)
                                  .appColorsScheme
                                  .colors
                                  .accent
                                  .accent1),
                          recognizer: TapGestureRecognizer()
                            ..onTap = controller.goToSignIn,
                        ),
                      ],
                    ),
                  ),
                  45.h,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
