import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/auth/src/sign_in/sign_in.dart';

import 'package:vfx_flutter_common/getx_helpers.dart';

///
class SignInController extends StatexController with StreamSubscriberMixin {
  SignInController({SignInService? service}) : _service = service ?? Get.find();

  final SignInService _service;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool get isLoading => _service.isLoading;

  void getSignIn() => _service.getSignIn(
        email: emailController.text,
        password: passwordController.text,
      );

  void resetPassword() => _service.resetPassword(emailController.text);

  void goToSignUp() => Get.offNamed(AppRoutes.signUp);
  void goToResetPassword() => Get.toNamed(AppRoutes.resetPassword);

  void onChange(TextEditingController edit, String value) {
    edit.selection =
        TextSelection.fromPosition(TextPosition(offset: edit.text.length));
  }

  @override
  void onClose() {
    _service.changeIsLoading(false);
    super.onClose();
  }
}
