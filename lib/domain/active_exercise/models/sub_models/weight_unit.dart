import 'package:freezed_annotation/freezed_annotation.dart';

part "weight_unit.freezed.dart";
part "weight_unit.g.dart";

@freezed
abstract class WeightUnit with _$WeightUnit {
  const factory WeightUnit({@required String name}) = _WeightUnit;
  factory WeightUnit.fromJson(Map<String, dynamic> json) =>
      _$WeightUnitFromJson(json);
  static const kg = const WeightUnit(name: "Kg");
  static const lbs = const WeightUnit(name: "Lbs");
  static const all = [kg, lbs];
}
