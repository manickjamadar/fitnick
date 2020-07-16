import 'package:freezed_annotation/freezed_annotation.dart';
part "value_failure.freezed.dart";

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({@required T invalidValue}) = _Empty<T>;
  const factory ValueFailure.optionNotSelected({@required T invalidValue}) =
      _OptionNotSelected<T>;
}

String getValueFailureMessage(ValueFailure failure) {
  return failure.when(
      empty: (_) => "Invalid Empty value",
      optionNotSelected: (_) => "Option Not Selected");
}
