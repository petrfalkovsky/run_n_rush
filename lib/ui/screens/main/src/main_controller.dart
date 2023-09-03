// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class MainController extends StatexController {
  /// управляет показом изображения
  final RxBool showImage = true.obs;

  /// обновляет виджет после выбора инвенторя
  void toggleShowImage(bool value) {
    showImage.value = value;
  }
}
