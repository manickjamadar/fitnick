// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'active_workout_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActiveWorkoutFormStateTearOff {
  const _$ActiveWorkoutFormStateTearOff();

  _ActiveWorkoutFormState call(
      {@required bool isEditing,
      @required bool isAdding,
      @required bool shouldShowErrorMessages,
      @required ActiveWorkout activeWorkout,
      @required Option<Either<WorkoutFailure, Unit>> addStatus}) {
    return _ActiveWorkoutFormState(
      isEditing: isEditing,
      isAdding: isAdding,
      shouldShowErrorMessages: shouldShowErrorMessages,
      activeWorkout: activeWorkout,
      addStatus: addStatus,
    );
  }
}

// ignore: unused_element
const $ActiveWorkoutFormState = _$ActiveWorkoutFormStateTearOff();

mixin _$ActiveWorkoutFormState {
  bool get isEditing;
  bool get isAdding;
  bool get shouldShowErrorMessages;
  ActiveWorkout get activeWorkout;
  Option<Either<WorkoutFailure, Unit>> get addStatus;

  $ActiveWorkoutFormStateCopyWith<ActiveWorkoutFormState> get copyWith;
}

abstract class $ActiveWorkoutFormStateCopyWith<$Res> {
  factory $ActiveWorkoutFormStateCopyWith(ActiveWorkoutFormState value,
          $Res Function(ActiveWorkoutFormState) then) =
      _$ActiveWorkoutFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEditing,
      bool isAdding,
      bool shouldShowErrorMessages,
      ActiveWorkout activeWorkout,
      Option<Either<WorkoutFailure, Unit>> addStatus});

  $ActiveWorkoutCopyWith<$Res> get activeWorkout;
}

class _$ActiveWorkoutFormStateCopyWithImpl<$Res>
    implements $ActiveWorkoutFormStateCopyWith<$Res> {
  _$ActiveWorkoutFormStateCopyWithImpl(this._value, this._then);

  final ActiveWorkoutFormState _value;
  // ignore: unused_field
  final $Res Function(ActiveWorkoutFormState) _then;

  @override
  $Res call({
    Object isEditing = freezed,
    Object isAdding = freezed,
    Object shouldShowErrorMessages = freezed,
    Object activeWorkout = freezed,
    Object addStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      shouldShowErrorMessages: shouldShowErrorMessages == freezed
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages as bool,
      activeWorkout: activeWorkout == freezed
          ? _value.activeWorkout
          : activeWorkout as ActiveWorkout,
      addStatus: addStatus == freezed
          ? _value.addStatus
          : addStatus as Option<Either<WorkoutFailure, Unit>>,
    ));
  }

  @override
  $ActiveWorkoutCopyWith<$Res> get activeWorkout {
    if (_value.activeWorkout == null) {
      return null;
    }
    return $ActiveWorkoutCopyWith<$Res>(_value.activeWorkout, (value) {
      return _then(_value.copyWith(activeWorkout: value));
    });
  }
}

abstract class _$ActiveWorkoutFormStateCopyWith<$Res>
    implements $ActiveWorkoutFormStateCopyWith<$Res> {
  factory _$ActiveWorkoutFormStateCopyWith(_ActiveWorkoutFormState value,
          $Res Function(_ActiveWorkoutFormState) then) =
      __$ActiveWorkoutFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEditing,
      bool isAdding,
      bool shouldShowErrorMessages,
      ActiveWorkout activeWorkout,
      Option<Either<WorkoutFailure, Unit>> addStatus});

  @override
  $ActiveWorkoutCopyWith<$Res> get activeWorkout;
}

