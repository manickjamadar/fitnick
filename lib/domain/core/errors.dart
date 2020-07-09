import 'package:fitnick/domain/core/value/value_failure.dart';

class UnexpectedValueError<T> extends Error {
  final ValueFailure<T> valueFailure;
  UnexpectedValueError(this.valueFailure);
  @override
  String toString() {
    return Error.safeToString(
        "Unexpected value error occured and failure was : $valueFailure");
  }
}
