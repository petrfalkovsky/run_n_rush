import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/repository/local/local_repository.dart';
import 'package:run_n_rush/data/storage/hive/src/auth_status_storage.dart';
import 'package:run_n_rush/ui/router/routing.dart';
// import 'package:run_n_rush/ui/shared/alert.dart';
// import 'package:run_n_rush/ui/shared/constants/app_colors.dart';

class SplashScreenService extends GetxService with StreamSubscriberMixin {
  SplashScreenService({
    LocalRepository? repoLocal,
  }) : _repoLocal = repoLocal ?? GetIt.I.get();

  // ignore: unused_field
  final LocalRepository _repoLocal;

  Future start() async {
    /// создаю и ложу в хранилище булевую переменную авторизован ли юзер
    final authStatusBox = await Hive.openBox<AuthStatus>('authStatusBox');
    final authStatus = authStatusBox.get('status',
        defaultValue: AuthStatus(isAuthenticated: false));

    if (authStatus?.isAuthenticated == true) {
      // пользователь авторизован, перейти на основной экран
      Get.offAllNamed(AppRoutes.main);
    } else {
      // пользователь не авторизован, перейдите на экран авторизации
      Get.offAllNamed(AppRoutes.authWelcome);
    }
  }

  /// старая проверка на аутентификацию

  // final dateTime = DateTime.now();
  // final userData = await _repoLocal.readUserData();
  // final userDateTime =
  //     DateTime.fromMicrosecondsSinceEpoch(userData.dateReceiveToken ?? 0);
  // final diff = dateTime.difference(userDateTime);
  // if (userData.dateReceiveToken == 0 || diff.inDays == 30) {
  //   Get.offAllNamed(AppRoutes.authWelcome);
  //   if (userData.dateReceiveToken != 0) {
  //     alert(
  //         value: 'Токен недействителен или просрочен, войдите заново',
  //         color: AppColors.notification.errorLight);
  //   }
  // } else {
  //   Get.offAllNamed(AppRoutes.main);
  // }
  // }

  @override
  Future onReady() async {
    super.onReady();
  }
}
