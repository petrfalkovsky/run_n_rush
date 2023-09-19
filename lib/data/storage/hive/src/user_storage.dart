import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class User {
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

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatarUrl,
  });
}

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 0; // идентификатор типа (может быть любым уникальным числом)

  @override
  User read(BinaryReader reader) {
    // десериализация данных из Hive
    final id = reader.readString();
    final firstName = reader.readString();
    final lastName = reader.readString();
    final email = reader.readString();
    final avatarUrl = reader.readString();

    return User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      avatarUrl: avatarUrl,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    // Метод для сериализации данных в Hive
    writer.writeString(obj.id);
    writer.writeString(obj.firstName);
    writer.writeString(obj.lastName);
    writer.writeString(obj.email);
    writer.writeString(obj.avatarUrl);
  }
}
