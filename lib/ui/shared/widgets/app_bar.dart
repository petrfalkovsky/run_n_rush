import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

PreferredSizeWidget getStatAppBar(
  BuildContext context, {
  Color? color,
  String? text,
  Widget? title,
  bool isLeading = false,
  String? buttonText,
  List<Widget>? actions,
  double? elevation,
  String? router,
  dynamic resultBack,
  Function()? funcBack,
  int? currentNavIndex,
  bool rChange = false,
}) {
  return AppBar(
    leadingWidth: 42,
    elevation: elevation ?? .5,
    title: rChange
        ? title
        : Text(
            text ?? '',
            style: AppTextStyles.h1SemiBold,
          ),
    backgroundColor: color ?? const OtherColors().white,
    leading: isLeading
        ? Padding(
            padding: const EdgeInsets.only(left: 18),
            child: IconButton(
                onPressed: () {
                  funcBack?.call();
                  if (router == null) {
                    Get.back(result: resultBack);
                  } else {
                    Get.offNamed(router);
                    if (currentNavIndex != null) {
                      Get.find<GeneralScaffoldService>()
                          .currentNavIndex(currentNavIndex);
                    }
                  }
                },
                icon: const Icon(Icons.arrow_back)),
          )
        : Container(),
    actions: actions,
  );
}
