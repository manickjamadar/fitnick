// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'active_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActiveWorkoutTearOff {
  const _$ActiveWorkoutTearOff();

  _ActiveWorkout call(
      {@required UniqueId id,
      @required WorkoutName name,
      @required Color color,
      @required Option<String> imagePath,
      @required List<ActiveExercise> activeExercises}) {
    return _ActiveWorkout(
      id: id,
      name: name,
      color: color,
      imagePath: imagePath,
      activeExercises: activeExercises,
    );
  }
}

// ignore: unused_element
const $ActiveWorkout = _$ActiveWorkoutTearOff();

mixin _$ActiveWorkout {
  UniqueId get id;
  WorkoutName get name;
  Color get color;
  Option<String> get imagePath;
  List<ActiveExercise> get activeExercises;

  $ActiveWorkoutCopyWith<ActiveWorkout> get copyWith;
}

abstract class $ActiveWorkoutCopyWith<$Res> {
  factory $ActiveWorkoutCopyWith(
          ActiveWorkout value, $Res Function(ActiveWorkout) then) =
      _$ActiveWorkoutCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      WorkoutName name,
      Color color,
      Option<String> imagePath,
      List<ActiveExercise> activeExercises});
}

class _$ActiveWorkoutCopyWithImpl<$Res>
    implements $ActiveWorkoutCopyWith<$Res> {
  _$ActiveWorkoutCopyWithImpl(this._value, this._then);

  final ActiveWorkout _value;
  // ignore: unused_field
  final $Res Function(ActiveWorkout) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
    Object imagePath = freezed,
    Object activeExercises = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as WorkoutName,
      color: color == freezed ? _value.color : color as Color,
      imagePath:
          imagePath == freezed ? _value.imagePath : imagePath as Option<String>,
      activeExercises: activeExercises == freezed
          ? _value.activeExercises
          : activeExercises as List<ActiveExercise>,
    ));
  }
}

abstract class _$ActiveWorkoutCopyWith<$Res>
    implements $ActiveWorkoutCopyWith<$Res> {
  factory _$ActiveWorkoutCopyWith(
          _ActiveWorkout value, $Res Function(_ActiveWorkout) then) =
      __$ActiveWorkoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      WorkoutName name,
      Color color,
      Option<String> imagePath,
      List<ActiveExercise> activeExercises});
}

class __$ActiveWorkoutCopyWithImpl<$Res>
    extends _$ActiveWorkoutCopyWithImpl<$Res>
    implements _$ActiveWorkoutCopyWith<$Res> {
  __$ActiveWorkoutCopyWithImpl(
      _ActiveWorkout _value, $Res Function(_ActiveWorkout) _then)
      : super(_value, (v) => _then(v as _ActiveWorkout));

  @override
  _ActiveWorkout get _value => super._value as _ActiveWorkout;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
    Object imagePath = freezed,
    Object activeExercises = freezed,
  }) {
    return _then(_ActiveWorkout(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as WorkoutName,
      color: color == freezed ? _value.color : color as Color,
      imagePath:
          imagePath == freezed ? _value.imagePath : imagePath as Option<String>,
      activeExercises: activeExercises == freezed
          ? _value.activeExercises
          : activeExercises as List<ActiveExercise>,
    ));
  }
}

class _$_ActiveWorkout extends _ActiveWorkout with DiagnosticableTreeMixin {
  const _$_ActiveWorkout(
      {@required this.id,
      @required this.name,
      @required this.color,
      @required this.imagePath,
      @required this.activeExercises})
      : assert(id != null),
        assert(name != null),
        assert(color != null),
        assert(imagePath != null),
        assert(activeExercises != null),
        super._();

  @override
  final UniqueId id;
  @override
  final WorkoutName name;
  @override
  final Color color;
  @override
  final Option<String> imagePath;
  @override
  final List<ActiveExercise> activeExercises;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActiveWorkout(id: $id, name: $name, color: $color, imagePath: $imagePath, activeExercises: $activeExercises)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActiveWorkout'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('activeExercises', activeExercises));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveWorkout &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.activeExercises, activeExercises) ||
                const DeepCollectionEquality()
                    .equals(other.activeExercises, activeExercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(activeExercises);

  @override
  _$ActiveWorkoutCopyWith<_ActiveWorkout> get copyWith =>
      __$ActiveWorkoutCopyWithImpl<_ActiveWorkout>(this, _$identity);
}

abstract class _ActiveWorkout extends ActiveWorkout {
  const _ActiveWorkout._() : super._();
  const factory _ActiveWorkout(
      {@required UniqueId id,
      @required WorkoutName name,
      @required Color color,
      @required Option<String> imagePath,
      @required List<ActiveExercise> activeExercises}) = _$_ActiveWorkout;

  @override
  UniqueId get id;
  @override
  WorkoutName get name;
  @override
  Color get color;
  @override
  Option<String> get imagePath;
  @override
  List<ActiveExercise> get activeExercises;
  @override
  _$ActiveWorkoutCopyWith<_ActiveWorkout> get copyWith;
}
