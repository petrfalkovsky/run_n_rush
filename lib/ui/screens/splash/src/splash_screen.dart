import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/screens/splash/splash.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/assets.dart';
import 'package:run_n_rush/ui/shared/widgets/background.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold.dart';

import 'package:vfx_flutter_common/getx_helpers.dart';

class SplashScreen extends StatexWidget<SplashScreenController> {
  SplashScreen({Key? key}) : super(() => SplashScreenController(), key: key);

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.background[2],
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(AppIcons.logo),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // return GeneralScaffold(
    //     backgroundColor: AppColors.background[2],
    //     navBarEnable: false,
    //     // todo картинка не показывается, позже решить, мб прекеш сделать
    //     child: const Background());
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/splash_screen_bg.png'),
      fit: BoxFit.fill,
    );
  }
}
