import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/auth/src/auth_controller.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/constants.dart';
import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';

class EntryCodeScreen extends GetView<AuthController> {
  const EntryCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GeneralScaffold(
      navBarEnable: false,
      child: Padding(
        padding: const EdgeInsets.all(WidgetsSettings.widgetsPadding),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: WidgetsSettings.widgetsVerticalScanScreenSpacing,
                ),
                Text(
                  'entryCode'.tr(),
                  style: Theme.of(context).appTextTheme.h1_1.copyWith(
                        color: const Color(0xff222222),
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: WidgetsSettings.widgetsVerticalSmallSpacing,
                ),
                Text(
                  'entryCodeInstruction'.tr(),
                  style: theme.appTextTheme.b1_1.copyWith(
                    color: Theme.of(context).textTheme.headline1?.color,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: WidgetsSettings.widgetsVerticalScanScreenSpacing,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       state.code ?? '',
                //       style: Theme.of(context).appTextTheme.h1_1.copyWith(
                //             letterSpacing: 20,
                //             color: const Color(0xff222222),
                //           ),
                //     ),
                //     if (state.code?.length != 6)
                //       const CircleAvatar(
                //         backgroundColor: Color(0xffe9e9e9),
                //         radius: 5,
                //       ),
                //   ],
                // ),
              ],
            ),
            Positioned.fill(
              child: Opacity(
                opacity: 0,
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  onChanged: (value) async {},
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[0-9]'),
                    ),
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
