import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:riverside/domain/my_booking/booking_entity.dart';
import 'package:riverside/ui/screens/main/main.dart';
import 'package:riverside/ui/screens/main/src/widgets/date_helper.dart';
import 'package:riverside/ui/screens/main/src/widgets/knob.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';
import 'package:riverside/ui/shared/constants/assets.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';
import 'package:riverside/ui/shared/widgets/buttons/custom_ink_well.dart';
import 'package:riverside/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';
import 'package:riverside/ui/shared/widgets/std_button.dart';

class Main extends StatexWidget<MainController> {
  Main({Key? key}) : super(() => MainController(), key: key) {
    debugPrint('Главный экран');
  }

  @override
  Widget buildWidget(BuildContext context) {
    // todo убрать хардкод и переменные добавить
    final textTheme = AppTextTheme.fromPlatform;

    debugPrint('controller.activeBookingList ${controller.activeBookingList}');
    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.black,
      navBarEnable: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(227),
        child: AppBarWidget(),
      ),
      child: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: [
              controller.indexTab == 1
                  ? controller.archiveBookingList.isNotEmpty
                      ? const SizedBox.shrink()
                      : const SizedBox.shrink()
                  : const Text(
                      'Hello, d.push91@gmail.com',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontStyle: FontStyle.italic),
                    ),
              5.h,
              const GreatingBalanceWidget(),
              40.h,
              const AddSneakerWidget(),
              20.h,
              const ListAddSneakersWidget(),
              40.h,
              const SneakerDataWidget(),
              16.h,
              const LightningDataWidget(),
              46.h,
              StdButton(text: 'Start', isActive: true, onPress: () {})
            ],
          ),
        ),
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
                child: AppIcons.svgWidget(AppIcons.lightning, width: 14)),
            const Spacer(),
            const Text(
              '0.0/0.0',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600),
            )
          ]),
        ),
      ),
    );
  }
}

class SneakerDataWidget extends StatelessWidget {
  const SneakerDataWidget({
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
                child: AppIcons.svgWidget(AppIcons.sneaker, height: 28)),
            const Spacer(),
            const Text(
              '0.00K /50K',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600),
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
        AppIcons.svgWidget(AppIcons.settings),
        Image.asset(
          'assets/images/appbar_frame.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        AppBar(
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
        const SettingsIconWidget(),
        const AvatarWidget(),
        // Positioned(
        //   bottom: MediaQuery.of(context).size.height * 0.078,
        //   left: MediaQuery.of(context).size.width / 2 - 72,
        //   child: Container(
        //     width: 152,
        //     height: 152,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       border: Border.all(
        //         color: Colors.white.withOpacity(0.1),
        //         width: 2,
        //       ),
        //     ),
        //     child: ClipOval(
        //       child: BackdropFilter(
        //         filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        //         child: Container(
        //           color: Colors.transparent,
        //           child: Center(
        //             child: Container(
        //               width: 138,
        //               height: 138,
        //               decoration: const BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 color: Color(0xFF01B8FF),
        //               ),
        //               child: Center(
        //                 child: Image.asset(
        //                   AppIcons.avatar,
        //                   width: 59,
        //                   height: 59,
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
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
              Stack(
                children: [
                  Container(
                    width: 148,
                    height: 148,
                    child: ClipOval(
                      /// заблюренный круг
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: Container(
                      width: 138,
                      height: 138,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF01B8FF),
                      ),
                      child: Center(
                        child: Image.asset(
                          AppIcons.avatar,
                          width: 59,
                          height: 59,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SettingsIconWidget extends StatelessWidget {
  const SettingsIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 27,
      top: MediaQuery.of(context).size.height * 0.12,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 16,
              offset: const Offset(0, 14),
            ),
          ],
        ),
        child: AppIcons.svgWidget(AppIcons.settings, width: 26.5),
      ),
    );
  }
}

class ListAddSneakersWidget extends StatelessWidget {
  const ListAddSneakersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 4; i++)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DottedBorder(
                dashPattern: const [12, 4],
                color: const Color(0xFF1DB9DD),
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    height: 59,
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.black.withOpacity(0.05),
                        ),
                        const Positioned(
                          left: 26,
                          top: 11,
                          child: Icon(Icons.add,
                              color: Color(0xFF1DB9DD), size: 36),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class AddSneakerWidget extends StatelessWidget {
  const AddSneakerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DottedBorder(
        dashPattern: const [12, 4],
        color: const Color(0xFF1DB9DD),
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        padding: const EdgeInsets.all(6),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: SizedBox(
            width: double.infinity,
            height: 88,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(AppIcons.monoJogger),
                Container(
                  color: Colors.black.withOpacity(0.05),
                ),
                const Icon(
                  Icons.add,
                  color: Color(0xFF1DB9DD),
                  size: 36,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GreatingBalanceWidget extends StatelessWidget {
  const GreatingBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppIcons.coin),
        10.w,
        const Text(
          '00.0000',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