class __$ActiveWorkoutFormStateCopyWithImpl<$Res>
    extends _$ActiveWorkoutFormStateCopyWithImpl<$Res>
    implements _$ActiveWorkoutFormStateCopyWith<$Res> {
  __$ActiveWorkoutFormStateCopyWithImpl(_ActiveWorkoutFormState _value,
      $Res Function(_ActiveWorkoutFormState) _then)
      : super(_value, (v) => _then(v as _ActiveWorkoutFormState));

  @override
  _ActiveWorkoutFormState get _value => super._value as _ActiveWorkoutFormState;

  @override
  $Res call({
    Object isEditing = freezed,
    Object isAdding = freezed,
    Object shouldShowErrorMessages = freezed,
    Object activeWorkout = freezed,
    Object addStatus = freezed,
  }) {
    return _then(_ActiveWorkoutFormState(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      shouldShowErrorMessages: shouldShowErrorMessages == freezed
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages as bool,
      activeWorkout: activeWorkout == freezed
          ? _value.activeWorkout
          : activeWorkout as ActiveWorkout,
      addStatus: addStatus == freezed
          ? _value.addStatus
          : addStatus as Option<Either<WorkoutFailure, Unit>>,
    ));
  }
}

class _$_ActiveWorkoutFormState extends _ActiveWorkoutFormState {
  const _$_ActiveWorkoutFormState(
      {@required this.isEditing,
      @required this.isAdding,
      @required this.shouldShowErrorMessages,
      @required this.activeWorkout,
      @required this.addStatus})
      : assert(isEditing != null),
        assert(isAdding != null),
        assert(shouldShowErrorMessages != null),
        assert(activeWorkout != null),
        assert(addStatus != null),
        super._();

  @override
  final bool isEditing;
  @override
  final bool isAdding;
  @override
  final bool shouldShowErrorMessages;
  @override
  final ActiveWorkout activeWorkout;
  @override
  final Option<Either<WorkoutFailure, Unit>> addStatus;

  @override
  String toString() {
    return 'ActiveWorkoutFormState(isEditing: $isEditing, isAdding: $isAdding, shouldShowErrorMessages: $shouldShowErrorMessages, activeWorkout: $activeWorkout, addStatus: $addStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveWorkoutFormState &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isAdding, isAdding) ||
                const DeepCollectionEquality()
                    .equals(other.isAdding, isAdding)) &&
            (identical(
                    other.shouldShowErrorMessages, shouldShowErrorMessages) ||
                const DeepCollectionEquality().equals(
                    other.shouldShowErrorMessages, shouldShowErrorMessages)) &&
            (identical(other.activeWorkout, activeWorkout) ||
                const DeepCollectionEquality()
                    .equals(other.activeWorkout, activeWorkout)) &&
            (identical(other.addStatus, addStatus) ||
                const DeepCollectionEquality()
                    .equals(other.addStatus, addStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isAdding) ^
      const DeepCollectionEquality().hash(shouldShowErrorMessages) ^
      const DeepCollectionEquality().hash(activeWorkout) ^
      const DeepCollectionEquality().hash(addStatus);

  @override
  _$ActiveWorkoutFormStateCopyWith<_ActiveWorkoutFormState> get copyWith =>
      __$ActiveWorkoutFormStateCopyWithImpl<_ActiveWorkoutFormState>(
          this, _$identity);
}

abstract class _ActiveWorkoutFormState extends ActiveWorkoutFormState {
  const _ActiveWorkoutFormState._() : super._();
  const factory _ActiveWorkoutFormState(
          {@required bool isEditing,
          @required bool isAdding,
          @required bool shouldShowErrorMessages,
          @required ActiveWorkout activeWorkout,
          @required Option<Either<WorkoutFailure, Unit>> addStatus}) =
      _$_ActiveWorkoutFormState;

  @override
  bool get isEditing;
  @override
  bool get isAdding;
  @override
  bool get shouldShowErrorMessages;
  @override
  ActiveWorkout get activeWorkout;
  @override
  Option<Either<WorkoutFailure, Unit>> get addStatus;
  @override
  _$ActiveWorkoutFormStateCopyWith<_ActiveWorkoutFormState> get copyWith;
}
