// ignore_for_file: unused_import

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/screens/shop/src/shop_screen.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';
import 'package:run_n_rush/ui/shared/widgets/bottom_sheet_modal.dart';
import 'package:run_n_rush/ui/shared/widgets/drop_down.dart';
import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
import 'package:run_n_rush/ui/shared/widgets/toggle_swithcer.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

import '../../main/main.dart';

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
                  /// фильтр
                  FilterDropdown(),
                  const Spacer(),

                  /// переключатель предложений купить/продать
                  AnimatedSwitcherWidget(
                    onTap: () {},
                  ),
                ],
              ),
            ),
            20.h,
            Expanded(
              child: Stack(
                children: [
                  /// товары
                  ProductListWidget(
                    inventoryList: controller.inventoryList.toList(),
                  ),
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
  final Dio dio = Dio();
  final List<SneakerInventory> inventoryList;

  ProductListWidget({
    Key? key,
    required this.inventoryList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (inventoryList.isEmpty) {
      // Display "Items not found" message when the list is empty
      return Center(
        child: Column(
          children: [
            Text(
              "Items not found".tr(),
              style: AppStyles.body
                  .andWeight(FontWeight.w600)
                  .andColor(AppColors.text.primary),
            ),
            ElevatedButton(
              onPressed: () {
                //  метод для выполнения GET-запроса при нажатии на кнопку
                _fetchData();
              },
              child: const Text('Fetch Data'),
            ),
          ],
        ),
      );
    } else {
      return PageView(
        physics: const BouncingScrollPhysics(),
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 300,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 0,
            ),
            itemCount: inventoryList.length,
            itemBuilder: (context, index) {
              final inventory = inventoryList[index];
              return CardItemWidget(inventory: inventory);
            },
          ),
        ],
      );
    }
  }

  void _fetchData() async {
    try {
      // Установите заголовки запроса
      dio.options.headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      };

      // Выполните GET-запрос здесь и получите ответ от сервера
      final response = await dio.get(
          'https://runrushapi.pp.ua/api/sneaker/inventories?dress_status=DRESSED&earned_amount_ordering=LOWER&offset=0');

      if (response.statusCode == 200) {
        // Преобразовать данные в строку JSON и вывести в консоль
        final jsonResponse = json.encode(response.data);
        debugPrint(jsonResponse);
      } else {
        // Если произошла ошибка, выведите сообщение об ошибке
        debugPrint('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      // Обработайте ошибку, если она возникла при выполнении запроса
      debugPrint('Error fetching data: $e');
    }
  }
}
