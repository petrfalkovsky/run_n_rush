import 'package:run_n_rush/core/safe_coding/src/either.dart';
import 'package:run_n_rush/domain/core/failures.dart';

/// Валидирование строки, как EMail
Either<ValueFailure<String>, String> validateEmail(String input,
    {required String failureTag}) {
  const emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
        ValueFailure.invalidEmail(failedValue: input, failureTag: failureTag));
  }
}

///
Either<ValueFailure<String>, String> validateCode(String input,
    {required String failureTag}) {
  const length = 4;

  if (input.length == length) {
    return right(input);
  } else {
    return left(
        ValueFailure.invalidCode(failedValue: input, failureTag: failureTag));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input,
    {required String failureTag}) {
  const length = 6;

  if (input.length == length) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(
        failedValue: input, failureTag: failureTag));
  }
}

Either<ValueFailure<String>, String> parseLengthNotEqual(
    String input, int length,
    {required String failureTag}) {
  if (input.length == length) {
    return right(input);
  }
  return left(ValueFailure.lengthNotEqual(
      failedValue: input, length: length, failureTag: failureTag));
}

Either<ValueFailure<String>, String> parseTooShort(String input, int minLength,
    {required String failureTag}) {
  if (input.length >= minLength) {
    return right(input);
  }
  return left(ValueFailure.tooShort(
      failedValue: input, minLength: minLength, failureTag: failureTag));
}

/// Проверка на то, что строка непустая
Either<ValueFailure<String>, String> parseIsNotEmpty(String input,
    {required String failureTag}) {
  if (input.isNotEmpty) {
    return right(input);
  }
  return left(ValueFailure.empty(failedValue: '', failureTag: failureTag));
}
