// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_perform_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExercisePerformType _$ExercisePerformTypeFromJson(Map<String, dynamic> json) {
  return _PerformType.fromJson(json);
}

class _$ExercisePerformTypeTearOff {
  const _$ExercisePerformTypeTearOff();

  _PerformType call({@required String name}) {
    return _PerformType(
      name: name,
    );
  }
}

// ignore: unused_element
const $ExercisePerformType = _$ExercisePerformTypeTearOff();

mixin _$ExercisePerformType {
  String get name;

  Map<String, dynamic> toJson();
  $ExercisePerformTypeCopyWith<ExercisePerformType> get copyWith;
}

abstract class $ExercisePerformTypeCopyWith<$Res> {
  factory $ExercisePerformTypeCopyWith(
          ExercisePerformType value, $Res Function(ExercisePerformType) then) =
      _$ExercisePerformTypeCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$ExercisePerformTypeCopyWithImpl<$Res>
    implements $ExercisePerformTypeCopyWith<$Res> {
  _$ExercisePerformTypeCopyWithImpl(this._value, this._then);

  final ExercisePerformType _value;
  // ignore: unused_field
  final $Res Function(ExercisePerformType) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$PerformTypeCopyWith<$Res>
    implements $ExercisePerformTypeCopyWith<$Res> {
  factory _$PerformTypeCopyWith(
          _PerformType value, $Res Function(_PerformType) then) =
      __$PerformTypeCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

class __$PerformTypeCopyWithImpl<$Res>
    extends _$ExercisePerformTypeCopyWithImpl<$Res>
    implements _$PerformTypeCopyWith<$Res> {
  __$PerformTypeCopyWithImpl(
      _PerformType _value, $Res Function(_PerformType) _then)
      : super(_value, (v) => _then(v as _PerformType));

  @override
  _PerformType get _value => super._value as _PerformType;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_PerformType(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_PerformType implements _PerformType {
  const _$_PerformType({@required this.name}) : assert(name != null);

  factory _$_PerformType.fromJson(Map<String, dynamic> json) =>
      _$_$_PerformTypeFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ExercisePerformType(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PerformType &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$PerformTypeCopyWith<_PerformType> get copyWith =>
      __$PerformTypeCopyWithImpl<_PerformType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PerformTypeToJson(this);
  }
}

abstract class _PerformType implements ExercisePerformType {
  const factory _PerformType({@required String name}) = _$_PerformType;

  factory _PerformType.fromJson(Map<String, dynamic> json) =
      _$_PerformType.fromJson;

  @override
  String get name;
  @override
  _$PerformTypeCopyWith<_PerformType> get copyWith;
}
