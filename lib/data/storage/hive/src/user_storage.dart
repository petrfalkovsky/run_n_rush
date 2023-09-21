import 'package:hive/hive.dart';

// идентификатор типа адаптера (может быть ТОЛЬКО любым уникальным числом)
@HiveType(typeId: 0)
class UserStorage {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String firstName;

  @HiveField(2)
  final String lastName;

  @HiveField(3)
  final String email;

  @HiveField(4)
  final String avatarUrl;

  UserStorage({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatarUrl,
  });
}

class UserStorageAdapter extends TypeAdapter<UserStorage> {
  // идентификатор типа адаптера (может быть ТОЛЬКО любым уникальным числом)
  @override
  final typeId = 0;

  @override
  UserStorage read(BinaryReader reader) {
    // десериализация данных из Hive
    final id = reader.readString();
    final firstName = reader.readString();
    final lastName = reader.readString();
    final email = reader.readString();
    final avatarUrl = reader.readString();

    return UserStorage(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      avatarUrl: avatarUrl,
    );
  }

  @override
  void write(BinaryWriter writer, UserStorage obj) {
    // сериализация данных в Hive
    writer.writeString(obj.id);
    writer.writeString(obj.firstName);
    writer.writeString(obj.lastName);
    writer.writeString(obj.email);
    writer.writeString(obj.avatarUrl);
  }
}
