import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
// ignore: unused_import
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class InventoryController extends StatexController {
  final ApiService _apiService = ApiService(Dio());
  final RxList<SneakerInventory> inventoryList = RxList<SneakerInventory>();

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  Future<void> fetchData() async {
    try {
      final response = await _apiService.getSneakerInventories(
        'DRESSED',
        'LOWER',
        0,
      );

      if (response.isNotEmpty) {
        inventoryList.assignAll(response);
        debugPrint('Inventory data loaded successfully: $response');
      } else {
        debugPrint('No inventory data found in the response');
      }
    } catch (e) {
      if (e is DioException) {
        debugPrint('DioException: ${e.message}');
        if (e.response != null) {
          debugPrint('Response data: ${e.response!.data}');
        }
      } else {
        debugPrint('Error fetching data: $e');
      }
    }
  }
}

// class InventoryController extends StatexController {
//   final Dio dio = Dio();
//   final RxList<SneakerInventory> inventoryList = RxList<SneakerInventory>();

//   @override
//   void onInit() {
//     // Вызовите метод для загрузки данных с сервера
//     loadInventoryData();
//     super.onInit();
//   }

  // // Метод для загрузки данных с сервера
  // Future<void> loadInventoryData() async {
  //   // try {
  //   dio.options.headers = {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer $accessToken',
  //   };

  //   final response = await dio.get(
  //       'https://runrushapi.pp.ua/api/sneaker/inventories?dress_status=DRESSED&earned_amount_ordering=LOWER&offset=0');

  //   if (response.statusCode == 200) {
  //     print('прив ${response.data}');
  //     // Преобразуйте данные из серверного ответа в список объектов SneakerInventory
  //     final List<SneakerInventory> inventoryData =
  //         (response.data as List<dynamic>)
  //             .map((jsonData) => SneakerInventory.fromJson(jsonData))
  //             .toList();
  //     print('прив2 ${inventoryData}');

  //     // Обновите список inventoryList
  //     inventoryList.assignAll(inventoryData);

  //     // Выведите данные в консоль для проверки
  //     print(inventoryData);
  //   } else {
  //     // Если произошла ошибка, выведите сообщение об ошибке
  //     print('Request failed with status: ${response.statusCode}');
  //   }
  //   // } catch (e) {
  //   //   print("Error loading inventory data: $e");
  //   // }
  // }
// }
