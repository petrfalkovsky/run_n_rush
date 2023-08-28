// ignore_for_file: unused_import, unnecessary_import

import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/shared/avatar_blurred.dart';
import 'package:run_n_rush/ui/shared/widgets/buttons/play.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:run_n_rush/ui/screens/main/main.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';

import '../start.dart';

class Start extends StatexWidget<StartController> {
  Start({Key? key}) : super(() => StartController(), key: key) {
    debugPrint(' экран старт');
  }

  @override
  Widget buildWidget(BuildContext context) {
    // todo убрать хардкод и переменные добавить

    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.black,
      navBarEnable: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(227),
        child: AppBarWidget(),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF101113),
                      Colors.transparent,
                    ],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.darken,
                child: Image.asset(
                  AppIcons.logoFrame,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          '11,587',
                          style: AppStyles.body
                              .andColor(AppColors.accent)
                              .andWeight(FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      11.h,
                      SizedBox(
                          width: 22,
                          child: Icon(
                            Icons.speed,
                            color: Colors.grey.withOpacity(0.7),
                          )),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        '4.32',
                        style: AppStyles.largeTitle
                            .andColor(AppColors.accent)
                            .andWeight(FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Kilometers',
                        style: AppStyles.body
                            .andColor(AppColors.text.secondary)
                            .andWeight(FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          '32:41',
                          style: AppStyles.body
                              .andColor(AppColors.accent)
                              .andWeight(FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      11.h,
                      SizedBox(width: 22, child: Image.asset(AppIcons.steps)),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
              36.h,
              30.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppIcons.coinLarge,
                    width: 48,
                  ),
                  11.w,
                  Text(
                    '+253.52',
                    style: AppStyles.title
                        .andColor(AppColors.accent)
                        .andWeight(FontWeight.bold),
                  ),
                ],
              ),
              30.h,
              Row(
                children: [
                  const Spacer(),
                  AppIcons.svgWidget(AppIcons.map, width: 26),
                  const Spacer(),
                  const PlayPauseWidget(),
                  const Spacer(),
                  AppIcons.svgWidget(AppIcons.sneaker, width: 32),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LightningDataWidget extends StatelessWidget {
  const LightningDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        color: Colors.black,
        width: double.infinity,
        height: 32,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(children: [
            Container(
              alignment: Alignment.center,
              width: 28,
              child: AppIcons.svgWidget(AppIcons.lightning, width: 14),
            ),
            const Spacer(),
            Text(
              '0.0/0.0',
              style: AppStyles.body.andColor(AppColors.accent),
            )
          ]),
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/appbar_frame.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 24,
            ),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [],
          ),
        ),
        const AvatarWidget(),
      ],
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlurredAvatar(
                containerSize: 152,
                positionInsets: const EdgeInsets.all(7),
                innerContainer: 138,
                borderColor: Colors.white.withOpacity(0.3),
                avatarSize: 59,
              )
            ],
          ),
        ),
      ],
    );
  }
}
