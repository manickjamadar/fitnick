// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'active_workout_runner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActiveWorkoutRunnerStateTearOff {
  const _$ActiveWorkoutRunnerStateTearOff();

  _ActiveWorkoutRunnerState call(
      {@required bool isCompleted,
      @required Option<ActiveWorkout> activeWorkoutOption,
      @required int currentActiveExerciseIndex,
      @required int currentSetIndex,
      @required Duration totalTimeSpent}) {
    return _ActiveWorkoutRunnerState(
      isCompleted: isCompleted,
      activeWorkoutOption: activeWorkoutOption,
      currentActiveExerciseIndex: currentActiveExerciseIndex,
      currentSetIndex: currentSetIndex,
      totalTimeSpent: totalTimeSpent,
    );
  }
}

// ignore: unused_element
const $ActiveWorkoutRunnerState = _$ActiveWorkoutRunnerStateTearOff();

mixin _$ActiveWorkoutRunnerState {
  bool get isCompleted;
  Option<ActiveWorkout> get activeWorkoutOption;
  int get currentActiveExerciseIndex;
  int get currentSetIndex;
  Duration get totalTimeSpent;

  $ActiveWorkoutRunnerStateCopyWith<ActiveWorkoutRunnerState> get copyWith;
}

abstract class $ActiveWorkoutRunnerStateCopyWith<$Res> {
  factory $ActiveWorkoutRunnerStateCopyWith(ActiveWorkoutRunnerState value,
          $Res Function(ActiveWorkoutRunnerState) then) =
      _$ActiveWorkoutRunnerStateCopyWithImpl<$Res>;
  $Res call(
      {bool isCompleted,
      Option<ActiveWorkout> activeWorkoutOption,
      int currentActiveExerciseIndex,
      int currentSetIndex,
      Duration totalTimeSpent});
}

class _$ActiveWorkoutRunnerStateCopyWithImpl<$Res>
    implements $ActiveWorkoutRunnerStateCopyWith<$Res> {
  _$ActiveWorkoutRunnerStateCopyWithImpl(this._value, this._then);

  final ActiveWorkoutRunnerState _value;
  // ignore: unused_field
  final $Res Function(ActiveWorkoutRunnerState) _then;

  @override
  $Res call({
    Object isCompleted = freezed,
    Object activeWorkoutOption = freezed,
    Object currentActiveExerciseIndex = freezed,
    Object currentSetIndex = freezed,
    Object totalTimeSpent = freezed,
  }) {
    return _then(_value.copyWith(
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
      activeWorkoutOption: activeWorkoutOption == freezed
          ? _value.activeWorkoutOption
          : activeWorkoutOption as Option<ActiveWorkout>,
      currentActiveExerciseIndex: currentActiveExerciseIndex == freezed
          ? _value.currentActiveExerciseIndex
          : currentActiveExerciseIndex as int,
      currentSetIndex: currentSetIndex == freezed
          ? _value.currentSetIndex
          : currentSetIndex as int,
      totalTimeSpent: totalTimeSpent == freezed
          ? _value.totalTimeSpent
          : totalTimeSpent as Duration,
    ));
  }
}

abstract class _$ActiveWorkoutRunnerStateCopyWith<$Res>
    implements $ActiveWorkoutRunnerStateCopyWith<$Res> {
  factory _$ActiveWorkoutRunnerStateCopyWith(_ActiveWorkoutRunnerState value,
          $Res Function(_ActiveWorkoutRunnerState) then) =
      __$ActiveWorkoutRunnerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isCompleted,
      Option<ActiveWorkout> activeWorkoutOption,
      int currentActiveExerciseIndex,
      int currentSetIndex,
      Duration totalTimeSpent});
}

