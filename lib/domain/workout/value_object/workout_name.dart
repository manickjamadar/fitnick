import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/value/value_failure.dart';
import 'package:fitnick/domain/core/value/value_object.dart';
import 'package:fitnick/domain/core/value/value_validator.dart';

class WorkoutName extends ValueObject<String> {
  const WorkoutName._(Either<ValueFailure<String>, String> value)
      : super(value);
  factory WorkoutName(String input) {
    return WorkoutName._(ValueValidator.validateEmptyString(input));
  }
}
