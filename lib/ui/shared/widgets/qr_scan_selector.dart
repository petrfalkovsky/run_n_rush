import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/screens/qr_scanner/src/qr_scanner_controller.dart';
import 'package:riverside/ui/shared/widgets/buttons/custom_inkwell_qr_scan.dart';

class QrScannerSelectorToEntryCode extends GetView<QrScannerController>
    implements PreferredSizeWidget {
  const QrScannerSelectorToEntryCode({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 68,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 15,
          ),
        ],
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (var i = 0; i < controller.listTab.length; i++)
              Expanded(
                child: CustomInkWellQrScan(
                  onTap: () => controller.changeIndexTab(i),
                  isActive: controller.indexTab == i,
                  text: controller.listTab[i].tr(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  index: i,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
