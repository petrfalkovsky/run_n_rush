import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/domain/core/extended_errors.dart';
import 'package:riverside/domain/qr_code/qr_code.dart';

part 'qr_dto.g.dart';

@JsonSerializable()
class OpenLockBody {
  OpenLockBody({
    required this.qrCode,
    required this.resId,
  });

  factory OpenLockBody.fromJson(Map<String, dynamic> json) =>
      _$OpenLockBodyFromJson(json);
  Map<String, dynamic> toJson() => _$OpenLockBodyToJson(this);

  @JsonKey(name: 'qr_code')
  final int qrCode;
  @JsonKey(name: 'res_id')
  final String resId;
}

@JsonSerializable()
class QRCodeDto {
  QRCodeDto({
    this.lock1,
    this.lock2,
    this.lock3,
    this.error,
  });
  factory QRCodeDto.fromJson(Map<String, dynamic> json) =>
      _$QRCodeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$QRCodeDtoToJson(this);

  @JsonKey(name: 'Lock 1')
  final String? lock1;
  @JsonKey(name: 'Lock 2')
  final String? lock2;
  @JsonKey(name: 'Lock 3')
  final String? lock3;
  final String? error;
}

extension QRCodeDtoX on QRCodeDto {
  Either<ExtendedErrors, QRCode> toDomain() {
    try {
      if (error != null) {
        return Left(ExtendedErrors.empty());
      }
      final domain = QRCode(
        lock1: lock1 ?? '',
        lock2: lock2 ?? '',
        lock3: lock3 ?? '',
      );

      return Right(domain);
    } on Exception catch (e) {
      // Возвращаем исключение
      return left(ExtendedErrors.simple(e.toString()));
    }
  }
}
