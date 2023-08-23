import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/%20dto/qr/qr_dto.dart';
import 'package:run_n_rush/logic/qr_code/qr_code_bloc.dart';
import 'package:run_n_rush/ui/screens/main/main.dart';
import 'package:run_n_rush/ui/shared/alert.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';

class QrScannerService extends GetxService with StreamSubscriberMixin {
  QrScannerService({
    QRCodeBloc? qrCodeBloc,
    MainService? myBookingService,
  })  : _qrCodeBloc = qrCodeBloc ?? GetIt.I.get(),
        _myBookingService = myBookingService ?? Get.find();

  final QRCodeBloc _qrCodeBloc;
  final MainService _myBookingService;

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
