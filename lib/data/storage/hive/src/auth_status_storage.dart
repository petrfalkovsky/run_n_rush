import 'package:hive/hive.dart';

// идентификатор типа адаптера (может быть ТОЛЬКО любым уникальным числом)
@HiveType(typeId: 1)
class AuthStatus {
  @HiveField(0)
  bool isAuthenticated;

  AuthStatus({
    required this.isAuthenticated,
  });
}

class AuthStatusStorageAdapter extends TypeAdapter<AuthStatus> {
  // идентификатор типа адаптера (может быть ТОЛЬКО любым уникальным числом)
  @override
  final typeId = 1;

  @override
  AuthStatus read(BinaryReader reader) {
    final isAuthenticated = reader.readBool();
    return AuthStatus(isAuthenticated: isAuthenticated);
  }

  @override
  void write(BinaryWriter writer, AuthStatus obj) {
    writer.writeBool(obj.isAuthenticated);
  }
}
