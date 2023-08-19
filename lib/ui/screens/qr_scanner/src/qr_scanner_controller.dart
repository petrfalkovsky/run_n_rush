import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:riverside/data/%20dto/qr/qr_dto.dart';
import 'package:riverside/domain/my_booking/booking_entity.dart';
import 'package:riverside/ui/screens/main/main.dart';
import 'package:riverside/ui/screens/qr_scanner/src/qr_scanner_service.dart';
import 'package:riverside/ui/shared/alert.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:vfx_flutter_common/vfx_flutter_common.dart';

class QrScannerController extends StatexController {
  QrScannerController({
    QrScannerService? service,
    MainService? myBookingService,
  })  : _service = service ?? Get.find(),
        _myBookingService = myBookingService ?? Get.find();

  final QrScannerService _service;
  final MainService _myBookingService;
  List get activeBookingList => _myBookingService.activeBookingList$;

  final listTab = ['scanQR', 'inputCode'].obs;
  int get indexTab => _service.indexTab;
  void changeIndexTab(int index) => _service.changeIndexTab(index);

  late BookingEntity _idBooking;

  String? barcode;

  bool get isLoading => _service.isLoading;

  String getIDBooking() {
    if (_idBooking.durationTime != null &&
        (_idBooking.indSeat != 0 || _idBooking.famSeat != 0)) {
      return _idBooking.id;
    }
    // if (_idBooking.durationTime != null) {
    //   final time = DateTime.now().hour - 1;
    //   for (String t in _idBooking.durationTime!) {
    //     if (t.contains('$time:00')) {
    //       return _idBooking.id;
    //     } else {
    //       alert(value: 'Время не пришло', color: AppColors.notification.error);
    //     }
    //   }
    // }

    return _idBooking.id;
  }

  void onChaned(String value) {
    var id = getIDBooking();
    if (value.length == 6) {
      send(resId: id, qrCode: value);
    }
  }

  void qrcode(Barcode barcode, MobileScannerArguments? args) {
    if (barcode.rawValue == null) {
      debugPrint('Failed to scan Barcode');
    } else {
      var id = getIDBooking();

      final String code = barcode.rawValue!;
      if (code.length == 6) {
        send(resId: id, qrCode: code);
      } else {
        alert(
          value: 'errorConfirmCode'.tr(),
          color: AppColors.notification.error,
        );
      }
    }
  }

  void send({required String resId, required String qrCode}) {
    if (resId != '') {
      _service.scanQR(
        body: OpenLockBody(
          resId: resId,
          qrCode: int.parse(qrCode),
        ),
      );
    }
  }

  @override
  void onReady() {
    super.onReady();

    if (Get.arguments != null) {
      if (Get.arguments['booking'] is BookingEntity) {
        _idBooking = Get.arguments['booking'];
      }
      if (Get.arguments['tab'] is bool) {
        if (Get.arguments['tab']) {
          changeIndexTab(1);
        }
      }
    } else {
      final bd = [];
      final date = DateTime.now();
      for (var l in activeBookingList) {
        if (l is BookingEntity) {
          if (l.bookingDate.day == date.day) {
            debugPrint('llll $l');
            bd.add(l);
          }
        }
      }
      _idBooking = bd[0];
      debugPrint('_idBooking $_idBooking');
    }
  }

  @override
  void onClose() {
    changeIndexTab(0);
    super.onClose();
  }
}
