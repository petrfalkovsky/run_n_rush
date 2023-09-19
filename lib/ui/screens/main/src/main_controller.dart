// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:run_n_rush/data/storage/hive/hive.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class MainController extends StatexController {
  /// управляет показом изображения
  final RxBool showImage = true.obs;

  /// обновляет виджет после выбора инвенторя
  void toggleShowImage(bool value) {
    showImage.value = value;
  }

  @override
  void onInit() async {
    super.onInit();

    /// метод для принта вызываю при загрузке экрана мэйн
    await printUserId();
    await printAccessToken();
    await printRefreshToken();
  }

  /// метод для принта в консоль ид пользователя
  Future<void> printUserId() async {
    final userBox = await Hive.openBox<UserStorage>('userBox');
    final user = userBox.get('user');

    if (user != null) {
      final userId = user.id;
      debugPrint('User ID: $userId');
    } else {
      debugPrint('User data not found.');
    }
  }

  /// метод для принта в консоль аксесс токена
  Future<void> printAccessToken() async {
    final tokenBox = await Hive.openBox<TokenStorage>('tokenBox');
    final token = tokenBox.get('token');

    if (token != null) {
      final access = token.access;
      debugPrint('Token access: $access');
    } else {
      debugPrint('Token access not found.');
    }
  }

  /// метод для принта в консоль рефреш токена
  Future<void> printRefreshToken() async {
    final tokenBox = await Hive.openBox<TokenStorage>('tokenBox');
    final token = tokenBox.get('token');

    if (token != null) {
      final refresh = token.refresh;
      debugPrint('Token refresh: $refresh');
    } else {
      debugPrint('Token refresh not found.');
    }
  }
}
