import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:riverside/data/repository/remote/src/http/dio_builder.dart';
import 'package:riverside/data/repository/remote/src/http/rest_client.dart';

@prod
@lazySingleton
class ApiClient {
  ApiClient({IDioProvider? dioProvider}) : _dio = dioProvider ?? GetIt.I.get();
  RestClient? _client;
  final IDioProvider _dio;

  RestClient getClient() {
    if (_client != null) {
      return _client!;
    }

    final client = RestClient(_dio.dio);
    return client;
  }
}
