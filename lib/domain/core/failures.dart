import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  // const factory ValueFailure.empty2({
  //   required T failedValue,
  //   @Default('no_tag') String failureTag,
  // }) = ValueFailureEmpty2<T>;
  const factory ValueFailure.empty({
    required T failedValue,
    required String failureTag,
  }) = ValueFailureEmpty<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
    required String failureTag,
  }) = ValueFailureInvalidEmail<T>;
  const factory ValueFailure.invalidCode({
    required T failedValue,
    required String failureTag,
  }) = ValueFailureInvalidCode<T>;
  const factory ValueFailure.invalidPassword({
    required T failedValue,
    required String failureTag,
  }) = ValueFailureInvalidPassword<T>;
  const factory ValueFailure.tooShort({
    required T failedValue,
    required String failureTag,
    required int minLength,
  }) = ValueFailureTooShort<T>;
  const factory ValueFailure.tooLong({
    required T failedValue,
    required String failureTag,
    required int maxLength,
  }) = ValueFailureTooLong<T>;

  /// Когда значение точно не равно ожидаемой длине
  const factory ValueFailure.lengthNotEqual({
    required T failedValue,
    required String failureTag,
    required int length,
  }) = ValueFailureLengthNotEqual<T>;

  const factory ValueFailure.notMatch({
    required T failedValue,
    required String failureTag,
    required T matcher,
  }) = ValueFailureNotMatch<T>;
}
