import 'dart:math';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/auth/src/welcome_controller.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/assets.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/std_input.dart';
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
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    /// лого
                    Image.asset(AppIcons.logo),
                    24.h,

                    /// форма входа
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF5A57AC).withOpacity(0.95),
                        border: Border.all(
                            color: const Color(0xFF1DB9DD), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.54,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const _Title(),
                            26.h,
                            StdInput(
                              hintText: 'Your Email',
                            ),
                            15.h,
                            StdInput(
                              hintText: 'Verification Code',
                              suffixIcon: TextButton(
                                onPressed: () {
                                  // todo: добавить логику для таймера и подмену виджета
                                },
                                child: const Text(
                                  'Sendcode ',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                            15.h,
                            StdInput(
                              hintText: 'Referral ID (Optional)',
                            ),
                            15.h,
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Colors.white,
                                  focusColor: Colors.white,
                                  hoverColor: Colors.white,
                                  checkColor: Colors.black,
                                  side: const BorderSide(
                                    color: Colors.white,
                                  ),
                                  value: true,
                                  shape: const CircleBorder(),
                                  onChanged: (value) {
                                    // controller.isChecked.value = value!;
                                  },
                                ),
                                SizedBox(
                                  width: 220,
                                  child: Text(
                                    'I agree to RUN&RUSH Terms of Use & Privacy Policy',
                                    style: AppStyles.caption
                                        .andColor(AppColors.accent),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ],
                            ),
                            StdButton(
                              height: 52,
                              isActive: true,
                              onPress: () {
                                Get.toNamed(AppRoutes.main);
                              },
                              text: 'Login / Sign Up',
                            ),
                          ],
                        ),
                      ),
                    )
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

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to best\nplay-to-earn project!',
      style: AppStyles.headline.andColor(AppColors.accent),
      textAlign: TextAlign.center,
    );
  }
}
