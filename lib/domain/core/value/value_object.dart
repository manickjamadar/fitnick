import 'package:dartz/dartz.dart';

import 'value_failure.dart';

abstract class ValueObject<T> {
  final Either<ValueFailure<T>, T> value;
  const ValueObject(this.value);
}
