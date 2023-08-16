import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail.freezed.dart';

@freezed
class Detail with _$Detail {
  const factory Detail({
    required String detail,
    required String success,
  }) = _Detail;
}
