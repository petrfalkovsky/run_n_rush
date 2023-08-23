import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:run_n_rush/core/safe_coding/src/either.dart';
import 'package:run_n_rush/data/%20dto/auth/auth_dto.dart';
import 'package:run_n_rush/domain/auth/user_data.dart';
import 'package:run_n_rush/domain/core/extended_errors.dart';
import 'package:run_n_rush/domain/profile/profile_info.dart';

part 'sign_in.g.dart';

@JsonSerializable()
class SignInBody {
  SignInBody({
    required this.email,
    required this.password,
  });

  factory SignInBody.fromJson(Map<String, dynamic> json) =>
      _$SignInBodyFromJson(json);
  Map<String, dynamic> toJson() => _$SignInBodyToJson(this);

  final String email;
  final String password;
}

extension UserDataDtoX on UserDataDto {
  Either<ExtendedErrors, UserData> toDomain() {
    if (refresh == null) {
      return left(ExtendedErrors.empty());
    }
    try {
      final domain = UserData(
        token: Token(
          refresh: refresh ?? '',
          access: access ?? '',
        ),
        profileInfo: ProfileInfo(
          id: id ?? '',
          email: email ?? '',
          firstName: firstName ?? '',
          lastName: lastName ?? '',
          birthday: birthday ?? '',
          phoneNumber: phoneNumber ?? '',
          dateReceiveToken: DateTime.now().microsecondsSinceEpoch,
        ),
      );

      return Right(domain);
    } on Exception catch (e) {
      // Возвращаем исключение
      return left(ExtendedErrors.simple(e.toString()));
    }
  }
}
