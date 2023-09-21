import 'package:hive/hive.dart';

// идентификатор типа адаптера (может быть ТОЛЬКО любым уникальным числом)
@HiveType(typeId: 2)
class TokenStorage {
  @HiveField(0)
  final String access;

  @HiveField(1)
  final String refresh;

  TokenStorage({
    required this.access,
    required this.refresh,
  });
}

class TokenStorageAdapter extends TypeAdapter<TokenStorage> {
  // идентификатор типа адаптера (может быть ТОЛЬКО любым уникальным числом)
  @override
  final typeId = 2;

  @override
  TokenStorage read(BinaryReader reader) {
    // десериализация данных из Hive
    final access = reader.readString();
    final refresh = reader.readString();

    return TokenStorage(
      access: access,
      refresh: refresh,
    );
  }

  @override
  void write(BinaryWriter writer, TokenStorage obj) {
    // сериализация данных в Hive
    writer.writeString(obj.access);
    writer.writeString(obj.refresh);
  }
}
