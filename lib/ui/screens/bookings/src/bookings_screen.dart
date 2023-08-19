import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/screens/bookings/bookings.dart';
import 'package:riverside/ui/screens/bookings/src/pool_screen.dart';
import 'package:riverside/ui/screens/bookings/src/tennis_screen.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/themes/app_colors_theme.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';
import 'package:riverside/ui/shared/widgets/buttons/custom_ink_well.dart';
import 'package:riverside/ui/shared/widgets/ctable_calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class BookingScreen extends StatexWidget<BookingsController> {
  BookingScreen({Key? key}) : super(() => BookingsController(), key: key) {
    debugPrint(' Bookings.Bookings');
  }

  @override
  Widget buildWidget(BuildContext context) {
    final textTheme = AppTextTheme.fromPlatform;

    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.black,
      navBarEnable: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(227),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/appbar_frame.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 100,
              automaticallyImplyLeading: false,
              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      bottom: 5,
                    ),
                    child: Text('reservation'.tr(), style: textTheme.h1_1),
                  ),
                  const _BookingsTypeSelector(),
                ],
              ),
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Obx(() {
          return Column(
            children: [
              // CTableCalendar(
              //   focusedDay: controller.daySelected,
              //   currentDay: controller.daySelected,
              //   onDaySelected: (day, days) {
              //     controller.changeDaySelected(day);
              //   },
              //   startingDayOfWeek: StartingDayOfWeek.monday,
              // ),
              // 8.h,
              Expanded(
                child: Stack(
                  children: [
                    PageView(
                        controller: controller.pageController,
                        physics: const BouncingScrollPhysics(),
                        onPageChanged: controller.changeIndexTab,
                        children: const [
                          PoolScreen(),
                          TennisScreen(),
                        ]),
                    if (controller.isLoading) Consts().preloader,
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class _BookingsTypeSelector extends GetView<BookingsController>
    implements PreferredSizeWidget {
  const _BookingsTypeSelector({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: Obx(
        () => Row(
          children: <Widget>[
            const SizedBox(width: 24.0),
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
