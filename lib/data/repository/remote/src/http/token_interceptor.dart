import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:run_n_rush/data/storage/hive/src/token_storage.dart';

class TokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final tokenBox = await Hive.openBox<TokenStorage>('tokenBox');
    final token = tokenBox.get('token');
    final access = token?.access;

    if (access != null) {
      options.headers['Authorization'] = 'Bearer $access';
    }

    return super.onRequest(options, handler);
  }
}
