import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class InventoryController extends StatexController {
  final ApiService _apiService = ApiService(Dio());
  final RxList<SneakerInventory> inventoryList = RxList<SneakerInventory>();

  Future<void> fetchData() async {
    try {
      final response = await _apiService.getSneakerInventories(
        'ALL',
        'LOWER',
        0,
      );

      inventoryList.assignAll(response);
      // debugPrint('Inventory data loaded successfully: $response');
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
