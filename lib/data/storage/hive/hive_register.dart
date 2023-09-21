import 'package:hive_flutter/hive_flutter.dart';

import 'hive.dart';

registerHiveAdapters() async {
  await Hive.initFlutter();

  /// все новые боксы надо регистрировать тут
  Hive
    ..registerAdapter(UserStorageAdapter())
    ..registerAdapter(AuthStatusStorageAdapter())
    ..registerAdapter(TokenStorageAdapter());
}
