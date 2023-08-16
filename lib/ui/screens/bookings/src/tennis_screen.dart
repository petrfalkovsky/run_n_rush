import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/screens/bookings/bookings.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';
import 'package:riverside/ui/shared/ext.dart';
import 'package:riverside/ui/shared/widgets/std_button.dart';

class TennisScreen extends GetView<BookingsController> {
  const TennisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('chooseTennisCourt'.tr(), style: AppTextStyles.b1),
                24.h,
                const ChooseCourt(),
                16.h,
                Text(
                  'chooseTime'.tr(),
                  style: AppTextStyles.b1Bold,
                ),
                16.h,
                const ChooseTime(),
                8.h,
                if (controller.listChosenTime.isNotEmpty) 55.h,
              ],
            ),
          ),
          if (controller.listChosenTime.isNotEmpty)
            Positioned(
              bottom: 8,
              left: 0,
              right: 0,
              child: StdButton(
                text: 'makePayment'.tr(),
                isActive: true,
                onPress: controller.goToMyBooking,
              ),
            ),
        ],
      ),
    );
  }
}

class ChooseCourt extends GetView<BookingsController> {
  const ChooseCourt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final listCourts = controller.listCourts;
      final indexCourt = controller.indexCourt;
      return Column(
        children: [
          for (var i = 0; i < listCourts.length; i++)
            GestureDetector(
              onTap: () => controller.changeIndexCourt(i),
              child: Container(
                width: Get.width,
                margin: EdgeInsets.only(bottom: i == 0 ? 8 : 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: indexCourt == i ? null : AppColors.background.bgB1,
                  image: indexCourt == i
                      ? const DecorationImage(
                          image: AssetImage(
                            'assets/images/tennis_court_bg.png',
                          ),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: Text(
                  listCourts[i],
                  style: AppTextStyles.b1Bold.copyWith(
                    color:
                        indexCourt == i ? Colors.white : AppColors.text.primary,
                  ),
                ),
              ),
            ),
        ],
      );
    });
  }
}

class ChooseTime extends GetView<BookingsController> {
  const ChooseTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final listOfTimes = controller.listOfTimes;
        final listChosenTime = controller.listChosenTime;
        final listBoolTime = controller.listBoolTime;
        return Column(
          children: [
            LayoutBuilder(
              builder: ((context, constraints) {
                final mediaW = MediaQuery.of(context).size.width;
                final count = mediaW > 500 ? 3 : 2;
                const spacing = 8.0;
                final space = spacing * (count - 1);
                final width3 = (constraints.maxWidth - space) / count;
                return Wrap(
                  spacing: spacing - 1,
                  runSpacing: 8,
                  children: [
                    for (var i = 0; i < listOfTimes.length; i++)
                      GestureDetector(
                        onTap: !listBoolTime[i]
                            ? null
                            : () => controller.addChosenTime(i),
                        child: Container(
                          height: 64,
                          width: width3,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.background.bgB1,
                            border: Border.all(
                                color: !listBoolTime[i]
                                    ? AppColors.text.secondary
                                    : listChosenTime.contains(i)
                                        ? AppColors.accent.accent1
                                        : Colors.transparent),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FittedBox(
                                child: Text(
                                  listOfTimes[i],
                                  style: AppTextStyles.b2SemiBold,
                                ),
                              ),
                              if (listChosenTime.contains(i)) ...[
                                4.h,
                                Text(
                                  'chosen'.tr(),
                                  style: AppTextStyles.captionMob.copyWith(
                                    color: AppColors.text.secondary,
                                  ),
                                )
                              ],
                              if (!listBoolTime[i]) ...[
                                4.h,
                                Text(
                                  'Забронировано',
                                  style: AppTextStyles.captionMob.copyWith(
                                    color: AppColors.text.secondary,
                                  ),
                                )
                              ],
                            ],
                          ),
                        ),
                      ),
                    if (listOfTimes.isEmpty)
                      Container(
                        height: 100,
                        alignment: Alignment.center,
                        child: Text(controller.listTimesEmpty()),
                      ),
                  ],
                );
              }),
            ),
            60.h,
          ],
        );
      },
    );
  }
}
