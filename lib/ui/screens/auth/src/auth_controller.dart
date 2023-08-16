import 'package:get/get.dart';
import 'package:riverside/ui/router/routing.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class AuthController extends StatexController {
  void goToSignIn() => Get.toNamed(AppRoutes.signIn);
  void goToSignUp() => Get.toNamed(AppRoutes.signUp);

  @override
  Future onReady() async {
    super.onReady();
  }
}
