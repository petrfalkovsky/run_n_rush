import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Trans, Response;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:riverside/app_config.dart';
import 'package:riverside/core/services/app_logger.dart';
import 'package:riverside/data/repository/local/local_repository.dart';
import 'package:riverside/ui/router/routing.dart';
import 'package:riverside/ui/shared/alert.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';

abstract class IDioProvider {
  Dio get dio;

  String get baseUrl;
}

@prod
@LazySingleton(as: IDioProvider)
class DioBuilder implements IDioProvider {
  DioBuilder({
    LocalRepository? repo,
  }) : repoLocal = repo ?? GetIt.I.get();

  final LocalRepository repoLocal;

  Dio? _dio;

  @override
  String get baseUrl => dio.options.baseUrl;

  @override
  Dio get dio => _dio ??= _buildDio();

  Dio _buildDio() {
    final options = BaseOptions(baseUrl: AppConfig.apiEndpoint);
    final dio = Dio(options);
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        await _setHeaders(options);
        log(
          '${options.method} ${options.uri.toString()}\n${options.headers}\n${options.extra}\n DATA:${options.data}',
          name: 'HTTP REQUEST',
        );

        return handler.next(options);
      },
      onResponse: (response, handler) async {
        final respString = response.toString();
        log(respString,
            // respString.substring(
            //   0,
            //   respString.length > 100 ? 100 : respString.length - 1,
            // ),
            name: 'HTTP RESPONSE');
        return handler.next(response);
      },
      onError: _onError,
    ));

    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };

    dio.options.headers = headers;
    return dio;
  }

  Future _onError(DioError e, handler) async {
    loggerSimple
        .i('DioBuilder._onError: ${e.response} / ${e.response?.statusCode}');
    return _resolveErrorForClient(e.response?.statusCode ?? -1, e, handler);
  }

  /// Помощь для передачи разного рода ошибок клиенту
  /// Передается код и ендпойнт
  Future _resolveErrorForClient(int statusCode, DioError e, handler) async {
    final errors =
        e.response?.data as Map<String, dynamic>? ?? <String, dynamic>{};

    loggerSimple.i('DioBuilder._resolveErrorForClient: errors.1=$errors');

    // В случае облома авторизации выходим!
    // Но не отправляем reject, чтобы не нарушать систему ошибок
    if ([400].contains(statusCode)) {
      alert(
        value: '${errors.values.first}',
        color: AppColors.notification.error,
      );
    }
    if ([401].contains(statusCode)) {
      alert(
        value: '${errors.values.first}',
        color: AppColors.notification.error,
      );

      Get.offAllNamed(AppRoutes.authWelcome);

      return;
    }

    /// Тут можно добавлять ошибки, которые чисто DIO
    if ([500].contains(statusCode)) {
      alert(
        value: 'Ошибка сервера [$statusCode]',
        color: AppColors.notification.error,
      );
      Get.offAllNamed(AppRoutes.authWelcome);
    }

    final respNew = Response(
        requestOptions:
            e.response?.requestOptions ?? RequestOptions(path: 'unknown path'),
        data: <String, dynamic>{
          'status': false,
          'error': errors.values.first,
        });
    return handler.resolve(respNew);
  }

  Future _setHeaders(RequestOptions options) async {
    final token = await repoLocal.readAccessToken();

    // loggerSimple.i('DioBuilder._setHeaders: token=$token');
    if (token != '') {
      options.headers['Authorization'] = 'Bearer $token';
    }
    // loggerSimple.i('DioBuilder._setHeaders: ${options.headers}');
  }
}
