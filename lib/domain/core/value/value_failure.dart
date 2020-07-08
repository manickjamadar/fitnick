import 'package:freezed_annotation/freezed_annotation.dart';
part "value_failure.freezed.dart";

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({@required T invalidValue}) = _Empty<T>;
}
