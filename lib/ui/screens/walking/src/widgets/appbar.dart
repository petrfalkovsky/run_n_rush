import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/walking/walking.dart';
import 'package:run_n_rush/ui/shared/avatar_blurred.dart';
import 'package:run_n_rush/ui/shared/icons.dart';

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

        /// аватар
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlurredAvatar(
                    customWidget:
                        Get.find<WalkingController>().avatarUrl.value != null
                            ? Image.network(
                                // todo проверить реальный аватар, сейчас пока
                                // не реализована загрузка авы в профиле
                                Get.find<WalkingController>().avatarUrl.value,
                                width: 152,
                                height: 152,
                              )
                            : Image.asset(
                                AppIcons.avatar,
                                fit: BoxFit.cover,
                              ),
                    containerSize: 152,
                    positionInsets: const EdgeInsets.all(8),
                    innerContainer: 136,
                    borderColor: Colors.white.withOpacity(0.3),
                    avatarSize: 59,
                  )
                ],
              ),
            ),
          ],
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
        child: InkWell(
            onTap: () => Get.toNamed(AppRoutes.settings),
            child: AppIcons.svgWidget(AppIcons.settings, width: 26.5)),
      ),
    );
  }
}