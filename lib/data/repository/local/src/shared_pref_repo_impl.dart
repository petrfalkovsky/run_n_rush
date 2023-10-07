// ignore_for_file: override_on_non_overriding_member

import 'package:injectable/injectable.dart';
import 'package:run_n_rush/data/repository/local/local_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

///// ЭТОТ ФАЙЛ БОЛЬШЕНЕ НУЖен потому что реализовал через hive

/// Имплементация локального репозитория
/// как адаптера к Preference
@prod
@LazySingleton(
    as:

        /// ///// ЭТОТ  БОЛЬШЕ НЕ НУЖНО потому что локальный репозиторий реализован иначе
        LocalRepository)
class SharedPreferenceRepositoryImpl
    implements

        /// ///// ЭТОТ  БОЛЬШЕ НЕ НУЖНО потому что локальный репозиторий реализован иначе
        LocalRepository {
  SharedPreferences? _pref;

  static const _accessToken = 'accessToken';
  static const _refreshToken = 'refreshToken';

  @override
  Future<String> writeAccessToken(String s) async {
    _saveString(_accessToken, s);
    return s;
  }

  @override
  Future<String> readAccessToken() async {
    return Future.value(_getString(_accessToken));
  }

  @override
  Future<String> writeRefreshToken(String s) async {
    _saveString(_refreshToken, s);
    return s;
  }

  @override
  Future<String> readRefreshToken() async {
    return Future.value(_getString(_refreshToken));
  }

  //////////////////////////////////////////////////////////////////////////////

  Future _init() async {
    _pref ??= await SharedPreferences.getInstance();
    return;
  }

  Future _saveString(String key, String data) async {
    await _init();
    await _pref?.setString(key, data);
  }

  Future<String> _getString(String key, {String? def}) async {
    return _init().then((_) => _pref?.getString(key) ?? def ?? '');
  }

  // Future _saveBool(String key, bool data) async {
  //   await _init();
  //   await _pref?.setBool(key, data);
  // }

  // Future<bool> _getBool(String key, {bool? def}) async {
  //   return _init().then((_) => _pref?.getBool(key) ?? def ?? false);
  // }

  // Future _saveInt(String key, int data) async {
  //   await _init();
  //   await _pref?.setInt(key, data);
  // }

  // Future<int> _getInt(String key) async {
  //   return _init().then((_) => _pref?.getInt(key) ?? 0);
  // }

  // ~ Спрячем базовый интерфейс
}
