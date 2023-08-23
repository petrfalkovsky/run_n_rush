import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/auth/src/auth_controller.dart';
import 'package:run_n_rush/ui/shared/constants/assets.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/buttons/custom_rounded_button.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class AuthWelcomeScreen extends StatexWidget<AuthController> {
  AuthWelcomeScreen({Key? key}) : super(() => AuthController(), key: key) {
    debugPrint(' AuthWelcomeScreen.AuthWelcomeScreen');
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            child: _BackgroundImage(),
          ),
          const _TransparentGradientMask(),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    _Title(),
                    // SizedBox(height: 12),
                    _Subtitle(),
                    SizedBox(height: 32.0),
                    _Buttons(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(Assets.images.welcomeScreenBg),
      fit: BoxFit.fill,
    );
  }
}

class _TransparentGradientMask extends StatelessWidget {
  const _TransparentGradientMask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.0),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.8),
          ],
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      'parkLaskino'.tr(),
      style: theme.appTextTheme.h1_0.copyWith(
        fontFamily: 'Montserrat',
        color: theme.appColorsScheme.other.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      'onboardingSubtitle'.tr(),
      style: theme.appTextTheme.b1_1.copyWith(
        fontFamily: 'Montserrat',
        color: theme.appColorsScheme.other.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class _Buttons extends GetView<AuthController> {
  const _Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: <Widget>[
        CustomRoundedButton(
          text: 'entryAccount'.tr(),
          onPressed: controller.goToSignIn,
        ),
        const SizedBox(height: 16.0),
        CustomRoundedButton(
          text: 'registration'.tr(),
          buttonColor: theme.appColorsScheme.other.white,
          textColor: theme.appColorsScheme.colors.text.primary,
          onPressed: controller.goToSignUp,
        ),
      ],
    );
  }
}
