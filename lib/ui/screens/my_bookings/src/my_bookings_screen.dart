import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:vfx_flutter_common/getx_helpers.dart';

import 'package:riverside/domain/my_booking/booking_entity.dart';
import 'package:riverside/ui/screens/my_bookings/my_bookings.dart';
import 'package:riverside/ui/screens/my_bookings/src/widgets/date_helper.dart';
import 'package:riverside/ui/screens/my_bookings/src/widgets/knob.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';
import 'package:riverside/ui/shared/constants/assets.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';
import 'package:riverside/ui/shared/widgets/buttons/custom_ink_well.dart';
import 'package:riverside/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';
import 'package:riverside/ui/shared/widgets/std_button.dart';

class MyBookings extends StatexWidget<MyBookingsController> {
  MyBookings({Key? key}) : super(() => MyBookingsController(), key: key) {
    debugPrint(' MyBookings.MyBookings');
  }

  @override
  Widget buildWidget(BuildContext context) {
    final textTheme = AppTextTheme.fromPlatform;
    debugPrint('controller.activeBookingList ${controller.activeBookingList}');
    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.white,
      navBarEnable: true,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('allMyReservations'.tr(), style: textTheme.h1_1),
            ),
            const _BookingsTypeSelector(),
          ],
        ),
      ),
      child: Obx(
        () => Column(
          children: [
            controller.indexTab == 1
                ? controller.archiveBookingList.isNotEmpty
                    ? const _BookingsDateFilter()
                    : const SizedBox.shrink()
                : const SizedBox.shrink(),
            5.h,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
                child: PageView(
                  controller: controller.pageController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) => controller.changeIndexTab(index),
                  children: [
                    if (controller.isLoading) Consts().preloader,
                    _BookingsList(bookings: controller.activeBookingList),
                    _BookingsList(
                      bookings: controller.archiveBookingList,
                      isArchive: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BookingsTypeSelector extends GetView<MyBookingsController>
    implements PreferredSizeWidget {
  const _BookingsTypeSelector({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      padding: const EdgeInsets.only(left: 24),
      child: Obx(
        () => Row(
          children: [
            for (var i = 0; i < controller.listTab.length; i++)
              CustomInkWell(
                onTap: () => controller.changeIndexTab(i),
                isActive: i == controller.indexTab,
                text: controller.listTab[i].tr(),
              ),
          ],
        ),
      ),
    );
  }
}

class _BookingsDateFilter extends GetView<MyBookingsController> {
  const _BookingsDateFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: <Widget>[
          24.w,
          Expanded(
            child: _CustomInkWell(
              onTap: () async => controller.changeMonth(context),
              text: DateHelper.localizeFullMonthName(controller.month$),
            ),
          ),
          8.w,
          _CustomInkWell(
            onTap: () => controller.changeYear(context),
            text: controller.year$.toString(),
            isTwoArrows: true,
          ),
          const SizedBox(width: 24.0),
        ],
      ),
    );
  }
}

class _BookingsList extends GetView<MyBookingsController> {
  const _BookingsList(
      {Key? key, required this.bookings, this.isArchive = false})
      : super(key: key);

  final List bookings;
  final bool isArchive;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.isLoading) {
          return Consts().preloader;
        }
        return bookings.isEmpty
            ? const _EmptyBookingList()
            : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    bookings.length,
                    (index) {
                      final condition = bookings.length > 1;
                      final booking = bookings[index];
                      return _BookingCard(
                        booking: booking,
                        isArchive: isArchive,
                        showDate: condition
                            ? controller.showDate(index, bookings)
                            : true,
                      );
                    },
                  ),
                ),
              );
      },
    );
  }
}

class _BookingCard extends StatelessWidget {
  const _BookingCard({
    required this.booking,
    this.showDate = true,
    this.isArchive = false,
    Key? key,
  }) : super(key: key);

  final dynamic booking;
  final bool showDate;
  final bool isArchive;

  @override
  Widget build(BuildContext context) {
    return booking is String
        ? _GroupDate(groupDate: booking)
        : Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                showDate ? _DateBooking(booking: booking) : 32.w,
                8.w,
                Expanded(
                    child:
                        _InfoBooking(booking: booking, isArchive: isArchive)),
              ],
            ),
          );
  }
}

class _GroupDate extends GetView<MyBookingsController> {
  const _GroupDate({
    required this.groupDate,
    Key? key,
  }) : super(key: key);

  final String groupDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 8, 0, 8),
      child: Text(
        groupDate.toUpperCase(),
        style: AppTextTheme.fromPlatform.b3_1.copyWith(
          color: const AppColorsThemeLight().colors.text[2],
        ),
      ),
    );
  }
}

