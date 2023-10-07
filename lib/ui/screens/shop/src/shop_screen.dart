// ignore_for_file: unused_import

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/data/dto/sneakers/src/shop.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/shop/shop.dart';
import 'package:run_n_rush/ui/screens/shop/widgets/shop_price_filter.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/bottom_sheet_modal.dart';
import 'package:run_n_rush/ui/screens/inventory/widgets/inventory_price_filter.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/toggle_swithcer_two.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class ShopScreen extends StatexWidget<ShopController> {
  final ShopController shopController = Get.put(ShopController());

  ShopScreen({Key? key}) : super(() => ShopController(), key: key) {
    debugPrint('shop_screen'.tr());
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
      child: FiltersWidgets(shopController: shopController),
    );
  }
}

class FiltersWidgets extends StatelessWidget {
  const FiltersWidgets({
    super.key,
    required this.shopController,
  });

  final ShopController shopController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                /// фильтр

                ShopPriceFilter(
                  controller: shopController,
                ),
                const Spacer(),

                /// переключатель предложений купить/продать
                AnimatedSwitcherWidgetTwo(
                  allText: 'buy'.tr().toUpperCase(),
                  dressedText: 'sell'.tr().toUpperCase(),
                  animatedContainerWidth: 120,
                  smallContainerWidth: 60,
                  onTap: () {},
                ),
              ],
            ),
          ),
          20.h,

          /// таббар и содержимое
          ShopTabBar(shopController: shopController),
        ],
      ),
    );
  }
}

// class ShopTabBar extends StatelessWidget {
//   const ShopTabBar({
//     super.key,
//     required this.shopController,
//   });

