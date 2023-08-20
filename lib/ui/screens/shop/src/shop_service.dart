import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:riverside/core/utils/stream_subscriber.dart';
import 'package:riverside/data/%20dto/bookings/post_booking_dto.dart';
import 'package:riverside/data/repository/local/local_repository.dart';
import 'package:riverside/domain/bookings/check_reserved.dart';
import 'package:riverside/domain/profile/profile_info.dart';
import 'package:riverside/logic/bookings/bookings_bloc.dart';
import 'package:riverside/ui/screens/main/main.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';

class ShopService extends GetxService with StreamSubscriberMixin {
  ShopService({
    BookingsBloc? bookingBloc,
    LocalRepository? repoLocal,
  })  : _bookingBloc = bookingBloc ?? GetIt.I.get(),
        _repoLocal = repoLocal ?? GetIt.I.get();

  final BookingsBloc _bookingBloc;
  final LocalRepository _repoLocal;

  late PageController pageController;

  final _indexTab = 0.obs;
  int get indexTab => _indexTab();
  void changeIndexTab(int index) {
    _indexTab(index);
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  final _isLoading = false.obs;
  bool get isLoading => _isLoading();

  final _userData = ProfileInfo.empty().obs;

  final _listReserved = <CheckReserved>[].obs;
  List<CheckReserved> get listReserved => _listReserved();
  Stream<List<CheckReserved>> get listReservedStream => _listReserved.stream;

  void getCheckReserved({required DateTime date}) {
    final d = DateFormat('yyyy-MM-dd').format(date);
    _bookingBloc.add(BookingsEvent.getCheckReserved(date: d));
  }

  void payment({
    required ReservationBody body,
  }) {
    _bookingBloc.add(BookingsEvent.getPayment(body: body));
  }

  void _bookingsState(BookingsState state) {
    state.maybeWhen(
      loading: () => _isLoading(true),
      allCheckReserved: (data) {
        data.fold(
          (l) => alert(value: l.error, color: AppColors.notification.error),
          (r) async {
            _listReserved.assignAll(r);
            _isLoading(false);
          },
        );
      },
      gotPayment: (data) {
        data.fold(
          (l) {
            _isLoading(false);
          },
          (r) async {
            final payment = r.payment[0];

            cancel();
          },
        );
      },
      gotPaymentPatch: (data) {
        alert(value: 'Оплачено', color: AppColors.notification.success);
        _isLoading(false);
        Get.back(result: 'SUCCESS');
        MainController().getReservations();
      },
      orElse: () {
        debugPrint('getMyBooking ERROR');
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    subscribeIt(_bookingBloc.stream.listen(_bookingsState));
  }

  void cancel() {
    alert(value: 'Отмена', color: AppColors.notification.error);
    _isLoading(false);
  }

  @override
  Future onReady() async {
    super.onReady();

    _userData(await _repoLocal.readUserData());
  }
}
