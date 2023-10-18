import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/shared/avatar_blurred.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/std_input.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/shared/all_shared.dart';

import '../account.dart';

class Account extends StatexWidget<AccountController> {
  Account({Key? key}) : super(() => AccountController(), key: key) {
    debugPrint('account_screen'.tr());
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Obx(
      () => GeneralScaffold(
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
                    BlurredAvatar(
                      imageUrl: controller.avatar.value,
                      containerSize: 152,
                      positionInsets: const EdgeInsets.all(7),
                      innerContainer: 138,
                      borderColor: Colors.white.withOpacity(0.3),
                      avatarSize: 59,
                    ),
                    38.h,
                    StdInput(
                      hintText: 'input_new_name'.tr(),
                      onChanged: (v) {},
                    ),
                    16.h,
                    StdInput(
                      hintText: 'input_new_lastname'.tr(),
                      obscureText: true,
                      onChanged: (v) {},
                    ),
                    16.h,
                    StdInput(
                      hintText: 'input_new_email'.tr(),
                      obscureText: true,
                      onChanged: (v) {},
                    ),
                    16.h,
                    const Spacer(),
                    StdButton(
                      color: Colors.transparent,
                      height: 52,
                      text: 'save_changes'.tr(),
                      onPress: () => controller.editUser(),
                      isActive: true,
                    ),
                    40.h,
                  ],
                ),
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
                  children: [
                    Text(
                      'account'.tr(),
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
