import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/screens/bookings/bookings.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';
import 'package:riverside/ui/shared/widgets/app_inkwell.dart';
import 'package:riverside/ui/shared/widgets/std_button.dart';

class PoolScreen extends GetView<BookingsController> {
  const PoolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final list = controller.listTypeLounge;
        final totalCount = controller.sumCount;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('loungeType'.tr(), style: AppTextStyles.b1Bold),
            16.h,
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    height: constraints.maxHeight,
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              for (var i = 0; i < list.length; i++)
                                SingleBookingCardPool(
                                  index: i,
                                  title: list[i].title,
                                  desc: list[i].desc,
                                  descCount: list[i].descCount,
                                  longPriceText: list[i].longPriceText,
                                  costForSinglePiece:
                                      list[i].costForSinglePiece,
                                  price: list[i].price,
                                  isActive: list[i].isActive,
                                  count: list[i].count,
                                ),
                              20.h,
                            ],
                          ),
                        ),
                        if (controller.showButton)
                          Positioned(
                            bottom: 8,
                            left: 0,
                            right: 0,
                            child: StdButton(
                              text: 'chooseAndContinue'.tr(args: [totalCount]),
                              isActive: true,
                              onPress: controller.goToMyBooking,
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class SingleBookingCardPool extends GetView<BookingsController> {
  const SingleBookingCardPool({
    Key? key,
    required this.index,
    required this.title,
    required this.desc,
    required this.descCount,
    required this.price,
    required this.longPriceText,
    required this.costForSinglePiece,
    required this.count,
    this.isActive = false,
  }) : super(key: key);

  final int index;
  final String title;
  final String desc;
  final String descCount;
  final String price;
  final String longPriceText;
  final String costForSinglePiece;
  final bool isActive;
  final int count;

  @override
  Widget build(BuildContext context) {
    return CardPoolBooking(
      isActive: isActive,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.tr(), style: AppTextStyles.b1Bold),
          8.h,
          Text(
            desc.tr(args: [descCount]),
            style: AppTextStyles.b2Regular
                .copyWith(color: const OtherColors().grey),
          ),
          12.h,
          Row(
            children: [
              Text(longPriceText.tr(), style: AppTextStyles.b2Regular),
              Text(costForSinglePiece.tr(args: [price]),
                  style: AppTextStyles.b2Regular),
              const Spacer(),
              if (Get.width > 340)
                NumberPlusMinusWidget(
                  index: index,
                  count: count,
                ),
            ],
          ),
          if (Get.width < 340) ...[
            10.h,
            NumberPlusMinusWidget(
              index: index,
              count: count,
            ),
          ]
        ],
      ),
    );
  }
}

class NumberPlusMinusWidget extends GetView<BookingsController> {
  const NumberPlusMinusWidget({
    Key? key,
    required this.index,
    required this.count,
  }) : super(key: key);

  final int index;
  final int count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _button(
            icon: Icons.remove,
            onPressed: () =>
                controller.checkIsActiveLounge(index: index, isDec: true),
          ),
          7.w,
          Container(
            width: 20,
            alignment: Alignment.center,
            child: Text(
              count.toString(),
              style: AppTextStyles.b2Regular,
            ),
          ),
          7.w,
          _button(
            icon: Icons.add,
            onPressed: () =>
                controller.checkIsActiveLounge(index: index, isDec: false),
          ),
        ],
      ),
    );
  }

  Widget _button({required IconData icon, required Function()? onPressed}) {
    return Container(
      alignment: Alignment.center,
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        color: AppColors.accent.accent1,
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 28,
        ),
        color: Colors.white,
        padding: const EdgeInsets.all(0),
      ),
    );
  }
}