class __$ActiveWorkoutRunnerStateCopyWithImpl<$Res>
    extends _$ActiveWorkoutRunnerStateCopyWithImpl<$Res>
    implements _$ActiveWorkoutRunnerStateCopyWith<$Res> {
  __$ActiveWorkoutRunnerStateCopyWithImpl(_ActiveWorkoutRunnerState _value,
      $Res Function(_ActiveWorkoutRunnerState) _then)
      : super(_value, (v) => _then(v as _ActiveWorkoutRunnerState));

  @override
  _ActiveWorkoutRunnerState get _value =>
      super._value as _ActiveWorkoutRunnerState;

  @override
  $Res call({
    Object isCompleted = freezed,
    Object activeWorkoutOption = freezed,
    Object currentActiveExerciseIndex = freezed,
    Object currentSetIndex = freezed,
    Object totalTimeSpent = freezed,
  }) {
    return _then(_ActiveWorkoutRunnerState(
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
      activeWorkoutOption: activeWorkoutOption == freezed
          ? _value.activeWorkoutOption
          : activeWorkoutOption as Option<ActiveWorkout>,
      currentActiveExerciseIndex: currentActiveExerciseIndex == freezed
          ? _value.currentActiveExerciseIndex
          : currentActiveExerciseIndex as int,
      currentSetIndex: currentSetIndex == freezed
          ? _value.currentSetIndex
          : currentSetIndex as int,
      totalTimeSpent: totalTimeSpent == freezed
          ? _value.totalTimeSpent
          : totalTimeSpent as Duration,
    ));
  }
}

class _$_ActiveWorkoutRunnerState extends _ActiveWorkoutRunnerState {
  const _$_ActiveWorkoutRunnerState(
      {@required this.isCompleted,
      @required this.activeWorkoutOption,
      @required this.currentActiveExerciseIndex,
      @required this.currentSetIndex,
      @required this.totalTimeSpent})
      : assert(isCompleted != null),
        assert(activeWorkoutOption != null),
        assert(currentActiveExerciseIndex != null),
        assert(currentSetIndex != null),
        assert(totalTimeSpent != null),
        super._();

  @override
  final bool isCompleted;
  @override
  final Option<ActiveWorkout> activeWorkoutOption;
  @override
  final int currentActiveExerciseIndex;
  @override
  final int currentSetIndex;
  @override
  final Duration totalTimeSpent;

  @override
  String toString() {
    return 'ActiveWorkoutRunnerState(isCompleted: $isCompleted, activeWorkoutOption: $activeWorkoutOption, currentActiveExerciseIndex: $currentActiveExerciseIndex, currentSetIndex: $currentSetIndex, totalTimeSpent: $totalTimeSpent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveWorkoutRunnerState &&
            (identical(other.isCompleted, isCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isCompleted, isCompleted)) &&
            (identical(other.activeWorkoutOption, activeWorkoutOption) ||
                const DeepCollectionEquality()
                    .equals(other.activeWorkoutOption, activeWorkoutOption)) &&
            (identical(other.currentActiveExerciseIndex,
                    currentActiveExerciseIndex) ||
                const DeepCollectionEquality().equals(
                    other.currentActiveExerciseIndex,
                    currentActiveExerciseIndex)) &&
            (identical(other.currentSetIndex, currentSetIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentSetIndex, currentSetIndex)) &&
            (identical(other.totalTimeSpent, totalTimeSpent) ||
                const DeepCollectionEquality()
                    .equals(other.totalTimeSpent, totalTimeSpent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCompleted) ^
      const DeepCollectionEquality().hash(activeWorkoutOption) ^
      const DeepCollectionEquality().hash(currentActiveExerciseIndex) ^
      const DeepCollectionEquality().hash(currentSetIndex) ^
      const DeepCollectionEquality().hash(totalTimeSpent);

  @override
  _$ActiveWorkoutRunnerStateCopyWith<_ActiveWorkoutRunnerState> get copyWith =>
      __$ActiveWorkoutRunnerStateCopyWithImpl<_ActiveWorkoutRunnerState>(
          this, _$identity);
}

abstract class _ActiveWorkoutRunnerState extends ActiveWorkoutRunnerState {
  const _ActiveWorkoutRunnerState._() : super._();
  const factory _ActiveWorkoutRunnerState(
      {@required bool isCompleted,
      @required Option<ActiveWorkout> activeWorkoutOption,
      @required int currentActiveExerciseIndex,
      @required int currentSetIndex,
      @required Duration totalTimeSpent}) = _$_ActiveWorkoutRunnerState;

  @override
  bool get isCompleted;
  @override
  Option<ActiveWorkout> get activeWorkoutOption;
  @override
  int get currentActiveExerciseIndex;
  @override
  int get currentSetIndex;
  @override
  Duration get totalTimeSpent;
  @override
  _$ActiveWorkoutRunnerStateCopyWith<_ActiveWorkoutRunnerState> get copyWith;
}