class _DateBooking extends StatelessWidget {
  final BookingEntity booking;
  const _DateBooking({
    required this.booking,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorTheme = AppColorsThemeLight();
    final textTheme = AppTextTheme.fromPlatform;
    final days = DateFormat(
      DateFormat.ABBR_WEEKDAY,
      'ru-RU',
    ).dateSymbols.STANDALONESHORTWEEKDAYS;
    return Column(
      children: <Widget>[
        Text(
          days[booking.bookingDate.weekday % 7].toUpperCase(),
          style: textTheme.b3_1.copyWith(
            color: booking.isActive
                ? colorTheme.colors.accent[1]
                : colorTheme.colors.text[3],
          ),
        ),
        4.h,
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: booking.isActive
                ? colorTheme.colors.accent[1]
                : colorTheme.other.white,
          ),
          child: Center(
            child: Text(
              booking.bookingDate.day.toString(),
              style: textTheme.b1_2.copyWith(
                color: booking.isActive
                    ? colorTheme.other.white
                    : colorTheme.colors.text[3],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _InfoBooking extends StatelessWidget {
  const _InfoBooking({
    required this.booking,
    this.isArchive = false,
    Key? key,
  }) : super(key: key);

  final BookingEntity booking;
  final bool isArchive;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: () => !booking.isActive || isArchive
          ? null
          : Get.bottomSheet(
              backgroundColor: const OtherColors().white,
              isScrollControlled: true,
              _DetailInfoBooking(booking: booking),
            ),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(booking.title, style: AppTextTheme.fromPlatform.b2_0),
          12.h,
          Container(
            height: 1.0,
            color: const AppColorsThemeLight().colors.background[3],
          ),
          12.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _BookingStatus(
                  text:
                      booking.isActive ? 'activated'.tr() : 'notActivated'.tr(),
                  isActive: booking.isActive,
                ),
              ),
              4.h,
              Expanded(
                child: _BookingStatus(
                  text: 'oneTimeReservation'.tr(),
                  icon: Assets.icons.clock,
                ),
              ),
            ],
          ),
          12.h,
          _MainInfoBooking(booking: booking),
        ],
      ),
    );
  }
}

class _BookingStatus extends StatelessWidget {
  const _BookingStatus({
    required this.text,
    this.isActive = false,
    this.icon,
    Key? key,
  }) : super(key: key);

  final String text;
  final String? icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: isActive ? AppColors.accent.accent1 : AppColors.background.bgB2,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (Get.width > 340) ...[
            icon == null
                ? Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isActive
                          ? const OtherColors().white
                          : AppColors.text.card,
                    ),
                  )
                : SvgPicture.asset(icon!),
            5.w,
          ],
          FittedBox(
            child: Text(
              text,
              style: AppTextStyles.captionMob.copyWith(
                color:
                    isActive ? const OtherColors().white : AppColors.text.card,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BookingStat extends StatelessWidget {
  final String left;
  final String right;

  const _BookingStat({
    required this.left,
    required this.right,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.fromPlatform;
    final colorTheme = const AppColorsThemeLight().colors;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          left,
          style: textTheme.b3_1.copyWith(color: colorTheme.text[2]),
        ),
        const Spacer(),
        Text(right, style: textTheme.b3_1),
      ],
    );
  }
}

class _EmptyBookingList extends StatelessWidget {
  const _EmptyBookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: SvgPicture.asset(
              Assets.icons.star,
              width: 189,
              height: 189,
              fit: BoxFit.contain,
            ),
          ),
          30.h,
          Text(
            'noReservations'.tr(),
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          ),
          24.h,
          StdButton(
            text: 'makeReservation'.tr(),
            isActive: true,
            onPress: () {
              final generalController = Get.find<GeneralScaffoldService>();
              generalController.goToPage(1);
            },
          ),
        ],
      ),
    );
  }
}

class _CustomInkWell extends StatelessWidget {
  const _CustomInkWell(
      {Key? key,
      required this.onTap,
      required this.text,
      this.isTwoArrows = false})
      : super(key: key);

  final Function() onTap;
  final String text;
  final bool isTwoArrows;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: onTap,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyles.b2Regular,
          ),
          10.w,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isTwoArrows)
                SvgPicture.asset(
                  Assets.icons.arrowUp,
                ),
              SvgPicture.asset(Assets.icons.arrowDown),
            ],
          )
        ],
      ),
    );
  }
}

