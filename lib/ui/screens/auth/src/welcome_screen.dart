// ignore_for_file: unused_import, unnecessary_import

import 'dart:math';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/data/dto/auth/src/user_data/user_data_token.dart';
import 'package:run_n_rush/data/dto/auth/src/login/login_or_signup.dart';
import 'package:run_n_rush/data/dto/auth/src/send_code/send_code.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/auth/src/welcome_controller.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/assets.dart';
import 'package:run_n_rush/ui/shared/widgets/buttons/counter_text_button.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/std_input.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class WelcomeScreen extends StatexWidget<WelcomeController> {
  WelcomeScreen({Key? key}) : super(() => WelcomeController(), key: key) {
    debugPrint('welcome_screen'.tr());
  }

  @override
  Widget buildWidget(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController codeController = TextEditingController();
    final TextEditingController referralController = TextEditingController();
    final Dio dio = Dio();
    final ApiService apiService = ApiService(dio);

    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: [
              const _BackgroundImage(),
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
                          height: 416,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const _Title(),
                                26.h,
                                StdInput(
                                  controller: emailController,
                                  hintText: 'your_email'.tr(),
                                  // только малые буквы можно вводить
                                  onChanged: (value) {
                                    emailController.value = TextEditingValue(
                                        text: value.toLowerCase(),
                                        selection: emailController.selection);
                                  },
                                ),
                                15.h,
                                StdInput(
                                  controller: codeController,
                                  hintText: 'verification_code'.tr(),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: CountdownButton(
                                      onPressed: () async {
                                        debugPrint('нажата Sendcode кнопка');
                                        final email = emailController.text;
                                        final sendCodeData =
                                            SendCodeDto(email: email);

                                        if (email.isEmpty) {
                                          await controller.snackEmptyInput();
                                          return debugPrint(
                                              'Нужно заполнить поле имейл');
                                        }
                                        debugPrint('Email из инпута: $email');
                                        try {
                                          // отправка боди на сервер, чтобы получить код на имейл
                                          await apiService
                                              .sendCode(sendCodeData.toJson());
                                          // показываем снек, если отправили код на почту
                                          await controller.snackSendCode();
                                        } catch (e) {
                                          debugPrint(
                                              'Ошибка при отправке кода: $e');
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                15.h,
                                StdInput(
                                  controller: referralController,
                                  hintText: 'ref_ID'.tr(),
                                ),
                                6.h,
                                Row(
                                  children: [
                                    Checkbox(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      splashRadius: 24,
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
                                    Expanded(
                                      child: Text(
                                        'privacy_policy_agree'.tr(),
                                        softWrap: true,
                                        style: AppStyles.caption
                                            .andWeight(FontWeight.normal)
                                            .andColor(AppColors.accent),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                6.h,
                                StdButton(
                                  color: Colors.transparent,
                                  height: 52,
                                  isActive: true,
                                  onPress: () async {
                                    final email = emailController.text;
                                    final code = codeController.text;
                                    final referalCode = referralController.text;

                                    controller.onLoginOrSignUpPressed(
                                        email, code, referalCode);
                                  },
                                  text: 'login_sing_up'.tr(),
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
        ),
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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Text(
        maxLines: 2,
        'welcome_to'.tr(),
        style: AppStyles.headline.andColor(AppColors.accent),
        textAlign: TextAlign.center,
      ),
    );
  }
}
