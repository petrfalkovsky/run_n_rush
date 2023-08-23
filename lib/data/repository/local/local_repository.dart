import 'package:run_n_rush/domain/profile/profile_info.dart';

export 'src/shared_pref_repo_impl.dart';

/// Абстракция локального репозитория.
/// [saveProfileDtoString] / [getProfileDtoString]:
///   Предположим - локальный репозиторий манипулирует профилями, как строками.
abstract class LocalRepository {
  Future writeUserData(ProfileInfo profileInfo);
  Future<ProfileInfo> readUserData();
  Future<String> writeAccessToken(String s);
  Future<String> readAccessToken();
  Future<String> writeRefreshToken(String s);
  Future<String> readRefreshToken();
}
