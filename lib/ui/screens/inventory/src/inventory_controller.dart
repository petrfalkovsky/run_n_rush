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
  final RxString selectedDressedFilter = RxString('ALL');
  final RxString selectedPriceFilter = RxString('LOWER');

  InventoryController() {
    /// чтобы при загрузке экрана начали грузится данные
    fetchData();
  }

  /// метод для получения данных с сервера
  Future<void> fetchData() async {
    try {
      final response = await _apiService.getSneakerInventories(
        selectedDressedFilter.value,
        selectedPriceFilter.value,
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

  /// метод для фильтра по надетости
  void setFilter(String filter) {
    selectedDressedFilter.value = filter;
  }

  /// метод для фильтра по цене
  void setPriceFilter(String filter) {
    selectedPriceFilter.value = filter;

    /// todo возможно лишнее - удалить и проверить
    fetchData();
  }
}
