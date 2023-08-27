import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/%20dto/bookings/post_booking_dto.dart';
import 'package:run_n_rush/domain/bookings/check_reserved.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/inventory/src/inventory_service.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class ShopController extends StatexController with StreamSubscriberMixin {
//   ShopController({
//     InventoryService? service,
//   }) : _service = service ?? Get.find();

//   final indexServices = 0.obs;

//   final InventoryService _service;

//   bool get isLoading => _service.isLoading;

//   Timer? _timer;

//   List<CheckReserved> get listReserved => _service.listReserved;
//   Stream<List<CheckReserved>> get listReservedStream =>
//       _service.listReservedStream;
//   final _daySelected = DateTime.now().obs;
//   DateTime get daySelected => _daySelected();
//   void changeDaySelected(DateTime day) {
//     _daySelected(day);
//     _service.getCheckReserved(date: day);
//   }

//   final listTab = ['swimmingPool', 'tennisCourt'].obs;

//   // all about corts
//   final _indexCourt = 0.obs;
//   int get indexCourt => _indexCourt();
//   final _priceCourt = 0.obs;
//   final _totalPriceCourt = 0.0.obs;
//   double get totalPriceCourt => _totalPriceCourt();

//   void changeIndexCourt(int i) {
//     _indexCourt(i);
//     createTimes();
//   }

//   final _listCourts = ['1 корт', '2 корт'].obs;
//   List<String> get listCourts => _listCourts();
//   final _listOfTimes = <String>[].obs;
//   List<String> get listOfTimes => _listOfTimes();
//   final _listChosenTime = <int>[].obs;
//   List<int> get listChosenTime => _listChosenTime();
//   final _listIndexTime = <int>[].obs;

//   final _listBoolTime = <bool>[].obs;
//   List<bool> get listBoolTime => _listBoolTime();

//   String listTimesEmpty() {
//     String text = '';
//     final dateTime = DateTime.now();
//     final hours = dateTime.hour;

//     if (hours > 21 && _daySelected().day == dateTime.day) {
//       text = 'Уже поздно, корт закрыт';
//     } else {
//       if (_listOfTimes.isEmpty) {
//         text = 'На сегодня все занято';
//       }
//     }

//     return text;
//   }

//   void createTimes() {
//     var busyHours = [];
//     _listIndexTime([]);
//     _listOfTimes([]);
//     final dayNow = dateToDDMMYYYY(DateTime.now());
//     var hourNow = DateTime.now().hour;

//     if (listReserved.isNotEmpty) {
//       for (int i in listReserved[_indexCourt() + 1].reserved) {
//         busyHours.add(i);
//       }
//     }

//     bool isBusy(int i) => dayNow != dateToDDMMYYYY(_daySelected())
//         ? !busyHours.contains(i)
//         : hourNow <= i && !busyHours.contains(i);
//     _listBoolTime.clear();
//     for (var i = 9; i < 22; i++) {
//       _listIndexTime.add(i);
//       _listBoolTime.add(isBusy(i));

//       _listOfTimes
//           .add(i == 9 ? 'С 0$i:00 до ${i + 1}:00' : 'С $i:00 до ${i + 1}:00');
//     }
//   }

//   void addChosenTime(int index) {
//     if (_listChosenTime.contains(index)) {
//       _listChosenTime.remove(index);
//     } else {
//       _listChosenTime.add(index);
//     }
//   }

//   List<String> takeChosenTimes() {
//     final l = <String>[];
//     for (var i = 0; i < _listChosenTime.length; i++) {
//       l.add(_listOfTimes[_listChosenTime[i]]);
//     }
//     l.sort((a, b) => a.compareTo(b));
//     return l;
//   }

//   //all abaout pool
//   final _listTypeLounge = <TypeLoungeModel>[
//     TypeLoungeModel(
//       title: 'loungeSinglePlace',
//       desc: 'loungeSingleLimits',
//       descCount: '0',
//       longPriceText: 'loungePrice',
//       costForSinglePiece: 'costForSinglePiece',
//       price: '0',
//       isActive: false,
//       count: 0,
//     ),
//     TypeLoungeModel(
//       title: 'loungeFamPlace',
//       desc: 'loungeSingleLimits',
//       descCount: '0',
//       longPriceText: 'loungePrice',
//       costForSinglePiece: 'costForSinglePiece',
//       price: '0',
//       isActive: false,
//       count: 0,
//     ),
//   ].obs;
//   List<TypeLoungeModel> get listTypeLounge => _listTypeLounge();
//   final _totalPriceLounge = 0.0.obs;
//   double get totalPriceLounge => _totalPriceLounge();
//   final _showButton = false.obs;
//   bool get showButton => _showButton();

//   void _incCount(int index, TypeLoungeModel lounge) {
//     if (lounge.count != int.parse(lounge.descCount)) {
//       lounge.count++;
//     }
//   }

//   void _decCount(int index, TypeLoungeModel lounge) {
//     if (lounge.count != 0) {
//       lounge.count--;
//     }
//   }

//   void checkIsActiveLounge({required int index, required bool isDec}) {
//     final lounge = _listTypeLounge[index];

//     isDec ? _decCount(index, lounge) : _incCount(index, lounge);
//     lounge.count > 0 ? lounge.isActive = true : lounge.isActive = false;

//     _listTypeLounge.refresh();

//     final total = int.parse(sumCount);
//     total > 0 ? _showButton(true) : _showButton(false);
//   }

//   String get sumCount =>
//       '${_listTypeLounge[0].count + _listTypeLounge[1].count}';

//   double totalPrice() {
//     double totalLoungePrice = 0.0;
//     double totalCourtPrice = 0.0;

//     for (var i = 0; i < _listTypeLounge.length; i++) {
//       totalLoungePrice +=
//           _listTypeLounge[i].count * int.parse(_listTypeLounge[i].price);
//     }

//     if (takeChosenTimes().isNotEmpty) {
//       totalCourtPrice += takeChosenTimes().length * _priceCourt();
//     }

//     _totalPriceLounge(totalLoungePrice);
//     _totalPriceCourt(totalCourtPrice);

//     return totalLoungePrice + totalCourtPrice;
//   }

//   //end

//   int get indexTab => _service.indexTab;
//   PageController get pageController => _service.pageController;

//   @override
//   Future onReady() async {
//     super.onReady();
//     _service.getCheckReserved(date: daySelected);
//     subscribeIt(
//       listReservedStream.listen((event) {
//         createTimes();
//       }),
//     );
//   }

//   @override
//   void onClose() {
//     _timer?.cancel();
//     super.onClose();
//   }
// }

// class TypeLoungeModel {
//   final String title;
//   final String desc;
//   String descCount;
//   String price;
//   final String longPriceText;
//   final String costForSinglePiece;
//   bool isActive;
//   int count;

//   TypeLoungeModel({
//     required this.title,
//     required this.desc,
//     required this.descCount,
//     required this.price,
//     required this.longPriceText,
//     required this.costForSinglePiece,
//     required this.isActive,
//     required this.count,
//   });
}
