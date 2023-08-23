import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';
import 'package:vfx_flutter_common/utils.dart';

Future alert({
  required String value,
  required Color color,
  int durationSec = 2,
}) async {
  await delayMilli(250).then(
    (_) => showSimpleNotification(
      Text(
        value,
        style: AppTextStyles.b2Regular.copyWith(
          color: const OtherColors().white,
        ),
      ),
      background: color,
      duration: Duration(seconds: durationSec),
    ),
  );
}
