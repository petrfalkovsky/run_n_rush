import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_code.freezed.dart';

@freezed
class QRCode with _$QRCode {
  const factory QRCode({
    required String lock1,
    required String lock2,
    required String lock3,
  }) = _QRCode;
}
