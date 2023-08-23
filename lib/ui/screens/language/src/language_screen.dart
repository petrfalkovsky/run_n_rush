import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/language/src/language_controller.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageScreen extends StatexWidget<LanguageScreenController> {
  LanguageScreen({Key? key})
      : super(() => LanguageScreenController(), key: key);

  @override
  Widget buildWidget(BuildContext context) {
    return GeneralScaffold(
      appBar: getStatAppBar(
        context,
        text: 'mobile_wallet_app.changeLanguage'.tr(),
      ),
      navBarEnable: false,
      child: Obx(
        () {
          final locale = controller.mapLang.keys.toList();
          final language = controller.mapLang.values.toList();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var i = 0; i < controller.mapLang.length; i++)
                  GestureDetector(
                    onTap: () => controller.changeLanguage(locale[i], context),
                    child: SizedBox(
                      height: 40,
                      child: Row(
                        children: [
                          AppIcons.svgWidget(language[i].path),
                          10.w,
                          Text(
                            language[i].lang,
                            style: controller.selectedLang(locale[i])
                                ? AppStyles.headline.andWeight(FontWeight.bold)
                                : AppStyles.title2.andWeight(FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
