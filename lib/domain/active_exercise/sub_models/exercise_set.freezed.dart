// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseSetTearOff {
  const _$ExerciseSetTearOff();

  _ExerciseSet call(
      {@required UniqueId id,
      @required ExercisePerformType performType,
      @required int performCount,
      @required WeightUnit weightUnit,
      @required int weightCount,
      @required int rest}) {
    return _ExerciseSet(
      id: id,
      performType: performType,
      performCount: performCount,
      weightUnit: weightUnit,
      weightCount: weightCount,
      rest: rest,
    );
  }
}

// ignore: unused_element
const $ExerciseSet = _$ExerciseSetTearOff();

mixin _$ExerciseSet {
  UniqueId get id;
  ExercisePerformType get performType;
  int get performCount;
  WeightUnit get weightUnit;
  int get weightCount;
  int get rest;

  $ExerciseSetCopyWith<ExerciseSet> get copyWith;
}

abstract class $ExerciseSetCopyWith<$Res> {
  factory $ExerciseSetCopyWith(
          ExerciseSet value, $Res Function(ExerciseSet) then) =
      _$ExerciseSetCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ExercisePerformType performType,
      int performCount,
      WeightUnit weightUnit,
      int weightCount,
      int rest});

  $ExercisePerformTypeCopyWith<$Res> get performType;
  $WeightUnitCopyWith<$Res> get weightUnit;
}

class _$ExerciseSetCopyWithImpl<$Res> implements $ExerciseSetCopyWith<$Res> {
  _$ExerciseSetCopyWithImpl(this._value, this._then);

  final ExerciseSet _value;
  // ignore: unused_field
  final $Res Function(ExerciseSet) _then;

  @override
  $Res call({
    Object id = freezed,
    Object performType = freezed,
    Object performCount = freezed,
    Object weightUnit = freezed,
    Object weightCount = freezed,
    Object rest = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      performType: performType == freezed
          ? _value.performType
          : performType as ExercisePerformType,
      performCount:
          performCount == freezed ? _value.performCount : performCount as int,
      weightUnit:
          weightUnit == freezed ? _value.weightUnit : weightUnit as WeightUnit,
      weightCount:
          weightCount == freezed ? _value.weightCount : weightCount as int,
      rest: rest == freezed ? _value.rest : rest as int,
    ));
  }

  @override
  $ExercisePerformTypeCopyWith<$Res> get performType {
    if (_value.performType == null) {
      return null;
    }
    return $ExercisePerformTypeCopyWith<$Res>(_value.performType, (value) {
      return _then(_value.copyWith(performType: value));
    });
  }

  @override
  $WeightUnitCopyWith<$Res> get weightUnit {
    if (_value.weightUnit == null) {
      return null;
    }
    return $WeightUnitCopyWith<$Res>(_value.weightUnit, (value) {
      return _then(_value.copyWith(weightUnit: value));
    });
  }
}

abstract class _$ExerciseSetCopyWith<$Res>
    implements $ExerciseSetCopyWith<$Res> {
  factory _$ExerciseSetCopyWith(
          _ExerciseSet value, $Res Function(_ExerciseSet) then) =
      __$ExerciseSetCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ExercisePerformType performType,
      int performCount,
      WeightUnit weightUnit,
      int weightCount,
      int rest});

  @override
  $ExercisePerformTypeCopyWith<$Res> get performType;
  @override
  $WeightUnitCopyWith<$Res> get weightUnit;
}

class __$ExerciseSetCopyWithImpl<$Res> extends _$ExerciseSetCopyWithImpl<$Res>
    implements _$ExerciseSetCopyWith<$Res> {
  __$ExerciseSetCopyWithImpl(
      _ExerciseSet _value, $Res Function(_ExerciseSet) _then)
      : super(_value, (v) => _then(v as _ExerciseSet));

  @override
  _ExerciseSet get _value => super._value as _ExerciseSet;

  @override
  $Res call({
    Object id = freezed,
    Object performType = freezed,
    Object performCount = freezed,
    Object weightUnit = freezed,
    Object weightCount = freezed,
    Object rest = freezed,
  }) {
    return _then(_ExerciseSet(
      id: id == freezed ? _value.id : id as UniqueId,
      performType: performType == freezed
          ? _value.performType
          : performType as ExercisePerformType,
      performCount:
          performCount == freezed ? _value.performCount : performCount as int,
      weightUnit:
          weightUnit == freezed ? _value.weightUnit : weightUnit as WeightUnit,
      weightCount:
          weightCount == freezed ? _value.weightCount : weightCount as int,
      rest: rest == freezed ? _value.rest : rest as int,
    ));
  }
}

class _$_ExerciseSet extends _ExerciseSet {
  const _$_ExerciseSet(
      {@required this.id,
      @required this.performType,
      @required this.performCount,
      @required this.weightUnit,
      @required this.weightCount,
      @required this.rest})
      : assert(id != null),
        assert(performType != null),
        assert(performCount != null),
        assert(weightUnit != null),
        assert(weightCount != null),
        assert(rest != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ExercisePerformType performType;
  @override
  final int performCount;
  @override
  final WeightUnit weightUnit;
  @override
  final int weightCount;
  @override
  final int rest;

  @override
  String toString() {
    return 'ExerciseSet(id: $id, performType: $performType, performCount: $performCount, weightUnit: $weightUnit, weightCount: $weightCount, rest: $rest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseSet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.performType, performType) ||
                const DeepCollectionEquality()
                    .equals(other.performType, performType)) &&
            (identical(other.performCount, performCount) ||
                const DeepCollectionEquality()
                    .equals(other.performCount, performCount)) &&
            (identical(other.weightUnit, weightUnit) ||
                const DeepCollectionEquality()
                    .equals(other.weightUnit, weightUnit)) &&
            (identical(other.weightCount, weightCount) ||
                const DeepCollectionEquality()
                    .equals(other.weightCount, weightCount)) &&
            (identical(other.rest, rest) ||
                const DeepCollectionEquality().equals(other.rest, rest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(performType) ^
      const DeepCollectionEquality().hash(performCount) ^
      const DeepCollectionEquality().hash(weightUnit) ^
      const DeepCollectionEquality().hash(weightCount) ^
      const DeepCollectionEquality().hash(rest);

  @override
  _$ExerciseSetCopyWith<_ExerciseSet> get copyWith =>
      __$ExerciseSetCopyWithImpl<_ExerciseSet>(this, _$identity);
}

abstract class _ExerciseSet extends ExerciseSet {
  const _ExerciseSet._() : super._();
  const factory _ExerciseSet(
      {@required UniqueId id,
      @required ExercisePerformType performType,
      @required int performCount,
      @required WeightUnit weightUnit,
      @required int weightCount,
      @required int rest}) = _$_ExerciseSet;

  @override
  UniqueId get id;
  @override
  ExercisePerformType get performType;
  @override
  int get performCount;
  @override
  WeightUnit get weightUnit;
  @override
  int get weightCount;
  @override
  int get rest;
  @override
  _$ExerciseSetCopyWith<_ExerciseSet> get copyWith;
}
