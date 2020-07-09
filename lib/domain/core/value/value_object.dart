import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/core/errors.dart';

import 'value_failure.dart';

abstract class ValueObject<T> {
  final Either<ValueFailure<T>, T> value;
  const ValueObject(this.value);
  bool get isValid => value.isRight();
  T get safeValue => value.fold((l) => throw UnexpectedValueError(l), id);
}
