import 'dart:async';

import 'package:get/get_state_manager/get_state_manager.dart';

/// Упрощение контроля подписок на стримы
///
/// {@tool snippet}
/// ```dart
/// final s = Stream<>
/// subscribeIt(s.listen((event){ ... }))///
///}
/// ```
/// {@end-tool}
///
/// Закрытие и отписка произойдут автоматически при закрытии объекта.
mixin StreamSubscriberMixin on DisposableInterface {
  final _subscriptions = <StreamSubscription>[];

  void subscribeIt(StreamSubscription ss) => _subscriptions.add(ss);

  @override
  void onClose() {
    for (var it in _subscriptions) {
      it.cancel();
    }
    _subscriptions.clear();
    super.onClose();
  }
}
