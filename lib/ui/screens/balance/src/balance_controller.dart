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
  final Rxn<GetAccountDto> balance = Rxn<GetAccountDto>();

  BalanceController() {
    /// чтобы при загрузке экрана начали грузится данные
    fetchTransactionData();
    fetchBalanceData();
  }

  /// метод для получения транзакций
  Future<void> fetchTransactionData() async {
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

  /// метод для получения баланса
  Future<void> fetchBalanceData() async {
    try {
      final response = await _apiService.getAccount();

      balance.value = response;

      debugPrint('Account data loaded successfully: $response');
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
