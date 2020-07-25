// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'active_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActiveExerciseTearOff {
  const _$ActiveExerciseTearOff();

  _ActiveExercise call(
      {@required UniqueId id,
      @required List<ExerciseSet> sets,
      @required int repsTempo,
      @required Exercise exercise}) {
    return _ActiveExercise(
      id: id,
      sets: sets,
      repsTempo: repsTempo,
      exercise: exercise,
    );
  }
}

// ignore: unused_element
const $ActiveExercise = _$ActiveExerciseTearOff();

mixin _$ActiveExercise {
  UniqueId get id;
  List<ExerciseSet> get sets;
  int get repsTempo;
  Exercise get exercise;

  $ActiveExerciseCopyWith<ActiveExercise> get copyWith;
}

abstract class $ActiveExerciseCopyWith<$Res> {
  factory $ActiveExerciseCopyWith(
          ActiveExercise value, $Res Function(ActiveExercise) then) =
      _$ActiveExerciseCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, List<ExerciseSet> sets, int repsTempo, Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class _$ActiveExerciseCopyWithImpl<$Res>
    implements $ActiveExerciseCopyWith<$Res> {
  _$ActiveExerciseCopyWithImpl(this._value, this._then);

  final ActiveExercise _value;
  // ignore: unused_field
  final $Res Function(ActiveExercise) _then;

  @override
  $Res call({
    Object id = freezed,
    Object sets = freezed,
    Object repsTempo = freezed,
    Object exercise = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      sets: sets == freezed ? _value.sets : sets as List<ExerciseSet>,
      repsTempo: repsTempo == freezed ? _value.repsTempo : repsTempo as int,
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get exercise {
    if (_value.exercise == null) {
      return null;
    }
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }
}

abstract class _$ActiveExerciseCopyWith<$Res>
    implements $ActiveExerciseCopyWith<$Res> {
  factory _$ActiveExerciseCopyWith(
          _ActiveExercise value, $Res Function(_ActiveExercise) then) =
      __$ActiveExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, List<ExerciseSet> sets, int repsTempo, Exercise exercise});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

class __$ActiveExerciseCopyWithImpl<$Res>
    extends _$ActiveExerciseCopyWithImpl<$Res>
    implements _$ActiveExerciseCopyWith<$Res> {
  __$ActiveExerciseCopyWithImpl(
      _ActiveExercise _value, $Res Function(_ActiveExercise) _then)
      : super(_value, (v) => _then(v as _ActiveExercise));

  @override
  _ActiveExercise get _value => super._value as _ActiveExercise;

  @override
  $Res call({
    Object id = freezed,
    Object sets = freezed,
    Object repsTempo = freezed,
    Object exercise = freezed,
  }) {
    return _then(_ActiveExercise(
      id: id == freezed ? _value.id : id as UniqueId,
      sets: sets == freezed ? _value.sets : sets as List<ExerciseSet>,
      repsTempo: repsTempo == freezed ? _value.repsTempo : repsTempo as int,
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
    ));
  }
}

class _$_ActiveExercise extends _ActiveExercise {
  const _$_ActiveExercise(
      {@required this.id,
      @required this.sets,
      @required this.repsTempo,
      @required this.exercise})
      : assert(id != null),
        assert(sets != null),
        assert(repsTempo != null),
        assert(exercise != null),
        super._();

  @override
  final UniqueId id;
  @override
  final List<ExerciseSet> sets;
  @override
  final int repsTempo;
  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'ActiveExercise(id: $id, sets: $sets, repsTempo: $repsTempo, exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveExercise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)) &&
            (identical(other.repsTempo, repsTempo) ||
                const DeepCollectionEquality()
                    .equals(other.repsTempo, repsTempo)) &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(repsTempo) ^
      const DeepCollectionEquality().hash(exercise);

  @override
  _$ActiveExerciseCopyWith<_ActiveExercise> get copyWith =>
      __$ActiveExerciseCopyWithImpl<_ActiveExercise>(this, _$identity);
}

abstract class _ActiveExercise extends ActiveExercise {
  const _ActiveExercise._() : super._();
  const factory _ActiveExercise(
      {@required UniqueId id,
      @required List<ExerciseSet> sets,
      @required int repsTempo,
      @required Exercise exercise}) = _$_ActiveExercise;

  @override
  UniqueId get id;
  @override
  List<ExerciseSet> get sets;
  @override
  int get repsTempo;
  @override
  Exercise get exercise;
  @override
  _$ActiveExerciseCopyWith<_ActiveExercise> get copyWith;
}
