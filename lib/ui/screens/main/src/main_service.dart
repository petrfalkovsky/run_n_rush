import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/domain/my_booking/booking_entity.dart';
import 'package:run_n_rush/logic/my_booking/my_bookings_bloc.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';

class MainService extends GetxService with StreamSubscriberMixin {
  MainService({MyBookingsBloc? myBookingBloc})
      : _myBookingBloc = myBookingBloc ?? GetIt.I.get();

  final MyBookingsBloc _myBookingBloc;

  final _isLoading = false.obs;
  bool get isLoading => _isLoading();

  final _activeBookingList = [].obs;
  List get activeBookingList$ => _activeBookingList();
  final _archiveBookingList = [].obs;
  List get archiveBookingList$ => _archiveBookingList();
  Stream<List> get activeBookingListStream => _activeBookingList.stream;

  final _bookingList = [].obs;
  List get bookingList => _bookingList();

  void getReservations() {
    _myBookingBloc.add(const MyBookingsEvent.getReservations());
  }

  void clearLists() {
    _activeBookingList([]);
    _archiveBookingList([]);
  }

  bool convert({required DateTime toDay}) {
    final dayString = DateFormat('yyyy-MM-dd').format(toDay);
    final dayNowString = DateFormat('yyyy-MM-dd').format(DateTime.now());
    final day = DateTime.parse(dayString).millisecondsSinceEpoch;
    final dayNow = DateTime.parse(dayNowString).millisecondsSinceEpoch;
    return dayNow <= day;
  }

  void _myBookingsState(MyBookingsState state) {
    state.maybeWhen(
      loading: () => _isLoading(true),
      allReservations: ((data) {
        data.fold(
          (l) => alert(value: l.error, color: AppColors.notification.error),
          (r) async {
            clearLists();
            _bookingList(r);
            for (BookingEntity be in r) {
              final dayToday = convert(toDay: be.bookingDate);

              if (dayToday) {
                _activeBookingList.add(be);
              } else {
                _archiveBookingList.add(be);
              }
            }
            _changeLists();
            _isLoading(false);
          },
        );
      }),
      orElse: () {
        debugPrint('getMyBooking ERROR');
      },
    );
  }

  void _filterBooking(RxList<dynamic> list) {
    var l = <dynamic>{};
    int lastDay = 1;
    var dateSet = <DateTime>[];
    if (_indexTab() == 1) {
      for (var e in list.where((element) =>
          element.bookingDate.month == _month() &&
          element.bookingDate.year == _year())) {
        dateSet.add(e.bookingDate);
      }
    } else {
      for (var e in list) {
        dateSet.add(e.bookingDate);
      }
    }

    for (var i = 0; i < dateSet.length; i++) {
      if (lastDay < dateSet[i].day) {
        lastDay == dateSet[i].day - 1
            ? l.add('$lastDay ${getMonth(dateSet[i].year, dateSet[i].month)}')
            : l.add(
                '$lastDay - ${dateSet[i].day - 1} ${getMonth(dateSet[i].year, dateSet[i].month)}');
      }

      l.addAll(
          list.where((element) => element.bookingDate.day == dateSet[i].day));
      lastDay = dateSet[i].day + 1;
    }

    list([]);
    list.addAll(l.toList());
  }

  String getMonth(int year, int month) {
    return DateFormat('MMMM', 'ru-Ru').format(DateTime(year, month));
  }

  void _changeLists() {
    _filterBooking(
      indexTab == 0 ? _activeBookingList : _archiveBookingList,
    );
  }

  late PageController pageController;

  final _indexTab = 0.obs;
  int get indexTab => _indexTab();
  void changeIndexTab(int index) {
    _indexTab(index);
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  final _month = DateTime.now().month.obs;
  int get month$ => _month();
  void changeMonth(int index) {
    _month(index);
    _changeLists();
  }

  final _year = DateTime.now().year.obs;
  int get year$ => _year();
  void changeYear(int index) {
    _year(index);
    _changeLists();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    subscribeIt(_myBookingBloc.stream.listen(_myBookingsState));
  }
}
