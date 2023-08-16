import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';
import 'package:riverside/ui/shared/widgets/std_button.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:riverside/ui/screens/settings/settings.dart';
import 'package:riverside/ui/shared/all_shared.dart';

class Settings extends StatexWidget<SettingsController> {
  Settings({Key? key}) : super(() => SettingsController(), key: key) {
    debugPrint(' Settings.Settings');
  }

  @override
  Widget buildWidget(BuildContext context) {
    return GeneralScaffold(
      navBarEnable: true,
      appBar: getStatAppBar(
        context,
        text: 'settings'.tr(),
        elevation: 0.4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Obx(
          () {
            final date = DateFormat('dd-MM-yyyy').format(
                DateTime.tryParse(controller.userData.birthday ?? '') ??
                    DateTime.now());
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: _BlockSetting(
                          title: 'name'.tr(),
                          info: controller.userData.firstName ?? '',
                          type: TypeSetting.name,
                        ),
                      ),
                      16.w,
                      Expanded(
                        child: _BlockSetting(
                          title: 'surname'.tr(),
                          info: controller.userData.lastName ?? '',
                          type: TypeSetting.sername,
                        ),
                      ),
                    ],
                  ),
                  32.h,
                  _BlockSetting(
                    title: 'birthday'.tr(),
                    info: date,
                    type: TypeSetting.birthday,
                  ),
                  32.h,
                  _BlockSetting(
                    title: 'phoneNumber'.tr(),
                    info: controller.userData.phoneNumber ?? '',
                    type: TypeSetting.phone,
                  ),
                  32.h,
                  _BlockSetting(
                    title: 'password'.tr(),
                    info: '********',
                    type: TypeSetting.password,
                  ),
                  32.h,
                  _BlockSetting(
                    title: 'email'.tr(),
                    info: controller.userData.email ?? '',
                    type: TypeSetting.email,
                  ),
                  32.h,
                  StdButton(
                    text: 'logoutAccount'.tr(),
                    isActive: true,
                    isLoading: controller.isLoading,
                    onPress: controller.logout,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BlockSetting extends GetView<SettingsController> {
  const _BlockSetting({
    Key? key,
    required this.title,
    required this.info,
    required this.type,
  }) : super(key: key);

  final String title;
  final String info;
  final TypeSetting type;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.b1Bold,
          ),
          16.h,
          GestureDetector(
            onTap: () => controller.goToUpdateScreen(type),
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: AppColors.background.bgB1,
              ),
              padding: const EdgeInsets.all(20),
              child: Text(
                info,
                style: AppTextStyles.b2Regular,
              ),
            ),
          )
        ],
      ),
    );
  }
}
