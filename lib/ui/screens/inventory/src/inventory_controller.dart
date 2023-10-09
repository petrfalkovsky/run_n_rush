import 'dart:async';
import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:run_n_rush/data/dto/sneakers/src/inventory.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class InventoryController extends StatexController {
  final ApiService _apiService = ApiService(Dio());
  final RxList<SneakerInventory> inventoryList = RxList<SneakerInventory>();
  final RxString selectedDressedFilter = RxString('ALL');
  final RxString selectedPriceFilter = RxString('LOWER');
  final RxBool isDressedFilterActive = RxBool(false);
  final RxMap<String, bool> dressedSneakers = RxMap();
  final RxBool isButtonActive = true.obs;

  bool get buttonActive => isButtonActive.value;
  set buttonActive(bool value) => isButtonActive.value = value;

  InventoryController() {
    // todo удалить, так как другой метод написал
    // чтобы при загрузке экрана начали грузится данные
    fetchDataIfChanged();
    // если нет возможности загрузиь данные, то достаем их из хранилища
    loadLocalData();
  }

  // метод, чтобы снять кроссовок
  Future<void> takeOff(String sneakerId) async {
    try {
      final Map<String, dynamic> requestBody = {
        'id': sneakerId,
      };

      final response = await _apiService.takeOff(requestBody);
      // todo благодарочка после снятия

      // todo обновить состояние

      return response;
    } catch (e) {
      rethrow;
    }
  }

  /// метод, чтобы надеть кроссовок
  Future<void> putOn(String sneakerId) async {
    try {
      final Map<String, dynamic> requestBody = {
        'id': sneakerId,
      };

      final response = await _apiService.putOn(requestBody);

      // обновления состояния кнопки после успешного нажатия
      dressedSneakers[sneakerId] = true;

      return response;
    } catch (e) {
      // исключение
      rethrow;
    }
  }

  /// метод для фильтра по надетости
  void setFilter(String filter) async {
    selectedDressedFilter.value = filter;
    await Future.delayed(const Duration(milliseconds: 200));
    isDressedFilterActive.value = filter == 'DRESSED';
  }

  /// метод для фильтра по цене
  void setPriceFilter(String filter) {
    selectedPriceFilter.value = filter;

    /// todo возможно лишнее - удалить и проверить
    fetchDataIfChanged();
  }

  /// Метод для загрузки данных из локального хранилища
  void loadLocalData() async {
    final prefs = await SharedPreferences.getInstance();
    final storedData = prefs.getString('inventory_data');

    if (storedData != null) {
      final List<SneakerInventory> savedInventory =
          (jsonDecode(storedData) as List)
              .map((item) => SneakerInventory.fromJson(item))
              .toList();
      inventoryList.assignAll(savedInventory);
    }
  }

  /// метод для управления состоянием, если есть изменения
  Future<void> fetchDataIfChanged() async {
    final connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none ||
        connectivityResult == ConnectivityResult.other) {
      // Нет интернет-соединения, не загружаем данные
      debugPrint('No internet connection, using local data.');
      return;
    }

    try {
      final response = await _apiService.getSneakerInventories(
        selectedDressedFilter.value,
        selectedPriceFilter.value,
        0,
      );

      // Проверьте, есть ли изменения в данных
      if (!listEquals(inventoryList, response)) {
        inventoryList.assignAll(response);

        // сохраняю данные в локальном хранилище
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('inventory_data', jsonEncode(response));
      }
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
