import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/data/%20dto/auth/auth_dto.dart';
import 'package:riverside/domain/auth/detail.dart';
import 'package:riverside/domain/core/extended_errors.dart';

part 'detail.g.dart';

@JsonSerializable()
class LogoutBody {
  LogoutBody({
    required this.refresh,
  });

  factory LogoutBody.fromJson(Map<String, dynamic> json) =>
      _$LogoutBodyFromJson(json);
  Map<String, dynamic> toJson() => _$LogoutBodyToJson(this);

  final String refresh;
}

@JsonSerializable()
class ResetPasswordBody {
  ResetPasswordBody({
    required this.email,
  });

  factory ResetPasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ResetPasswordBodyToJson(this);

  final String email;
}

@JsonSerializable()
class ChangePasswordBody {
  ChangePasswordBody({
    required this.oldPassword,
    required this.newPassword,
  });

  factory ChangePasswordBody.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ChangePasswordBodyToJson(this);
  @JsonKey(name: 'old_password')
  final String oldPassword;
  @JsonKey(name: 'new_password')
  final String newPassword;
}

extension DetailDtoX on DetailDto {
  Either<ExtendedErrors, Detail> toDomain() {
    try {
      if (success == null) {
        return left(ExtendedErrors.empty());
      }

      final domain = Detail(
        detail: detail ?? '',
        success: success ?? '',
      );

      return Right(domain);
    } on Error catch (e) {
      return left(ExtendedErrors.simple(e.toString()));
    } on Exception catch (e) {
      return left(ExtendedErrors.simple(e.toString()));
    }
  }
}
