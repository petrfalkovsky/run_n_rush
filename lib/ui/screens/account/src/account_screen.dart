import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/std_input.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/screens/referral/referral.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';

class Account extends StatexWidget<ReferralsController> {
  Account({Key? key}) : super(() => ReferralsController(), key: key) {
    debugPrint(' экран реферальной программы"');
  }

  @override
  Widget buildWidget(BuildContext context) {
    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.black,
      navBarEnable: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: AppBarWidget(),
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
                  38.h,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 152,
                        height: 152,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF01B8FF),
                        ),
                        child: Center(
                          child: Image.asset(
                            AppIcons.avatar,
                            width: 59,
                            height: 59,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  38.h,
                  StdInput(
                      hintText: 'Email',
                      // controller: controller.emailController,
                      onChanged: (v) {}

                      // => controller.onChange(controller.emailController, v),
                      ),
                  16.h,
                  StdInput(
                      hintText: 'Login',
                      // controller: controller.passwordController,
                      obscureText: true,
                      onChanged: (v) {}
                      // => controller.onChange(controller.passwordController, v),
                      ),
                  16.h,
                  const Spacer(),
                  StdButton(
                    height: 52,
                    text: 'Save Changes',
                    onPress: () {},
                    isActive: true,
                  ),
                  40.h,
                ],
              ),
            ),
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
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Account',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
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
