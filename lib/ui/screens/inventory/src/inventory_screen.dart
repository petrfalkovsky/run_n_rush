import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:vfx_flutter_common/getx_helpers.dart';
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/drop_down.dart';
import 'package:run_n_rush/ui/shared/widgets/toggle_animated_swithcer.dart';

class InventoryScreen extends StatexWidget<InventoryController> {
  InventoryScreen({Key? key}) : super(() => InventoryController(), key: key) {
    debugPrint('inventory_screen'.tr());
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
                  FilterDropdown(
                    controller: controller,
                  ),
                  const Spacer(),
                  ToggleAnimatedSwitcher(
                    onTap: () {
                      controller.fetchData();
                    },
                    inventoryController: controller,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Obx(
                () => Stack(
                  children: [
                    ProductListWidget(
                      controller: controller,
                      inventoryList: controller.inventoryList.toList(),
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

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

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
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'inventory'.tr(),
                      style: AppStyles.headline
                          .andWeight(FontWeight.bold)
                          .andColor(AppColors.text.primary),
                    ),
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
  final List<SneakerInventory> inventoryList;
  final InventoryController controller;

  const ProductListWidget({
    Key? key,
    required this.inventoryList,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (inventoryList.isEmpty) {
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
        itemCount: inventoryList.length,
        itemBuilder: (context, index) {
          final inventory = inventoryList[index];
          return CardItemShop(inventory: inventory);
        },
      );
    }
  }
}
