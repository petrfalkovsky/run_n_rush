// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:run_n_rush/core/services/access_token_service.dart' as _i3;
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
import 'package:run_n_rush/data/repository/repository.dart' as _i15;
import 'package:run_n_rush/logic/auth/logout_bloc.dart' as _i10;
import 'package:run_n_rush/logic/auth/sign_in_bloc.dart' as _i16;
import 'package:run_n_rush/logic/auth/sign_up_bloc.dart' as _i17;
import 'package:run_n_rush/logic/bookings/bookings_bloc.dart' as _i6;
import 'package:run_n_rush/logic/my_booking/my_bookings_bloc.dart' as _i11;
import 'package:run_n_rush/logic/profile/update_profile_bloc.dart' as _i18;
import 'package:run_n_rush/logic/qr_code/qr_code_bloc.dart' as _i12;
import 'package:run_n_rush/logic/repository/repository.dart' as _i7;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AccessTokenService>(() => _i3.AccessTokenService(),
      registerFor: {_prod});
  gh.lazySingleton<_i4.ApiClient>(
      () => _i4.ApiClient(dioProvider: get<_i5.IDioProvider>()),
      registerFor: {_prod});
  gh.lazySingleton<_i6.BookingsBloc>(
      () => _i6.BookingsBloc(repo: get<_i7.Repository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i5.IDioProvider>(
      () => _i5.DioBuilder(repo: get<_i8.LocalRepository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i8.LocalRepository>(
      () => _i9.SharedPreferenceRepositoryImpl(),
      registerFor: {_prod});
  gh.lazySingleton<_i10.LogoutBloc>(
      () => _i10.LogoutBloc(repo: get<_i7.Repository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i11.MyBookingsBloc>(
      () => _i11.MyBookingsBloc(repo: get<_i7.Repository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i12.QRCodeBloc>(
      () => _i12.QRCodeBloc(repo: get<_i7.Repository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i13.RemoteRepository>(
      () => _i14.MockRemoteRepositoryImpl(apiClient: get<_i4.ApiClient>()),
      registerFor: {_prod});
  gh.lazySingleton<_i7.Repository>(
      () => _i15.RepositoryImpl(
          get<_i8.LocalRepository>(), get<_i13.RemoteRepository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i16.SignInBloc>(
      () => _i16.SignInBloc(repo: get<_i7.Repository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i17.SignUpBloc>(
      () => _i17.SignUpBloc(repo: get<_i7.Repository>()),
      registerFor: {_prod});
  gh.lazySingleton<_i18.UpdateProfileBloc>(
      () => _i18.UpdateProfileBloc(repo: get<_i7.Repository>()),
      registerFor: {_prod});
  return get;
}
