import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/screens/splash/splash.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/widgets/background.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold.dart';

import 'package:vfx_flutter_common/getx_helpers.dart';

class SplashScreen extends StatexWidget<SplashScreenController> {
  SplashScreen({Key? key}) : super(() => SplashScreenController(), key: key);

  @override
  Widget buildWidget(BuildContext context) {
    return const GeneralScaffold(
      navBarEnable: false,
      child: Background(),
    );
  }
}