class _DetailInfoBooking extends GetView<MyBookingsController> {
  final BookingEntity booking;
  const _DetailInfoBooking({
    required this.booking,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = booking.isActive ? 'сегодня' : '';
    final dayNow =
        DateFormat('E dd MMM yyyy', 'ru_RU').format(booking.bookingDate);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Center(child: Knob()),
          ),
          Text(booking.title, style: AppTextTheme.fromPlatform.h1_1),
          8.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _BookingStatus(
                  text:
                      booking.isActive ? 'activated'.tr() : 'notActivated'.tr(),
                  isActive: booking.isActive,
                ),
              ),
              4.w,
              Expanded(
                child: _BookingStatus(
                  text: 'oneTimeReservation'.tr(),
                  icon: Assets.icons.clock,
                ),
              ),
            ],
          ),
          8.h,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (booking.tennisCourtNumber != 0) ...[
                for (String time in booking.durationTime ?? [])
                  Text(
                    'Доступен $today $time'.toUpperCase(),
                    overflow: TextOverflow.visible,
                    style: AppTextStyles.b3Regular.copyWith(
                      color: booking.isActive
                          ? AppColors.accent.accent1
                          : AppColors.text.secondary,
                    ),
                  ),
                5.h,
              ],
              Text(
                dayNow.toUpperCase(),
                overflow: TextOverflow.visible,
                style: AppTextStyles.b3Regular,
              ),
            ],
          ),
          32.h,
          Text(
            'additionalInfo'.tr(),
            style: AppTextStyles.b3Regular,
          ),
          8.h,
          _MainInfoBooking(booking: booking),
          8.h,
          _BookingStat(
            left: 'paymentDate'.tr(),
            right: '${booking.paymentTime}',
          ),
          32.h,
          StdButton(
            text: 'visitsHistory'.tr(),
            isOutlined: true,
            isActive: true,
            onPress: () => showModalBottomSheet(
              context: context,
              builder: (_) => _Visits(visitLog: booking.visitLog),
            ),
          ),
          8.h,
          Row(
            children: [
              Expanded(
                child: StdButton(
                  text: 'scanQR'.tr(),
                  isActive: booking.isActive,
                  onPress: () =>
                      controller.goToQRScaner(booking: booking, tab: false),
                ),
              ),
              8.w,
              Expanded(
                child: StdButton(
                  text: 'inputCode'.tr(),
                  isActive: booking.isActive,
                  onPress: () =>
                      controller.goToQRScaner(booking: booking, tab: true),
                  color: AppColors.accent.accent2,
                ),
              ),
            ],
          ),
          20.h,
        ],
      ),
    );
  }
}

class _Visits extends StatelessWidget {
  const _Visits({
    Key? key,
    required this.visitLog,
  }) : super(key: key);

  final List<VisitLogEntity> visitLog;

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.fromPlatform;
    final textColor = const AppColorsThemeLight().colors.text;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Center(child: Knob()),
          ),
          ...visitLog.isNotEmpty
              ? List.generate(
                  visitLog.length,
                  (index) => Column(
                    children: [
                      10.h,
                      Text('enterTerritory'.tr(), style: textTheme.b2_0),
                      8.h,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            visitLog[index].openedAt,
                            style: textTheme.b2_0.copyWith(color: textColor[2]),
                          ),
                          Text(
                            'Замок #${visitLog[index].lock},',
                            style: textTheme.b2_0.copyWith(color: textColor[2]),
                          ),
                        ],
                      ),
                      10.h,
                    ],
                  ),
                )
              : [
                  SvgPicture.asset(
                    Assets.icons.list,
                    width: 40,
                    height: 40,
                    color: textColor[4],
                  ),
                  16.h,
                  Text('emptyVisitsHistory'.tr(), style: textTheme.b3_0),
                ],
          20.h,
        ],
      ),
    );
  }
}

class _MainInfoBooking extends StatelessWidget {
  final BookingEntity booking;
  const _MainInfoBooking({
    required this.booking,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPool = booking.tennisCourtNumber == 0;
    return Column(
      children: isPool
          ? [
              _BookingStat(
                left: 'totalCost'.tr(),
                right: '${booking.price.amount} ${booking.price.currencyCode}',
              ),
              8.h,
              _BookingStat(
                left: 'loungeQuantity'.tr(),
                right: '${booking.indSeat + booking.famSeat} шт.',
              )
            ]
          : [
              _BookingStat(
                left: 'totalCost'.tr(),
                right: '${booking.price.amount} ${booking.price.currencyCode}',
              ),
              if (booking.indSeat != 0 || booking.famSeat != 0) ...[
                8.h,
                _BookingStat(
                  left: 'loungeQuantity'.tr(),
                  right: '${booking.indSeat + booking.famSeat} шт.',
                ),
              ],
              8.h,
              for (var i = 0; i < booking.durationTime!.length; i++)
                _BookingStat(
                  left: i == 0 ? 'tennisCourtAccess'.tr() : '',
                  right: booking.durationTime![i],
                ),
              8.h,
              _BookingStat(
                left: 'tennisCourtNumber'.tr(),
                right: '${booking.tennisCourtNumber}',
              ),
            ],
    );
  }
}
