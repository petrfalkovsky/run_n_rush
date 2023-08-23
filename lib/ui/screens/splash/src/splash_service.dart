import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/repository/local/local_repository.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/shared/alert.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';

class SplashScreenService extends GetxService with StreamSubscriberMixin {
  SplashScreenService({
    LocalRepository? repoLocal,
  }) : _repoLocal = repoLocal ?? GetIt.I.get();

  final LocalRepository _repoLocal;

  Future start() async {
    final dateTime = DateTime.now();
    final userData = await _repoLocal.readUserData();
    final userDateTime =
        DateTime.fromMicrosecondsSinceEpoch(userData.dateReceiveToken ?? 0);
    final diff = dateTime.difference(userDateTime);
    if (userData.dateReceiveToken == 0 || diff.inDays == 30) {
      Get.offAllNamed(AppRoutes.authWelcome);
      if (userData.dateReceiveToken != 0) {
        alert(
            value: 'Токен недействителен или просрочен, войдите заново',
            color: AppColors.notification.errorLight);
      }
    } else {
      Get.offAllNamed(AppRoutes.main);
    }
  }

  @override
  Future onReady() async {
    super.onReady();
  }
}

//eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjU0ODQ5NDQyLCJpYXQiOjE2NTQ3NjMwNDIsImp0aSI6IjJjMTViM2JkMWIzNTQ4NDA4YTc4ZDM4ODdhZGFkOWUyIiwidXNlcl9pZCI6IjQ1ZjI2NWQ5LWMxNDItNGRhMS1hYWEzLWFlY2YxZTgxZjdkZiJ9.ULvxTqr7L0_wlE2EPh4vDb8qdpUMOYTXbIy2gVyBlRw