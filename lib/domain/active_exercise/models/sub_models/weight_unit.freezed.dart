// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'weight_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WeightUnit _$WeightUnitFromJson(Map<String, dynamic> json) {
  return _WeightUnit.fromJson(json);
}

class _$WeightUnitTearOff {
  const _$WeightUnitTearOff();

  _WeightUnit call({@required String name}) {
    return _WeightUnit(
      name: name,
    );
  }
}

// ignore: unused_element
const $WeightUnit = _$WeightUnitTearOff();

mixin _$WeightUnit {
  String get name;

  Map<String, dynamic> toJson();
  $WeightUnitCopyWith<WeightUnit> get copyWith;
}

abstract class $WeightUnitCopyWith<$Res> {
  factory $WeightUnitCopyWith(
          WeightUnit value, $Res Function(WeightUnit) then) =
      _$WeightUnitCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$WeightUnitCopyWithImpl<$Res> implements $WeightUnitCopyWith<$Res> {
  _$WeightUnitCopyWithImpl(this._value, this._then);

  final WeightUnit _value;
  // ignore: unused_field
  final $Res Function(WeightUnit) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$WeightUnitCopyWith<$Res> implements $WeightUnitCopyWith<$Res> {
  factory _$WeightUnitCopyWith(
          _WeightUnit value, $Res Function(_WeightUnit) then) =
      __$WeightUnitCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

class __$WeightUnitCopyWithImpl<$Res> extends _$WeightUnitCopyWithImpl<$Res>
    implements _$WeightUnitCopyWith<$Res> {
  __$WeightUnitCopyWithImpl(
      _WeightUnit _value, $Res Function(_WeightUnit) _then)
      : super(_value, (v) => _then(v as _WeightUnit));

  @override
  _WeightUnit get _value => super._value as _WeightUnit;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_WeightUnit(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_WeightUnit implements _WeightUnit {
  const _$_WeightUnit({@required this.name}) : assert(name != null);

  factory _$_WeightUnit.fromJson(Map<String, dynamic> json) =>
      _$_$_WeightUnitFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'WeightUnit(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeightUnit &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$WeightUnitCopyWith<_WeightUnit> get copyWith =>
      __$WeightUnitCopyWithImpl<_WeightUnit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeightUnitToJson(this);
  }
}

abstract class _WeightUnit implements WeightUnit {
  const factory _WeightUnit({@required String name}) = _$_WeightUnit;

  factory _WeightUnit.fromJson(Map<String, dynamic> json) =
      _$_WeightUnit.fromJson;

  @override
  String get name;
  @override
  _$WeightUnitCopyWith<_WeightUnit> get copyWith;
}
