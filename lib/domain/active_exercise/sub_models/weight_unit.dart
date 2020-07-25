import 'package:freezed_annotation/freezed_annotation.dart';

part "weight_unit.freezed.dart";

@freezed
abstract class WeightUnit with _$WeightUnit {
  const factory WeightUnit.kg() = _Kg;
  const factory WeightUnit.lbs() = _Lbs;
}
