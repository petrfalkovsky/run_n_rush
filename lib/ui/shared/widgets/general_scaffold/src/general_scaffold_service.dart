import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/domain/my_booking/booking_entity.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/internet/src/internet_service.dart';
import 'package:run_n_rush/ui/screens/main/src/main_service.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/bottom_bar.dart';

class GeneralScaffoldService extends GetxService with StreamSubscriberMixin {
  GeneralScaffoldService({
    InternetScreenService? internetScreenService,
    MainService? myBookingService,
  })  : _internetScreenService = internetScreenService ?? Get.find(),
        _myBookingService = myBookingService ?? Get.find();

  final InternetScreenService _internetScreenService;
  final MainService _myBookingService;

  final _currentNavIndex = 0.obs; // для BottomNavigationBar index
  int get currentNavIndex$ => _currentNavIndex();
  void currentNavIndex(int index) => _currentNavIndex(index);

  final _isNotToday = false.obs;
  bool get isNotToday => _isNotToday();
  void changeIsNotToday(bool b) => _isNotToday(b);

  void checkIsNotToday() {
    final date = DateTime.now();
    final list = _myBookingService.activeBookingList$;
    for (var l in list) {
      if (l is BookingEntity) {
        if (l.bookingDate.day == date.day) {
          _isNotToday(true);
        }
      }
    }
  }

  final bottomAppBarItems = <BottomAppBarItem>[
    const BottomAppBarItem(
      // text: 'allMyReservations',
      iconAsset: AppIcons.run,
      router: AppRoutes.main,
    ),
    const BottomAppBarItem(
      // text: 'reservation',
      iconAsset: AppIcons.sneaker,
      router: AppRoutes.inventory,
    ),
    const BottomAppBarItem(
      // text: 'settings',
      iconAsset: AppIcons.podium,
      router: AppRoutes.referral,
    ),
    const BottomAppBarItem(
      // text: 'shop',
      iconAsset: AppIcons.cart,
      router: AppRoutes.shop,
    )
  ];

  ConnectivityResult get connectionStatus$ =>
      _internetScreenService.connectionStatus$;

  void goToQRScaner() => Get.toNamed(AppRoutes.qrScanner);

  void goToPage(int index) {
    Get.offNamed(bottomAppBarItems[index].router);
    currentNavIndex(index);
  }

  int? _lastTimeBackButtonWasTapped;
  Future<bool> doubleExit() async {
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    if (_lastTimeBackButtonWasTapped != null &&
        (currentTime - (_lastTimeBackButtonWasTapped ?? 0)) <
            Consts.exitTimeInMillis) {
      return Future.value(true);
    } else {
      _lastTimeBackButtonWasTapped = DateTime.now().millisecondsSinceEpoch;
      alert(
          value: 'Press Back button again to Exit',
          color: AppColors.notification.success);
      return Future.value(false);
    }
  }

  Future<bool> tryExit() async {
    if (currentNavIndex$ == 0) {
      return Future.value(true);
    } else {
      goToPage(0);
      return Future.value(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint('ONINIT SCAFFOLD SIRIUS SERVICE');
    _isNotToday(false);
    // Передача состояния из BLoC
    subscribeIt(_myBookingService.activeBookingListStream.listen((event) {
      checkIsNotToday();
    }));
  }
}

class BottomNavModel {
  Color activeColor;
  String icon;
  String text;
  String router;

  BottomNavModel({
    required this.activeColor,
    required this.icon,
    required this.text,
    required this.router,
  });
}
