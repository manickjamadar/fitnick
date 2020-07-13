// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutFormEventTearOff {
  const _$WorkoutFormEventTearOff();

  _WorkoutFormInit init(Option<Workout> workoutOption) {
    return _WorkoutFormInit(
      workoutOption,
    );
  }

  _WorkoutNameChanged nameChanged({@required String name}) {
    return _WorkoutNameChanged(
      name: name,
    );
  }

  _WorkoutExerciseAdded exerciseAdded({@required Exercise exercise}) {
    return _WorkoutExerciseAdded(
      exercise: exercise,
    );
  }

  _WorkoutExerciseRemoved exerciseRemoved({@required UniqueId exerciseId}) {
    return _WorkoutExerciseRemoved(
      exerciseId: exerciseId,
    );
  }

  _WorkoutSaved saved() {
    return const _WorkoutSaved();
  }
}

// ignore: unused_element
const $WorkoutFormEvent = _$WorkoutFormEventTearOff();

mixin _$WorkoutFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Workout> workoutOption),
    @required Result nameChanged(String name),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseRemoved(UniqueId exerciseId),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Workout> workoutOption),
    Result nameChanged(String name),
    Result exerciseAdded(Exercise exercise),
    Result exerciseRemoved(UniqueId exerciseId),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_WorkoutFormInit value),
    @required Result nameChanged(_WorkoutNameChanged value),
    @required Result exerciseAdded(_WorkoutExerciseAdded value),
    @required Result exerciseRemoved(_WorkoutExerciseRemoved value),
    @required Result saved(_WorkoutSaved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutFormInit value),
    Result nameChanged(_WorkoutNameChanged value),
    Result exerciseAdded(_WorkoutExerciseAdded value),
    Result exerciseRemoved(_WorkoutExerciseRemoved value),
    Result saved(_WorkoutSaved value),
    @required Result orElse(),
  });
}

abstract class $WorkoutFormEventCopyWith<$Res> {
  factory $WorkoutFormEventCopyWith(
          WorkoutFormEvent value, $Res Function(WorkoutFormEvent) then) =
      _$WorkoutFormEventCopyWithImpl<$Res>;
}

class _$WorkoutFormEventCopyWithImpl<$Res>
    implements $WorkoutFormEventCopyWith<$Res> {
  _$WorkoutFormEventCopyWithImpl(this._value, this._then);

  final WorkoutFormEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutFormEvent) _then;
}

abstract class _$WorkoutFormInitCopyWith<$Res> {
  factory _$WorkoutFormInitCopyWith(
          _WorkoutFormInit value, $Res Function(_WorkoutFormInit) then) =
      __$WorkoutFormInitCopyWithImpl<$Res>;
  $Res call({Option<Workout> workoutOption});
}

class __$WorkoutFormInitCopyWithImpl<$Res>
    extends _$WorkoutFormEventCopyWithImpl<$Res>
    implements _$WorkoutFormInitCopyWith<$Res> {
  __$WorkoutFormInitCopyWithImpl(
      _WorkoutFormInit _value, $Res Function(_WorkoutFormInit) _then)
      : super(_value, (v) => _then(v as _WorkoutFormInit));

  @override
  _WorkoutFormInit get _value => super._value as _WorkoutFormInit;

  @override
  $Res call({
    Object workoutOption = freezed,
  }) {
    return _then(_WorkoutFormInit(
      workoutOption == freezed
          ? _value.workoutOption
          : workoutOption as Option<Workout>,
    ));
  }
}

class _$_WorkoutFormInit implements _WorkoutFormInit {
  const _$_WorkoutFormInit(this.workoutOption) : assert(workoutOption != null);

  @override
  final Option<Workout> workoutOption;

