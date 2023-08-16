import 'package:injectable/injectable.dart';
import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/core/safe_coding/src/unit.dart';

@prod
@lazySingleton
class AccessTokenService {
  Future<Either<String, Unit>> refresh([String? refreshToken]) async {
    return const Left('NRY');
  }
}
