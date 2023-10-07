// ignore_for_file: unused_import

export 'src/shared_pref_repo_impl.dart';

/// ///// ЭТОТ  БОЛЬШЕ НЕ НУЖНО потому что локальный репозиторий реализован иначе
/// Абстракция локального репозитория.
/// [saveProfileDtoString] / [getProfileDtoString]:
///   Предположим - локальный репозиторий манипулирует профилями, как строками.
abstract class LocalRepository {
  // Future writeUserData(ProfileInfo profileInfo);
  // Future<ProfileInfo> readUserData();
  // Future<String> writeAccessToken(String s);
  // Future<String> readAccessToken();
  // Future<String> writeRefreshToken(String s);
  // Future<String> readRefreshToken();
}
