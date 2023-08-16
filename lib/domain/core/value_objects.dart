import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverside/core/safe_coding/src/either.dart';
import 'package:riverside/core/safe_coding/src/unit.dart';
import 'package:riverside/domain/core/common_interfaces.dart';
import 'package:riverside/domain/core/failures.dart';
import 'package:riverside/domain/core/value_validators.dart';

/// Базовый класс TypeDD
@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject(this.failureTag);

  final String failureTag;

  Either<ValueFailure<T>, T> get value;

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

////////////////////////////////////////////////////////////////////////////////

/// Просто непустая строка, сверка только на наличие
class NonEmptyString extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NonEmptyString(String input, {required String failureTag}) {
    return NonEmptyString._(
      parseIsNotEmpty(input, failureTag: failureTag),
      failureTag,
    );
  }

  factory NonEmptyString.empty() {
    const tag = '';
    return NonEmptyString._(
        parseIsNotEmpty('', failureTag: 'Empty NonEmptyString'), tag);
  }
  factory NonEmptyString.asMessage(String input) {
    const tag = 'message';
    return NonEmptyString._(parseIsNotEmpty(input, failureTag: tag), tag);
  }

  factory NonEmptyString.asCaptcha(String input) {
    const tag = 'captcha';
    return NonEmptyString._(parseIsNotEmpty(input, failureTag: tag), tag);
  }

  factory NonEmptyString.asCaptchaCode(String input) {
    const tag = 'captcha_code';
    return NonEmptyString._(parseIsNotEmpty(input, failureTag: tag), tag);
  }

  factory NonEmptyString.asCodeFromEmail(String input) {
    const tag = 'code_from_email';
    return NonEmptyString._(parseIsNotEmpty(input, failureTag: tag), tag);
  }
  factory NonEmptyString.asCode2Fa(String input) {
    const tag = 'code_2Fa';
    return NonEmptyString._(parseIsNotEmpty(input, failureTag: tag), tag);
  }

  factory NonEmptyString.asLanguage(String input) {
    const tag = 'language';
    return NonEmptyString._(parseIsNotEmpty(input, failureTag: tag), tag);
  }

  factory NonEmptyString.asOldEmail(String input) {
    return NonEmptyString._(parseIsNotEmpty(input, failureTag: input), input);
  }
  factory NonEmptyString.asNewEmail(String input) {
    return NonEmptyString._(parseIsNotEmpty(input, failureTag: input), input);
  }

  const NonEmptyString._(this.value, String failureTag) : super(failureTag);
}