//   final ShopController shopController;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Obx(
//         () => Stack(
//           children: [
//             ProductListWidget(
//               shopController: shopController,
//               sneakerList: shopController.sneakerList.toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ShopTabBar extends StatelessWidget {
  const ShopTabBar({
    super.key,
    required this.shopController,
  });

  final ShopController shopController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => Stack(
          children: [
            Container(
              height: 52,
              color: AppColors.background[3],
            ),
            DefaultTabController(
              length: 3,
              initialIndex: shopController.selectedTabIndex.value,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    3.h,
                    PreferredSize(
                      preferredSize: const Size.fromHeight(kToolbarHeight),
                      child: TabBar(
                        labelColor: Colors.white,
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(
                            child: Text(
                              'Shop',
                              style: AppStyles.body.andWeight(FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Gems',
                              style: AppStyles.body.andWeight(FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Other',
                              style: AppStyles.body.andWeight(FontWeight.bold),
                            ),
                          ),
                        ],
                        onTap: (index) {
                          shopController.selectedTabIndex.value = index;
                        },
                      ),
                    ),
                    20.h,
                    Expanded(
                      child: TabBarView(
                        children: [
                          ProductListWidget(
                            shopController: shopController,
                            sneakerList: shopController.sneakerList.toList(),
                          ),
                          Center(
                            child: Text(
                              'Gems will be coming soon',
                              style: AppStyles.headline
                                  .andWeight(FontWeight.bold)
                                  .andColor(AppColors.text.primary),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Coming Soon',
                              style: AppStyles.headline
                                  .andWeight(FontWeight.bold)
                                  .andColor(AppColors.text.primary),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
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
                    Text(
                      'shop'.tr(),
                      style: AppStyles.headline
                          .andWeight(FontWeight.bold)
                          .andColor(AppColors.text.primary),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(AppIcons.coin),
                          const SizedBox(width: 5),
                          Text(
                            'amount_coins_example_three'.tr(),
                            style: AppStyles.headline
                                .andWeight(FontWeight.bold)
                                .andColor(AppColors.text.primary),
                          ),
                          8.w,
                          StdButton(
                            height: 36,
                            width: 65,
                            text: 'buy'.tr().toUpperCase(),
                            isActive: true,
                            onPress: () => Get.toNamed(AppRoutes.balance),
                          )
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

class BottomSheetChildWidget extends StatelessWidget {
  final SneakerShop sneakerShop;
  final Sneaker sneaker;
  final ShopController shopController;

  const BottomSheetChildWidget({
    super.key,
    required this.sneakerShop,
    required this.sneaker,
    required this.shopController,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = sneaker.imageUrl;
    final isImageUrlEmpty = imageUrl == null || imageUrl.isEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
      child: Column(
        children: [
          Text(
            'great_choice'.tr(),
            style: AppStyles.body
                .andWeight(FontWeight.w600)
                .andColor(AppColors.text.primary),
          ),
          26.h,
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 188,
              height: 178,
              color: Colors.black.withOpacity(0.05),
              child: isImageUrlEmpty
                  ? Image.asset(AppIcons.jogger_2)
                  : CachedNetworkImage(
                      imageUrl: imageUrl,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
            ),
          ),
          12.h,
          Text(
            sneakerShop.price?.substring(0, 6) ??
                'amount_three_hundred_example'.tr(),
            style: AppStyles.body
                .andWeight(FontWeight.w600)
                .andColor(AppColors.text.primary),
          ),
          12.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Coins for hundred steps ',
                style: AppStyles.body
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.primary),
              ),
              Text(
                sneaker.coinsFor1000Steps?.substring(0, 6) ??
                    'amount_three_hundred_example'.tr(),
                style: AppStyles.body
                    .andWeight(FontWeight.w600)
                    .andColor(AppColors.text.primary),
              ),
            ],
          ),
          28.h,
          Container(
            decoration: BoxDecoration(
              color: AppColors.background[3],
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            width: double.maxFinite,
            height: 64,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  sneaker.title ?? 'jogger'.tr(),
                  style: AppStyles.body
                      .andWeight(FontWeight.w600)
                      .andColor(AppColors.text.primary),
                ),
                8.h,
                Text(
                  'move_at'.tr(),
                  style: AppStyles.plainText.andColor(AppColors.text.primary),
                ),
              ],
            ),
          ),
          26.h,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 162,
                    child: Column(
                      children: [
                        Text(
                          'class'.tr(),
                          style: AppStyles.caption
                              .andWeight(FontWeight.normal)
                              .andColor(AppColors.text.secondaryTwo),
                        ),
                        12.h,
                        Text(
                          sneaker.sneakerClassId?.substring(
                                  '${sneaker.sneakerClassId}'.length - 4) ??
                              'jogger'.tr(),
                          style: AppStyles.body
                              .andWeight(FontWeight.w600)
                              .andColor(AppColors.text.primary),
                        ),
                      ],
                    ),
                  ),
                  26.h,
                  SizedBox(
                    width: 162,
                    child: Column(
                      children: [
                        Text(
                          'durability'.tr(),
                          style: AppStyles.caption
                              .andWeight(FontWeight.normal)
                              .andColor(AppColors.text.secondaryTwo),
                        ),
                        12.h,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'amount_hundred_example'.tr(),
                              style: AppStyles.body
                                  .andWeight(FontWeight.w600)
                                  .andColor(AppColors.text.primary),
                            ),
                            Text(
                              '/',
                              style: AppStyles.body
                                  .andWeight(FontWeight.w600)
                                  .andColor(AppColors.text.primary),
                            ),
                            Text(
                              'amount_hundred_example'.tr(),
                              style: AppStyles.body
                                  .andWeight(FontWeight.w600)
                                  .andColor(AppColors.text.primary),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppIcons.coin),
              9.w,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sneaker.coinsFor1000Steps?.substring(0, 6) ??
                        'amount_three_hundred_example'.tr(),
                    style: AppStyles.body.andColor(AppColors.text.primary),
                  ),
                  Text(
                    'amount_three_hundred_example'.tr(),
                    style: AppStyles.body.andColor(AppColors.text.primary),
                  ),
                  4.w,
                  Text(
                    'rar_coin'.tr(),
                    style: AppStyles.body.andColor(AppColors.text.primary),
                  ),
                ],
              ),
            ],
          ),
          28.h,
          StdButton(
            color: Colors.transparent,
            height: 52,
            text: 'buy'.tr().toUpperCase(),
            isActive: true,
            onPress: () {
              final sneakerId = sneakerShop.id;
              if (sneakerId != null) {
                Get.find<ShopController>().buySneaker(sneakerId);
                Get.back();
              } else {
                debugPrint('ой чот кнопка не сработала');
                // todo Обработка случая, когда sneaker.id равно null.
              }
            },
          ),
          20.h,
          StdButton(
            isOutlined: true,
            text: 'cancel'.tr(),
            isActive: true,
            onPress: () {
              Get.back();
              Get.find<ShopController>().snackThanks();
            },
          ),
        ],
      ),
    );
  }
}

class ProductListWidget extends StatelessWidget {
  final List<SneakerShop> sneakerList;
  final ShopController shopController;

  const ProductListWidget({
    Key? key,
    required this.sneakerList,
    required this.shopController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (sneakerList.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 300,
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 0,
        ),
        itemCount: sneakerList.length,
        itemBuilder: (context, index) {
          final sneakerShop = sneakerList[index];
          return CardItemShop(
            sneakerShop: sneakerShop,
            sneaker: sneakerShop.sneaker,
            shopController: shopController,
          );
        },
      );
    }
  }
}
