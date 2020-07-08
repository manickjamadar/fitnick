import 'package:dartz/dartz.dart';

import 'value_failure.dart';

class ValueValidator {
  static Either<ValueFailure<String>, String> validateEmptyString(
      String string) {
    return string.isNotEmpty
        ? Right(string)
        : Left(ValueFailure.empty(invalidValue: string));
  }
}
