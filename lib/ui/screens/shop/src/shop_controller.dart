// ignore_for_file: unused_import

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/dto/sneakers/src/shop.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class ShopController extends StatexController with StreamSubscriberMixin {
  var selectedTabIndex = 0.obs;
  final ApiService _apiService = ApiService(Dio());
  final RxList<SneakerShop> sneakerList = RxList<SneakerShop>();
  final RxString selectedPriceFilter = RxString('LOWER');

  ShopController() {
    /// чтобы при загрузке экрана начали грузится данные
    fetchData();
  }

  /// метод для получения данных с сервера, чтобы получить товары на экран
  Future<void> fetchData() async {
    try {
      final response = await _apiService.getSneakerShop(
        selectedPriceFilter.value,
        0,
      );

      sneakerList.assignAll(response);
      // debugPrint('Shop data loaded successfully: $response');
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

  // метод, чтобы купить кроссовок
  Future<void> buySneaker(String sneakerId) async {
    try {
      final Map<String, dynamic> requestBody = {
        'id': sneakerId,
      };

      final response = await _apiService.buySneaker(requestBody);

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
