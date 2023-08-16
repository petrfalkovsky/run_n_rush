import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/screens/bookings/src/bookings_controller.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';
import 'package:riverside/ui/shared/widgets/std_button.dart';

class CurrentBookingScreen extends GetView<BookingsController> {
  const CurrentBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      navBarEnable: true,
      appBar: getStatAppBar(
        context,
        text: 'yourReservation'.tr(),
        elevation: 0,
        isLeading: true,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Obx(() {
          final countIntLounge = controller.listTypeLounge[0];
          final countFamLounge = controller.listTypeLounge[1];
          final priceLounge = controller.totalPriceLounge;
          final priceCourt = controller.totalPriceCourt;
          final listTimes = controller.takeChosenTimes();
          final totalPrice = controller.totalPrice();
          final court = controller.indexCourt + 1;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                35.h,
                Text('annualPayment'.tr(), style: AppTextStyles.b1Bold),
                13.h,
                if (priceLounge > 0)
                  _TotalPriceLoungeTennis(
                    title: 'totalCostChaiseLounge',
                    price: priceLounge,
                  ),
                if (priceCourt > 0) ...[
                  16.h,
                  _TotalPriceLoungeTennis(
                    title: 'totalCostChaiseCourt',
                    price: priceCourt,
                  ),
                ],
                40.h,
                if (priceLounge > 0)
                  _Row(
                    title: 'loungeQuantity',
                    list: [
                      countIntLounge.count == 0
                          ? ''
                          : '${countIntLounge.count} шт. - одноместный',
                      countFamLounge.count == 0
                          ? ''
                          : '${countFamLounge.count} шт. - семейный'
                    ],
                  ),
                if (priceCourt > 0) ...[
                  16.h,
                  _Row(
                    title: 'tennisCourt',
                    list: ['$court ${'court'.tr()}'],
                  ),
                  8.h,
                  _Row(
                    title: 'time',
                    list: listTimes,
                  ),
                ],
                12.h,
                _Row(
                  title: 'visitDate',
                  list: [dateToDDMMYYYY(controller.daySelected)],
                ),
                24.h,
                _TotalPrice(totalPrice),
                16.h,
                StdButton(
                  text: 'makePayment'.tr(),
                  isActive: true,
                  onPress: controller.send,
                  isLoading: controller.isLoading,
                ),
                8.h,
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _TotalPriceLoungeTennis extends GetView<BookingsController> {
  const _TotalPriceLoungeTennis({
    required this.title,
    required this.price,
  });

  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title.tr(),
              style: AppTextStyles.b2Regular
                  .copyWith(color: AppColors.text.secondary),
            ),
          ],
        ),
        8.h,
        Text('totalPrice'.tr(args: ['$price']), style: AppTextStyles.b2Regular),
      ],
    );
  }
}

class _TotalPrice extends GetView<BookingsController> {
  const _TotalPrice(this.price);
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: AppColors.background.bgB1,
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'totalCost'.tr(),
            style: AppTextStyles.captionMob,
          ),
          8.h,
          Text(
            '$price руб.',
            style: AppTextStyles.h1SemiBold,
          ),
        ],
      ),
    );
  }
}

class _Row extends GetView<BookingsController> {
  const _Row({required this.title, required this.list});

  final String title;
  final List list;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title.tr(),
          style:
              AppTextStyles.b2Regular.copyWith(color: AppColors.text.secondary),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            for (var i = 0; i < list.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  list[i].toString(),
                  style: AppTextStyles.b2Regular,
                ),
              )
          ],
        )
      ],
    );
  }
}
