
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class AuthStatus {
  @HiveField(0)
  bool isAuthenticated;

  AuthStatus({
    required this.isAuthenticated,
  });
}

class AuthStatusAdapter extends TypeAdapter<AuthStatus> {
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
