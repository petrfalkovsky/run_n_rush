// ignore_for_file: unused_import

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/global_instans.dart/app_globals.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/repository/remote/src/http/api_service.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

class ReferralController extends StatexController {
  final ApiService _apiService = ApiService(Dio());
  Rxn referralsCount = Rxn();
  Rxn balance = Rxn();
  Rxn greeting = Rxn();
  Rxn code = Rxn();

  ReferralController() {
    getReferralProfile();
  }

  // метод для получения реферальных данных по юзеру на экран
  Future<void> getReferralProfile() async {
    final response =
        await getDataAndHandleError(() => _apiService.getReferralProfile());

    if (response != null) {
      referralsCount.value = response.referralsCount;
      balance.value = response.balance;
      greeting.value = response.greeting;
      code.value = response.code;
    }
  }

  // метод для получения реферальных данных по юзеру на экран
  Future<void> referallRewards() async {
    final response =
        await getDataAndHandleError(() => _apiService.referallRewards());

    if (response != null) {
      // referralsCount.value = response.referralsCount;
      // balance.value = response.balance;
      // greeting.value = response.greeting;
      // code.value = response.referrerID;
    }
  }
}
