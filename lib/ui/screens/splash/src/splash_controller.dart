import 'package:riverside/core/utils/stream_subscriber.dart';
import 'package:riverside/ui/screens/splash/src/splash_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';
import 'package:get/get.dart';

class SplashScreenController extends StatexController
    with StreamSubscriberMixin {
  SplashScreenController({
    SplashScreenService? service,
  }) : _service = service ?? Get.find();

  final SplashScreenService _service;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _service.start();
  }
}
