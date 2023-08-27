// ignore_for_file: unused_import

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/internet/internet.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/bottom_bar.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

class GeneralScaffold extends GetView<GeneralScaffoldService> {
  const GeneralScaffold({
    Key? key,
    required this.child,
    this.appBar,
    this.tabBarEnable = true,
    this.navBarEnable = true,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
  }) : super(key: key);

  final Widget child;
  final Color? backgroundColor;
  final bool tabBarEnable;
  final bool navBarEnable;
  final PreferredSizeWidget? appBar;
  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.tryExit,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Obx(
          () {
            // final service = controller;
            final checkInternet = controller.connectionStatus$;
            if (checkInternet == ConnectivityResult.none) {
              return InternetScreen();
            } else {
              if (navBarEnable) {
                return Scaffold(
                  appBar: appBar,
                  backgroundColor: backgroundColor ?? const OtherColors().white,
                  resizeToAvoidBottomInset: resizeToAvoidBottomInset,
                  body: GestureDetector(
                    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                    child: SafeArea(
                      child: child,
                    ),
                  ),
                  bottomNavigationBar: const CustomBottomAppBar(),
                );
              } else {
                return Scaffold(
                  appBar: appBar,
                  backgroundColor: backgroundColor ?? const OtherColors().white,
                  body: SafeArea(
                    child: GestureDetector(
                      onTap: () =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      child: child,
                    ),
                  ),
                );
              }
            }
          },
        ),
      ),
    );
  }
}
