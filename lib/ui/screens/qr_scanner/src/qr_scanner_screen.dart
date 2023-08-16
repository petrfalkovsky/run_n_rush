import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide Trans;
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';
import 'package:riverside/ui/shared/constants/constants.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';
import 'package:riverside/ui/shared/widgets/qr_scan_selector.dart';
import 'package:riverside/ui/screens/qr_scanner/src/qr_scanner_controller.dart';
import 'package:riverside/ui/shared/constants/assets.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';
import 'package:riverside/ui/shared/widgets/app_icon.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:riverside/ui/shared/all_shared.dart';

class QrScannerScreen extends StatexWidget<QrScannerController> {
  QrScannerScreen({Key? key}) : super(() => QrScannerController(), key: key) {
    debugPrint(' QrScanner.QrScanner');
  }

  @override
  Widget buildWidget(BuildContext context) {
    return GeneralScaffold(
      navBarEnable: false,
      child: Obx(() {
        return Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Stack(
              children: [
                controller.indexTab == 0
                    ? const TransparancyBackground()
                    : const EntryCodeWidget(),
                if (controller.isLoading) Consts().preloader,
              ],
            ),
            const Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: QrScannerSelectorToEntryCode(),
            ),

            // Positioned.fill(
            //   bottom: Get.height * 0.08,
            //   child: const Align(
            //     alignment: Alignment.bottomCenter,
            //     child: QrScannerSelectorToEntryCode(),
            //   ),
            // ),
            const CloseButtonWidget(),
          ],
        );
      }),
    );
  }
}

class TransparancyBackground extends GetView<QrScannerController> {
  const TransparancyBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MobileScanner(
          fit: BoxFit.cover,
          onDetect: controller.qrcode,
        ),
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.srcOut,
          ), // эта штука делает дырочку
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.black, backgroundBlendMode: BlendMode.dstOut),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: -20,
          left: 0,
          right: 0,
          child: TextAboveSomeHole(),
        ),
      ],
    );
  }
}

class EntryCodeWidget extends GetView<QrScannerController> {
  const EntryCodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          color: AppColors.background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'justEntryCode'.tr(),
                  style: AppTextTheme.fromPlatform.h1_1,
                ),
                const SizedBox(
                  height: WidgetsSettings.widgetsVerticalSmallSpacing,
                ),
                Text(
                  'entryCodeInstruction'.tr(),
                  style: AppTextTheme.fromPlatform.b1_2
                      .copyWith(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                60.h,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    onChanged: controller.onChaned,
                    maxLength: 6,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9]'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: WidgetsSettings.widgetsVerticalScanScreenSpacing,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TextAboveSomeHole extends StatelessWidget {
  const TextAboveSomeHole({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 156),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'scanQRCode'.tr(),
            style: AppTextStyles.h1SemiBold
                .copyWith(color: const OtherColors().white, height: 2),
            children: <TextSpan>[
              TextSpan(
                text: 'scanQRInstruction'.tr(),
                style: AppTextStyles.b2SemiBold
                    .copyWith(color: const OtherColors().white, height: 1.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 8,
      top: 28,
      child: IconButton(
        onPressed: Get.back,
        icon: AppIcon(
          path: Assets.icons.closeCircle,
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
