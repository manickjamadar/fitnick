// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutTearOff {
  const _$WorkoutTearOff();

  _Workout call(
      {@required UniqueId id,
      @required WorkoutName name,
      @required List<Exercise> exercises}) {
    return _Workout(
      id: id,
      name: name,
      exercises: exercises,
    );
  }
}

// ignore: unused_element
const $Workout = _$WorkoutTearOff();

mixin _$Workout {
  UniqueId get id;
  WorkoutName get name;
  List<Exercise> get exercises;

  $WorkoutCopyWith<Workout> get copyWith;
}

abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res>;
  $Res call({UniqueId id, WorkoutName name, List<Exercise> exercises});
}

class _$WorkoutCopyWithImpl<$Res> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  final Workout _value;
  // ignore: unused_field
  final $Res Function(Workout) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object exercises = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as WorkoutName,
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

abstract class _$WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$WorkoutCopyWith(_Workout value, $Res Function(_Workout) then) =
      __$WorkoutCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, WorkoutName name, List<Exercise> exercises});
}

class __$WorkoutCopyWithImpl<$Res> extends _$WorkoutCopyWithImpl<$Res>
    implements _$WorkoutCopyWith<$Res> {
  __$WorkoutCopyWithImpl(_Workout _value, $Res Function(_Workout) _then)
      : super(_value, (v) => _then(v as _Workout));

  @override
  _Workout get _value => super._value as _Workout;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object exercises = freezed,
  }) {
    return _then(_Workout(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as WorkoutName,
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

class _$_Workout extends _Workout with DiagnosticableTreeMixin {
  const _$_Workout(
      {@required this.id, @required this.name, @required this.exercises})
      : assert(id != null),
        assert(name != null),
        assert(exercises != null),
        super._();

  @override
  final UniqueId id;
  @override
  final WorkoutName name;
  @override
  final List<Exercise> exercises;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Workout(id: $id, name: $name, exercises: $exercises)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Workout'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('exercises', exercises));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Workout &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(exercises);

  @override
  _$WorkoutCopyWith<_Workout> get copyWith =>
      __$WorkoutCopyWithImpl<_Workout>(this, _$identity);
}

abstract class _Workout extends Workout {
  const _Workout._() : super._();
  const factory _Workout(
      {@required UniqueId id,
      @required WorkoutName name,
      @required List<Exercise> exercises}) = _$_Workout;

  @override
  UniqueId get id;
  @override
  WorkoutName get name;
  @override
  List<Exercise> get exercises;
  @override
  _$WorkoutCopyWith<_Workout> get copyWith;
}
