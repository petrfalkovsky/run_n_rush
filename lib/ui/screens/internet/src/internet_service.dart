import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/repository/local/local_repository.dart';

class InternetScreenService extends GetxService with StreamSubscriberMixin {
  InternetScreenService({
    LocalRepository? repo,
  }) : repoLocal = repo ?? GetIt.I.get();

  final LocalRepository repoLocal;

  final _mounted = false.obs;
  final _connectionStatus = ConnectivityResult.none.obs;

  ConnectivityResult get connectionStatus$ => _connectionStatus();
  Stream<ConnectivityResult> get connectionStatusStream$ =>
      _connectionStatus.stream;
  final Connectivity _connectivity = Connectivity();

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      debugPrint(
        'Couldn\'t check connectivity status $e',
      );
      return;
    }
    debugPrint('RESULT INTERNET $result');
    return _updateConnectionStatus(result);
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    if (_mounted()) {
      return;
    }
    _mounted(true);
    _connectionStatus(result);
    _mounted(false);
  }

  @override
  void onInit() {
    super.onInit();
    debugPrint(' ONINIT INTERNET SERVICE');
    initConnectivity();

    _connectivity.onConnectivityChanged.listen(((event) {
      debugPrint('INTERNET $event');
      _updateConnectionStatus(event);

      if (Get.isDialogOpen ?? false) {
        Get.back();
      }
    }));
  }
}
