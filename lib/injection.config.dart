// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'package:run_n_rush/data/repository/local/local_repository.dart' as _i8;
import 'package:run_n_rush/data/repository/local/src/shared_pref_repo_impl.dart'
    as _i9;
import 'package:run_n_rush/data/repository/remote/remote_repository.dart'
    as _i13;
import 'package:run_n_rush/data/repository/remote/src/http/api_client.dart'
    as _i4;
import 'package:run_n_rush/data/repository/remote/src/http/dio_builder.dart'
    as _i5;
import 'package:run_n_rush/data/repository/remote/src/remote_remote_repo_impl.dart'
    as _i14;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i4.ApiClient>(
      () => _i4.ApiClient(dioProvider: get<_i5.IDioProvider>()),
      registerFor: {_prod});
  gh.lazySingleton<_i5.IDioProvider>(
      () => _i5.DioBuilder(repo: get<_i8.LocalRepository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i8.LocalRepository>(
      () => _i9.SharedPreferenceRepositoryImpl(),
      registerFor: {_prod});
  gh.lazySingleton<_i13.RemoteRepository>(
      () => _i14.MockRemoteRepositoryImpl(apiClient: get<_i4.ApiClient>()),
      registerFor: {_prod});
  return get;
}
