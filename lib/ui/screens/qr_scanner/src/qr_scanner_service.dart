import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:riverside/core/utils/stream_subscriber.dart';
import 'package:riverside/data/%20dto/qr/qr_dto.dart';
import 'package:riverside/logic/qr_code/qr_code_bloc.dart';
import 'package:riverside/ui/screens/my_bookings/my_bookings.dart';
import 'package:riverside/ui/shared/alert.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';

class QrScannerService extends GetxService with StreamSubscriberMixin {
  QrScannerService({
    QRCodeBloc? qrCodeBloc,
    MyBookingsService? myBookingService,
  })  : _qrCodeBloc = qrCodeBloc ?? GetIt.I.get(),
        _myBookingService = myBookingService ?? Get.find();

  final QRCodeBloc _qrCodeBloc;
  final MyBookingsService _myBookingService;

  final _indexTab = 0.obs;
  int get indexTab => _indexTab();
  void changeIndexTab(int index) => _indexTab(index);

  final _isLoading = false.obs;
  bool get isLoading => _isLoading();

  void scanQR({required OpenLockBody body}) {
    _qrCodeBloc.add(QRCodeEvent.getOpenLock(body: body));
  }

  void _processQRCode(QRCodeState state) {
    state.maybeWhen(
      gotQRCode: (data) {
        data.fold(
          (l) => null,
          (r) {
            alert(
                value: 'Добро пожаловать!',
                color: AppColors.notification.success);

            Get.back();
            if (Get.isBottomSheetOpen ?? false) {
              Get.back();
              _myBookingService.getReservations();
            }
          },
        );
      },
      orElse: () {},
    );
  }

  @override
  void onInit() {
    super.onInit();
    subscribeIt(_qrCodeBloc.stream.listen(_processQRCode));
  }
}
