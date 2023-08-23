import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/data/repository/local/local_repository.dart';
import 'package:run_n_rush/domain/my_booking/booking_entity.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/main/main.dart';
import 'package:run_n_rush/ui/screens/main/src/widgets/month_picker_dialog.dart';
import 'package:run_n_rush/ui/screens/main/src/widgets/year_picker_dialog.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class MainController extends StatexController {
  MainController({LocalRepository? repoLocal, MainService? service})
      : _service = service ?? Get.find();

  final MainService _service;

  void getReservations() => _service.getReservations();

  void goToQRScaner({BookingEntity? booking, bool tab = false}) {
    Get.toNamed(AppRoutes.qrScanner,
        arguments: {'booking': booking, 'tab': tab});
  }

  final listTab = ['active', 'archive'].obs;
  int get indexTab => _service.indexTab;
  PageController get pageController => _service.pageController;
  void changeIndexTab(int index) => _service.changeIndexTab(index);

  bool get isLoading => _service.isLoading;

  int get month$ => _service.month$;
  String get monthAbbr$ =>
      DateFormat('MMM', 'ru-Ru').format(DateTime(2022, month$));
  void changeMonth(BuildContext context) async {
    final pickedMonth = await showMonthPicker(context,
        selectedMonth: month$, listDate: receiveYearAndMonth(isMonth: true));
    if (pickedMonth != null) _service.changeMonth(pickedMonth);
  }

  int get year$ => _service.year$;
  void changeYear(BuildContext context) async {
    final pickedYear = await showYearPicker(context,
        selectedYear: year$, listDate: receiveYearAndMonth(isYear: true));
    if (pickedYear != null) _service.changeYear(pickedYear);
  }

  List<int> receiveYearAndMonth({bool isMonth = false, bool isYear = false}) {
    final listDate = <int>[];

    if (isMonth || isYear) {
      for (var v in bookingList) {
        if (v is BookingEntity) {
          final months = v.bookingDate.month;
          final years = v.bookingDate.year;
          final condition = isMonth
              ? months
              : isYear
                  ? years
                  : 0;
          if (!listDate.contains(condition)) {
            if (isMonth) {
              listDate.add(months);
            }
            if (isYear) {
              listDate.add(years);
            }
          }
        }
      }
    }
    return listDate;
  }

  List get bookingList => _service.bookingList;
  List get activeBookingList => _service.activeBookingList$;
  List get archiveBookingList => _service.archiveBookingList$;

  bool showDate(int index, List bl) {
    if (bl[index] is String) return true;
    if (bl[index] is BookingEntity) {
      final a = bl[index];
      if (index > 0) {
        final b = bl[index - 1];
        if (b is String) return true;
        return b.bookingDate != a.bookingDate;
      }
      return true;
    }
    if (bl.length == (index + 1)) return false;
    return true;
  }

  @override
  void onReady() {
    super.onReady();
    _service.getReservations();
  }
}
