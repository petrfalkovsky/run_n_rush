// ignore_for_file: unused_import

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/dto/account/account.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class BalanceController extends StatexController with StreamSubscriberMixin {
  final ApiService _apiService = ApiService(Dio());
  final RxList<GetTransactionDto> transactionList = RxList<GetTransactionDto>();

  BalanceController() {
    /// чтобы при загрузке экрана начали грузится данные
    fetchData();
  }

  /// метод для получения данных с сервера
  Future<void> fetchData() async {
    try {
      final response = await _apiService.getTransactions();

      transactionList.assignAll(response);
      // debugPrint('TransacionList data loaded successfully: $response');
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
