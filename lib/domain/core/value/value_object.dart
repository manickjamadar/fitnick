import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:fitnick/domain/core/errors.dart';

import 'value_failure.dart';

abstract class ValueObject<T> extends Equatable {
  final Either<ValueFailure<T>, T> value;
  const ValueObject(this.value);
  bool get isValid => value.isRight();
  T get safeValue => value.fold((l) => throw UnexpectedValueError(l), id);
  T get dangerValue => value.fold((l) => l.invalidValue, id);
  @override
  List<Object> get props => [dangerValue];
}
