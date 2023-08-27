import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/drop_down.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/toggle_swithcer_two.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class ShopScreen extends StatexWidget<InventoryController> {
  ShopScreen({Key? key}) : super(() => InventoryController(), key: key) {
    debugPrint(' экран магазина');
  }

  @override
  Widget buildWidget(BuildContext context) {
    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.black,
      navBarEnable: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: AppBarWidget(),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  /// фильтр
                  FilterDropdown(),
                  const Spacer(),

                  /// переключатель предложений купить/продать
                  AnimatedSwitcherWidgetTwo(
                    allText: 'Buy',
                    dressedText: 'Sell',
                    animatedContainerWidth: 120,
                    smallContainerWidth: 60,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            20.h,
            Expanded(
              child: Stack(
                children: const [
                  /// товары
                  ProductListWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBar(
          backgroundColor: const Color(0xFF8784D3),
          elevation: 0,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /// строка элементов эппбара, заголовок + баланс
              Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
                child: Row(
                  children: [
                    const Text(
                      'Shop',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(AppIcons.coin),
                          const SizedBox(width: 5),
                          const Text(
                            '00.0025',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          8.w,
                          StdButton(
                              width: 65,
                              text: 'BUY',
                              isActive: true,
                              onPress: () {})
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(physics: const BouncingScrollPhysics(), children: [
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          /// можно регулировать высоту карточки
          mainAxisExtent: 300,
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 0,
        ),

        /// число карточек в списке
        itemCount: 12,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(),
                    ),
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(

                              /// боттом - центрировать кнопку к бордеру карточки по вертикали
                              bottom: 14,
                              top: 12,
                              left: 10,
                              right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color(0xFF134552),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14, right: 14, top: 14),
                                  child: DottedBorder(
                                    dashPattern: const [12, 4],
                                    color: const Color(0xFF134552),
                                    borderType: BorderType.RRect,
                                    radius: const Radius.circular(12),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        width: 122,
                                        height: 118,
                                        color: Colors.black.withOpacity(0.05),
                                        child: Image.asset(
                                          AppIcons.jogger_2,

                                          /// fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                15.h,
                                const Text(
                                  "Jogger 4-10 km/h",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white),
                                ),
                                15.h,
                                const Text(
                                  "#145265874",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(AppIcons.coin),
                                    const SizedBox(width: 5),
                                    const Text(
                                      '00.0000',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StdButton(
                              height: 36,
                              width: 97,
                              text: 'BUY',
                              isActive: true,
                              onPress: () {}),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    ]);
  }
}
