import 'package:dartz/dartz.dart';

import '../../core/value/value_failure.dart';
import '../../core/value/value_object.dart';
import '../../core/value/value_validator.dart';

class ExerciseName extends ValueObject<String> {
  const ExerciseName._(Either<ValueFailure<String>, String> value)
      : super(value);
  factory ExerciseName(String input) {
    return ExerciseName._(ValueValidator.validateEmptyString(input));
  }
}