  @override
  String toString() {
    return 'WorkoutFormEvent.init(workoutOption: $workoutOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutFormInit &&
            (identical(other.workoutOption, workoutOption) ||
                const DeepCollectionEquality()
                    .equals(other.workoutOption, workoutOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workoutOption);

  @override
  _$WorkoutFormInitCopyWith<_WorkoutFormInit> get copyWith =>
      __$WorkoutFormInitCopyWithImpl<_WorkoutFormInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Workout> workoutOption),
    @required Result nameChanged(String name),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseRemoved(UniqueId exerciseId),
    @required Result saved(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return init(workoutOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Workout> workoutOption),
    Result nameChanged(String name),
    Result exerciseAdded(Exercise exercise),
    Result exerciseRemoved(UniqueId exerciseId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(workoutOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_WorkoutFormInit value),
    @required Result nameChanged(_WorkoutNameChanged value),
    @required Result exerciseAdded(_WorkoutExerciseAdded value),
    @required Result exerciseRemoved(_WorkoutExerciseRemoved value),
    @required Result saved(_WorkoutSaved value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutFormInit value),
    Result nameChanged(_WorkoutNameChanged value),
    Result exerciseAdded(_WorkoutExerciseAdded value),
    Result exerciseRemoved(_WorkoutExerciseRemoved value),
    Result saved(_WorkoutSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _WorkoutFormInit implements WorkoutFormEvent {
  const factory _WorkoutFormInit(Option<Workout> workoutOption) =
      _$_WorkoutFormInit;

  Option<Workout> get workoutOption;
  _$WorkoutFormInitCopyWith<_WorkoutFormInit> get copyWith;
}

abstract class _$WorkoutNameChangedCopyWith<$Res> {
  factory _$WorkoutNameChangedCopyWith(
          _WorkoutNameChanged value, $Res Function(_WorkoutNameChanged) then) =
      __$WorkoutNameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$WorkoutNameChangedCopyWithImpl<$Res>
    extends _$WorkoutFormEventCopyWithImpl<$Res>
    implements _$WorkoutNameChangedCopyWith<$Res> {
  __$WorkoutNameChangedCopyWithImpl(
      _WorkoutNameChanged _value, $Res Function(_WorkoutNameChanged) _then)
      : super(_value, (v) => _then(v as _WorkoutNameChanged));

  @override
  _WorkoutNameChanged get _value => super._value as _WorkoutNameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_WorkoutNameChanged(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_WorkoutNameChanged implements _WorkoutNameChanged {
  const _$_WorkoutNameChanged({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'WorkoutFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutNameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$WorkoutNameChangedCopyWith<_WorkoutNameChanged> get copyWith =>
      __$WorkoutNameChangedCopyWithImpl<_WorkoutNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Workout> workoutOption),
    @required Result nameChanged(String name),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseRemoved(UniqueId exerciseId),
    @required Result saved(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Workout> workoutOption),
    Result nameChanged(String name),
    Result exerciseAdded(Exercise exercise),
    Result exerciseRemoved(UniqueId exerciseId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_WorkoutFormInit value),
    @required Result nameChanged(_WorkoutNameChanged value),
    @required Result exerciseAdded(_WorkoutExerciseAdded value),
    @required Result exerciseRemoved(_WorkoutExerciseRemoved value),
    @required Result saved(_WorkoutSaved value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutFormInit value),
    Result nameChanged(_WorkoutNameChanged value),
    Result exerciseAdded(_WorkoutExerciseAdded value),
    Result exerciseRemoved(_WorkoutExerciseRemoved value),
    Result saved(_WorkoutSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _WorkoutNameChanged implements WorkoutFormEvent {
  const factory _WorkoutNameChanged({@required String name}) =
      _$_WorkoutNameChanged;

  String get name;
  _$WorkoutNameChangedCopyWith<_WorkoutNameChanged> get copyWith;
}

abstract class _$WorkoutExerciseAddedCopyWith<$Res> {
  factory _$WorkoutExerciseAddedCopyWith(_WorkoutExerciseAdded value,
          $Res Function(_WorkoutExerciseAdded) then) =
      __$WorkoutExerciseAddedCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class __$WorkoutExerciseAddedCopyWithImpl<$Res>
    extends _$WorkoutFormEventCopyWithImpl<$Res>
    implements _$WorkoutExerciseAddedCopyWith<$Res> {
  __$WorkoutExerciseAddedCopyWithImpl(
      _WorkoutExerciseAdded _value, $Res Function(_WorkoutExerciseAdded) _then)
      : super(_value, (v) => _then(v as _WorkoutExerciseAdded));

  @override
  _WorkoutExerciseAdded get _value => super._value as _WorkoutExerciseAdded;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_WorkoutExerciseAdded(
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

class _$_WorkoutExerciseAdded implements _WorkoutExerciseAdded {
  const _$_WorkoutExerciseAdded({@required this.exercise})
      : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'WorkoutFormEvent.exerciseAdded(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutExerciseAdded &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$WorkoutExerciseAddedCopyWith<_WorkoutExerciseAdded> get copyWith =>
      __$WorkoutExerciseAddedCopyWithImpl<_WorkoutExerciseAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Workout> workoutOption),
    @required Result nameChanged(String name),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseRemoved(UniqueId exerciseId),
    @required Result saved(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return exerciseAdded(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Workout> workoutOption),
    Result nameChanged(String name),
    Result exerciseAdded(Exercise exercise),
    Result exerciseRemoved(UniqueId exerciseId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseAdded != null) {
      return exerciseAdded(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_WorkoutFormInit value),
    @required Result nameChanged(_WorkoutNameChanged value),
    @required Result exerciseAdded(_WorkoutExerciseAdded value),
    @required Result exerciseRemoved(_WorkoutExerciseRemoved value),
    @required Result saved(_WorkoutSaved value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return exerciseAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutFormInit value),
    Result nameChanged(_WorkoutNameChanged value),
    Result exerciseAdded(_WorkoutExerciseAdded value),
    Result exerciseRemoved(_WorkoutExerciseRemoved value),
    Result saved(_WorkoutSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseAdded != null) {
      return exerciseAdded(this);
    }
    return orElse();
  }
}

abstract class _WorkoutExerciseAdded implements WorkoutFormEvent {
  const factory _WorkoutExerciseAdded({@required Exercise exercise}) =
      _$_WorkoutExerciseAdded;

  Exercise get exercise;
  _$WorkoutExerciseAddedCopyWith<_WorkoutExerciseAdded> get copyWith;
}

abstract class _$WorkoutExerciseRemovedCopyWith<$Res> {
  factory _$WorkoutExerciseRemovedCopyWith(_WorkoutExerciseRemoved value,
          $Res Function(_WorkoutExerciseRemoved) then) =
      __$WorkoutExerciseRemovedCopyWithImpl<$Res>;
  $Res call({UniqueId exerciseId});
}

class __$WorkoutExerciseRemovedCopyWithImpl<$Res>
    extends _$WorkoutFormEventCopyWithImpl<$Res>
    implements _$WorkoutExerciseRemovedCopyWith<$Res> {
  __$WorkoutExerciseRemovedCopyWithImpl(_WorkoutExerciseRemoved _value,
      $Res Function(_WorkoutExerciseRemoved) _then)
      : super(_value, (v) => _then(v as _WorkoutExerciseRemoved));

  @override
  _WorkoutExerciseRemoved get _value => super._value as _WorkoutExerciseRemoved;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(_WorkoutExerciseRemoved(
      exerciseId:
          exerciseId == freezed ? _value.exerciseId : exerciseId as UniqueId,
    ));
  }
}

class _$_WorkoutExerciseRemoved implements _WorkoutExerciseRemoved {
  const _$_WorkoutExerciseRemoved({@required this.exerciseId})
      : assert(exerciseId != null);

  @override
  final UniqueId exerciseId;

  @override
  String toString() {
    return 'WorkoutFormEvent.exerciseRemoved(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutExerciseRemoved &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  _$WorkoutExerciseRemovedCopyWith<_WorkoutExerciseRemoved> get copyWith =>
      __$WorkoutExerciseRemovedCopyWithImpl<_WorkoutExerciseRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Workout> workoutOption),
    @required Result nameChanged(String name),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseRemoved(UniqueId exerciseId),
    @required Result saved(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return exerciseRemoved(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Workout> workoutOption),
    Result nameChanged(String name),
    Result exerciseAdded(Exercise exercise),
    Result exerciseRemoved(UniqueId exerciseId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseRemoved != null) {
      return exerciseRemoved(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_WorkoutFormInit value),
    @required Result nameChanged(_WorkoutNameChanged value),
    @required Result exerciseAdded(_WorkoutExerciseAdded value),
    @required Result exerciseRemoved(_WorkoutExerciseRemoved value),
    @required Result saved(_WorkoutSaved value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return exerciseRemoved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutFormInit value),
    Result nameChanged(_WorkoutNameChanged value),
    Result exerciseAdded(_WorkoutExerciseAdded value),
    Result exerciseRemoved(_WorkoutExerciseRemoved value),
    Result saved(_WorkoutSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseRemoved != null) {
      return exerciseRemoved(this);
    }
    return orElse();
  }
}

abstract class _WorkoutExerciseRemoved implements WorkoutFormEvent {
  const factory _WorkoutExerciseRemoved({@required UniqueId exerciseId}) =
      _$_WorkoutExerciseRemoved;

  UniqueId get exerciseId;
  _$WorkoutExerciseRemovedCopyWith<_WorkoutExerciseRemoved> get copyWith;
}

abstract class _$WorkoutSavedCopyWith<$Res> {
  factory _$WorkoutSavedCopyWith(
          _WorkoutSaved value, $Res Function(_WorkoutSaved) then) =
      __$WorkoutSavedCopyWithImpl<$Res>;
}

class __$WorkoutSavedCopyWithImpl<$Res>
    extends _$WorkoutFormEventCopyWithImpl<$Res>
    implements _$WorkoutSavedCopyWith<$Res> {
  __$WorkoutSavedCopyWithImpl(
      _WorkoutSaved _value, $Res Function(_WorkoutSaved) _then)
      : super(_value, (v) => _then(v as _WorkoutSaved));

  @override
  _WorkoutSaved get _value => super._value as _WorkoutSaved;
}

class _$_WorkoutSaved implements _WorkoutSaved {
  const _$_WorkoutSaved();

  @override
  String toString() {
    return 'WorkoutFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WorkoutSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Workout> workoutOption),
    @required Result nameChanged(String name),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseRemoved(UniqueId exerciseId),
    @required Result saved(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Workout> workoutOption),
    Result nameChanged(String name),
    Result exerciseAdded(Exercise exercise),
    Result exerciseRemoved(UniqueId exerciseId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_WorkoutFormInit value),
    @required Result nameChanged(_WorkoutNameChanged value),
    @required Result exerciseAdded(_WorkoutExerciseAdded value),
    @required Result exerciseRemoved(_WorkoutExerciseRemoved value),
    @required Result saved(_WorkoutSaved value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(exerciseAdded != null);
    assert(exerciseRemoved != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutFormInit value),
    Result nameChanged(_WorkoutNameChanged value),
    Result exerciseAdded(_WorkoutExerciseAdded value),
    Result exerciseRemoved(_WorkoutExerciseRemoved value),
    Result saved(_WorkoutSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _WorkoutSaved implements WorkoutFormEvent {
  const factory _WorkoutSaved() = _$_WorkoutSaved;
}

class _$WorkoutFormStateTearOff {
  const _$WorkoutFormStateTearOff();

  _WorkoutFormState call(
      {@required bool isEditing,
      @required bool isAdding,
      @required bool shouldShowErrorMessages,
      @required Workout workout,
      @required Option<Either<WorkoutFailure, Unit>> addStatus}) {
    return _WorkoutFormState(
      isEditing: isEditing,
      isAdding: isAdding,
      shouldShowErrorMessages: shouldShowErrorMessages,
      workout: workout,
      addStatus: addStatus,
    );
  }
}

// ignore: unused_element
const $WorkoutFormState = _$WorkoutFormStateTearOff();

mixin _$WorkoutFormState {
  bool get isEditing;
  bool get isAdding;
  bool get shouldShowErrorMessages;
  Workout get workout;
  Option<Either<WorkoutFailure, Unit>> get addStatus;

  $WorkoutFormStateCopyWith<WorkoutFormState> get copyWith;
}

abstract class $WorkoutFormStateCopyWith<$Res> {
  factory $WorkoutFormStateCopyWith(
          WorkoutFormState value, $Res Function(WorkoutFormState) then) =
      _$WorkoutFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEditing,
      bool isAdding,
      bool shouldShowErrorMessages,
      Workout workout,
      Option<Either<WorkoutFailure, Unit>> addStatus});

  $WorkoutCopyWith<$Res> get workout;
}

class _$WorkoutFormStateCopyWithImpl<$Res>
    implements $WorkoutFormStateCopyWith<$Res> {
  _$WorkoutFormStateCopyWithImpl(this._value, this._then);

  final WorkoutFormState _value;
  // ignore: unused_field
  final $Res Function(WorkoutFormState) _then;

  @override
  $Res call({
    Object isEditing = freezed,
    Object isAdding = freezed,
    Object shouldShowErrorMessages = freezed,
    Object workout = freezed,
    Object addStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      shouldShowErrorMessages: shouldShowErrorMessages == freezed
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages as bool,
      workout: workout == freezed ? _value.workout : workout as Workout,
      addStatus: addStatus == freezed
          ? _value.addStatus
          : addStatus as Option<Either<WorkoutFailure, Unit>>,
    ));
  }

  @override
  $WorkoutCopyWith<$Res> get workout {
    if (_value.workout == null) {
      return null;
    }
    return $WorkoutCopyWith<$Res>(_value.workout, (value) {
      return _then(_value.copyWith(workout: value));
    });
  }
}

abstract class _$WorkoutFormStateCopyWith<$Res>
    implements $WorkoutFormStateCopyWith<$Res> {
  factory _$WorkoutFormStateCopyWith(
          _WorkoutFormState value, $Res Function(_WorkoutFormState) then) =
      __$WorkoutFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEditing,
      bool isAdding,
      bool shouldShowErrorMessages,
      Workout workout,
      Option<Either<WorkoutFailure, Unit>> addStatus});

  @override
  $WorkoutCopyWith<$Res> get workout;
}

class __$WorkoutFormStateCopyWithImpl<$Res>
    extends _$WorkoutFormStateCopyWithImpl<$Res>
    implements _$WorkoutFormStateCopyWith<$Res> {
  __$WorkoutFormStateCopyWithImpl(
      _WorkoutFormState _value, $Res Function(_WorkoutFormState) _then)
      : super(_value, (v) => _then(v as _WorkoutFormState));

  @override
  _WorkoutFormState get _value => super._value as _WorkoutFormState;

  @override
  $Res call({
    Object isEditing = freezed,
    Object isAdding = freezed,
    Object shouldShowErrorMessages = freezed,
    Object workout = freezed,
    Object addStatus = freezed,
  }) {
    return _then(_WorkoutFormState(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      shouldShowErrorMessages: shouldShowErrorMessages == freezed
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages as bool,
      workout: workout == freezed ? _value.workout : workout as Workout,
      addStatus: addStatus == freezed
          ? _value.addStatus
          : addStatus as Option<Either<WorkoutFailure, Unit>>,
    ));
  }
}

class _$_WorkoutFormState extends _WorkoutFormState {
  const _$_WorkoutFormState(
      {@required this.isEditing,
      @required this.isAdding,
      @required this.shouldShowErrorMessages,
      @required this.workout,
      @required this.addStatus})
      : assert(isEditing != null),
        assert(isAdding != null),
        assert(shouldShowErrorMessages != null),
        assert(workout != null),
        assert(addStatus != null),
        super._();

  @override
  final bool isEditing;
  @override
  final bool isAdding;
  @override
  final bool shouldShowErrorMessages;
  @override
  final Workout workout;
  @override
  final Option<Either<WorkoutFailure, Unit>> addStatus;

  @override
  String toString() {
    return 'WorkoutFormState(isEditing: $isEditing, isAdding: $isAdding, shouldShowErrorMessages: $shouldShowErrorMessages, workout: $workout, addStatus: $addStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutFormState &&
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
            (identical(other.workout, workout) ||
                const DeepCollectionEquality()
                    .equals(other.workout, workout)) &&
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
      const DeepCollectionEquality().hash(workout) ^
      const DeepCollectionEquality().hash(addStatus);

  @override
  _$WorkoutFormStateCopyWith<_WorkoutFormState> get copyWith =>
      __$WorkoutFormStateCopyWithImpl<_WorkoutFormState>(this, _$identity);
}

abstract class _WorkoutFormState extends WorkoutFormState {
  const _WorkoutFormState._() : super._();
  const factory _WorkoutFormState(
          {@required bool isEditing,
          @required bool isAdding,
          @required bool shouldShowErrorMessages,
          @required Workout workout,
          @required Option<Either<WorkoutFailure, Unit>> addStatus}) =
      _$_WorkoutFormState;

  @override
  bool get isEditing;
  @override
  bool get isAdding;
  @override
  bool get shouldShowErrorMessages;
  @override
  Workout get workout;
  @override
  Option<Either<WorkoutFailure, Unit>> get addStatus;
  @override
  _$WorkoutFormStateCopyWith<_WorkoutFormState> get copyWith;
}
