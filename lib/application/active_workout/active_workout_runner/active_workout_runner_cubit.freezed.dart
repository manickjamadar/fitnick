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
      {@required Option<ActiveWorkout> activeWorkoutOption,
      @required int currentActiveExerciseIndex,
      @required int currentSetIndex,
      @required Duration totalTimeSpent,
      @required bool isCompleted}) {
    return _ActiveWorkoutRunnerState(
      activeWorkoutOption: activeWorkoutOption,
      currentActiveExerciseIndex: currentActiveExerciseIndex,
      currentSetIndex: currentSetIndex,
      totalTimeSpent: totalTimeSpent,
      isCompleted: isCompleted,
    );
  }
}

// ignore: unused_element
const $ActiveWorkoutRunnerState = _$ActiveWorkoutRunnerStateTearOff();

mixin _$ActiveWorkoutRunnerState {
  Option<ActiveWorkout> get activeWorkoutOption;
  int get currentActiveExerciseIndex;
  int get currentSetIndex;
  Duration get totalTimeSpent;
  bool get isCompleted;

  $ActiveWorkoutRunnerStateCopyWith<ActiveWorkoutRunnerState> get copyWith;
}

abstract class $ActiveWorkoutRunnerStateCopyWith<$Res> {
  factory $ActiveWorkoutRunnerStateCopyWith(ActiveWorkoutRunnerState value,
          $Res Function(ActiveWorkoutRunnerState) then) =
      _$ActiveWorkoutRunnerStateCopyWithImpl<$Res>;
  $Res call(
      {Option<ActiveWorkout> activeWorkoutOption,
      int currentActiveExerciseIndex,
      int currentSetIndex,
      Duration totalTimeSpent,
      bool isCompleted});
}

class _$ActiveWorkoutRunnerStateCopyWithImpl<$Res>
    implements $ActiveWorkoutRunnerStateCopyWith<$Res> {
  _$ActiveWorkoutRunnerStateCopyWithImpl(this._value, this._then);

  final ActiveWorkoutRunnerState _value;
  // ignore: unused_field
  final $Res Function(ActiveWorkoutRunnerState) _then;

  @override
  $Res call({
    Object activeWorkoutOption = freezed,
    Object currentActiveExerciseIndex = freezed,
    Object currentSetIndex = freezed,
    Object totalTimeSpent = freezed,
    Object isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
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
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
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
      {Option<ActiveWorkout> activeWorkoutOption,
      int currentActiveExerciseIndex,
      int currentSetIndex,
      Duration totalTimeSpent,
      bool isCompleted});
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
    Object activeWorkoutOption = freezed,
    Object currentActiveExerciseIndex = freezed,
    Object currentSetIndex = freezed,
    Object totalTimeSpent = freezed,
    Object isCompleted = freezed,
  }) {
    return _then(_ActiveWorkoutRunnerState(
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
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
    ));
  }
}

class _$_ActiveWorkoutRunnerState extends _ActiveWorkoutRunnerState {
  const _$_ActiveWorkoutRunnerState(
      {@required this.activeWorkoutOption,
      @required this.currentActiveExerciseIndex,
      @required this.currentSetIndex,
      @required this.totalTimeSpent,
      @required this.isCompleted})
      : assert(activeWorkoutOption != null),
        assert(currentActiveExerciseIndex != null),
        assert(currentSetIndex != null),
        assert(totalTimeSpent != null),
        assert(isCompleted != null),
        super._();

  @override
  final Option<ActiveWorkout> activeWorkoutOption;
  @override
  final int currentActiveExerciseIndex;
  @override
  final int currentSetIndex;
  @override
  final Duration totalTimeSpent;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'ActiveWorkoutRunnerState(activeWorkoutOption: $activeWorkoutOption, currentActiveExerciseIndex: $currentActiveExerciseIndex, currentSetIndex: $currentSetIndex, totalTimeSpent: $totalTimeSpent, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveWorkoutRunnerState &&
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
                    .equals(other.totalTimeSpent, totalTimeSpent)) &&
            (identical(other.isCompleted, isCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isCompleted, isCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(activeWorkoutOption) ^
      const DeepCollectionEquality().hash(currentActiveExerciseIndex) ^
      const DeepCollectionEquality().hash(currentSetIndex) ^
      const DeepCollectionEquality().hash(totalTimeSpent) ^
      const DeepCollectionEquality().hash(isCompleted);

  @override
  _$ActiveWorkoutRunnerStateCopyWith<_ActiveWorkoutRunnerState> get copyWith =>
      __$ActiveWorkoutRunnerStateCopyWithImpl<_ActiveWorkoutRunnerState>(
          this, _$identity);
}

abstract class _ActiveWorkoutRunnerState extends ActiveWorkoutRunnerState {
  const _ActiveWorkoutRunnerState._() : super._();
  const factory _ActiveWorkoutRunnerState(
      {@required Option<ActiveWorkout> activeWorkoutOption,
      @required int currentActiveExerciseIndex,
      @required int currentSetIndex,
      @required Duration totalTimeSpent,
      @required bool isCompleted}) = _$_ActiveWorkoutRunnerState;

  @override
  Option<ActiveWorkout> get activeWorkoutOption;
  @override
  int get currentActiveExerciseIndex;
  @override
  int get currentSetIndex;
  @override
  Duration get totalTimeSpent;
  @override
  bool get isCompleted;
  @override
  _$ActiveWorkoutRunnerStateCopyWith<_ActiveWorkoutRunnerState> get copyWith;
}
