// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_running_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutRunningEventTearOff {
  const _$WorkoutRunningEventTearOff();

  _Start start({@required Workout workout}) {
    return _Start(
      workout: workout,
    );
  }

  _Next next() {
    return const _Next();
  }

  _Previous previous() {
    return const _Previous();
  }

  _RestToggle restToogle() {
    return const _RestToggle();
  }

  _Complete complete() {
    return const _Complete();
  }

  _RestChanged restChanged() {
    return const _RestChanged();
  }

  _ResetRest resetRest() {
    return const _ResetRest();
  }
}

// ignore: unused_element
const $WorkoutRunningEvent = _$WorkoutRunningEventTearOff();

mixin _$WorkoutRunningEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(Workout workout),
    @required Result next(),
    @required Result previous(),
    @required Result restToogle(),
    @required Result complete(),
    @required Result restChanged(),
    @required Result resetRest(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Workout workout),
    Result next(),
    Result previous(),
    Result restToogle(),
    Result complete(),
    Result restChanged(),
    Result resetRest(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result next(_Next value),
    @required Result previous(_Previous value),
    @required Result restToogle(_RestToggle value),
    @required Result complete(_Complete value),
    @required Result restChanged(_RestChanged value),
    @required Result resetRest(_ResetRest value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result next(_Next value),
    Result previous(_Previous value),
    Result restToogle(_RestToggle value),
    Result complete(_Complete value),
    Result restChanged(_RestChanged value),
    Result resetRest(_ResetRest value),
    @required Result orElse(),
  });
}

abstract class $WorkoutRunningEventCopyWith<$Res> {
  factory $WorkoutRunningEventCopyWith(
          WorkoutRunningEvent value, $Res Function(WorkoutRunningEvent) then) =
      _$WorkoutRunningEventCopyWithImpl<$Res>;
}

class _$WorkoutRunningEventCopyWithImpl<$Res>
    implements $WorkoutRunningEventCopyWith<$Res> {
  _$WorkoutRunningEventCopyWithImpl(this._value, this._then);

  final WorkoutRunningEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutRunningEvent) _then;
}

abstract class _$StartCopyWith<$Res> {
  factory _$StartCopyWith(_Start value, $Res Function(_Start) then) =
      __$StartCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$StartCopyWithImpl<$Res> extends _$WorkoutRunningEventCopyWithImpl<$Res>
    implements _$StartCopyWith<$Res> {
  __$StartCopyWithImpl(_Start _value, $Res Function(_Start) _then)
      : super(_value, (v) => _then(v as _Start));

  @override
  _Start get _value => super._value as _Start;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_Start(
      workout: workout == freezed ? _value.workout : workout as Workout,
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

class _$_Start implements _Start {
  const _$_Start({@required this.workout}) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutRunningEvent.start(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Start &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$StartCopyWith<_Start> get copyWith =>
      __$StartCopyWithImpl<_Start>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(Workout workout),
    @required Result next(),
    @required Result previous(),
    @required Result restToogle(),
    @required Result complete(),
    @required Result restChanged(),
    @required Result resetRest(),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return start(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Workout workout),
    Result next(),
    Result previous(),
    Result restToogle(),
    Result complete(),
    Result restChanged(),
    Result resetRest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result next(_Next value),
    @required Result previous(_Previous value),
    @required Result restToogle(_RestToggle value),
    @required Result complete(_Complete value),
    @required Result restChanged(_RestChanged value),
    @required Result resetRest(_ResetRest value),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result next(_Next value),
    Result previous(_Previous value),
    Result restToogle(_RestToggle value),
    Result complete(_Complete value),
    Result restChanged(_RestChanged value),
    Result resetRest(_ResetRest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _Start implements WorkoutRunningEvent {
  const factory _Start({@required Workout workout}) = _$_Start;

  Workout get workout;
  _$StartCopyWith<_Start> get copyWith;
}

abstract class _$NextCopyWith<$Res> {
  factory _$NextCopyWith(_Next value, $Res Function(_Next) then) =
      __$NextCopyWithImpl<$Res>;
}

class __$NextCopyWithImpl<$Res> extends _$WorkoutRunningEventCopyWithImpl<$Res>
    implements _$NextCopyWith<$Res> {
  __$NextCopyWithImpl(_Next _value, $Res Function(_Next) _then)
      : super(_value, (v) => _then(v as _Next));

  @override
  _Next get _value => super._value as _Next;
}

class _$_Next implements _Next {
  const _$_Next();

  @override
  String toString() {
    return 'WorkoutRunningEvent.next()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Next);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(Workout workout),
    @required Result next(),
    @required Result previous(),
    @required Result restToogle(),
    @required Result complete(),
    @required Result restChanged(),
    @required Result resetRest(),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return next();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Workout workout),
    Result next(),
    Result previous(),
    Result restToogle(),
    Result complete(),
    Result restChanged(),
    Result resetRest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result next(_Next value),
    @required Result previous(_Previous value),
    @required Result restToogle(_RestToggle value),
    @required Result complete(_Complete value),
    @required Result restChanged(_RestChanged value),
    @required Result resetRest(_ResetRest value),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return next(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result next(_Next value),
    Result previous(_Previous value),
    Result restToogle(_RestToggle value),
    Result complete(_Complete value),
    Result restChanged(_RestChanged value),
    Result resetRest(_ResetRest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _Next implements WorkoutRunningEvent {
  const factory _Next() = _$_Next;
}

abstract class _$PreviousCopyWith<$Res> {
  factory _$PreviousCopyWith(_Previous value, $Res Function(_Previous) then) =
      __$PreviousCopyWithImpl<$Res>;
}

class __$PreviousCopyWithImpl<$Res>
    extends _$WorkoutRunningEventCopyWithImpl<$Res>
    implements _$PreviousCopyWith<$Res> {
  __$PreviousCopyWithImpl(_Previous _value, $Res Function(_Previous) _then)
      : super(_value, (v) => _then(v as _Previous));

  @override
  _Previous get _value => super._value as _Previous;
}

class _$_Previous implements _Previous {
  const _$_Previous();

  @override
  String toString() {
    return 'WorkoutRunningEvent.previous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Previous);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(Workout workout),
    @required Result next(),
    @required Result previous(),
    @required Result restToogle(),
    @required Result complete(),
    @required Result restChanged(),
    @required Result resetRest(),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return previous();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Workout workout),
    Result next(),
    Result previous(),
    Result restToogle(),
    Result complete(),
    Result restChanged(),
    Result resetRest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (previous != null) {
      return previous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result next(_Next value),
    @required Result previous(_Previous value),
    @required Result restToogle(_RestToggle value),
    @required Result complete(_Complete value),
    @required Result restChanged(_RestChanged value),
    @required Result resetRest(_ResetRest value),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return previous(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result next(_Next value),
    Result previous(_Previous value),
    Result restToogle(_RestToggle value),
    Result complete(_Complete value),
    Result restChanged(_RestChanged value),
    Result resetRest(_ResetRest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (previous != null) {
      return previous(this);
    }
    return orElse();
  }
}

abstract class _Previous implements WorkoutRunningEvent {
  const factory _Previous() = _$_Previous;
}

abstract class _$RestToggleCopyWith<$Res> {
  factory _$RestToggleCopyWith(
          _RestToggle value, $Res Function(_RestToggle) then) =
      __$RestToggleCopyWithImpl<$Res>;
}

class __$RestToggleCopyWithImpl<$Res>
    extends _$WorkoutRunningEventCopyWithImpl<$Res>
    implements _$RestToggleCopyWith<$Res> {
  __$RestToggleCopyWithImpl(
      _RestToggle _value, $Res Function(_RestToggle) _then)
      : super(_value, (v) => _then(v as _RestToggle));

  @override
  _RestToggle get _value => super._value as _RestToggle;
}

class _$_RestToggle implements _RestToggle {
  const _$_RestToggle();

  @override
  String toString() {
    return 'WorkoutRunningEvent.restToogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RestToggle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(Workout workout),
    @required Result next(),
    @required Result previous(),
    @required Result restToogle(),
    @required Result complete(),
    @required Result restChanged(),
    @required Result resetRest(),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return restToogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Workout workout),
    Result next(),
    Result previous(),
    Result restToogle(),
    Result complete(),
    Result restChanged(),
    Result resetRest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restToogle != null) {
      return restToogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result next(_Next value),
    @required Result previous(_Previous value),
    @required Result restToogle(_RestToggle value),
    @required Result complete(_Complete value),
    @required Result restChanged(_RestChanged value),
    @required Result resetRest(_ResetRest value),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return restToogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result next(_Next value),
    Result previous(_Previous value),
    Result restToogle(_RestToggle value),
    Result complete(_Complete value),
    Result restChanged(_RestChanged value),
    Result resetRest(_ResetRest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restToogle != null) {
      return restToogle(this);
    }
    return orElse();
  }
}

abstract class _RestToggle implements WorkoutRunningEvent {
  const factory _RestToggle() = _$_RestToggle;
}

abstract class _$CompleteCopyWith<$Res> {
  factory _$CompleteCopyWith(_Complete value, $Res Function(_Complete) then) =
      __$CompleteCopyWithImpl<$Res>;
}

class __$CompleteCopyWithImpl<$Res>
    extends _$WorkoutRunningEventCopyWithImpl<$Res>
    implements _$CompleteCopyWith<$Res> {
  __$CompleteCopyWithImpl(_Complete _value, $Res Function(_Complete) _then)
      : super(_value, (v) => _then(v as _Complete));

  @override
  _Complete get _value => super._value as _Complete;
}

class _$_Complete implements _Complete {
  const _$_Complete();

  @override
  String toString() {
    return 'WorkoutRunningEvent.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Complete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(Workout workout),
    @required Result next(),
    @required Result previous(),
    @required Result restToogle(),
    @required Result complete(),
    @required Result restChanged(),
    @required Result resetRest(),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return complete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Workout workout),
    Result next(),
    Result previous(),
    Result restToogle(),
    Result complete(),
    Result restChanged(),
    Result resetRest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result next(_Next value),
    @required Result previous(_Previous value),
    @required Result restToogle(_RestToggle value),
    @required Result complete(_Complete value),
    @required Result restChanged(_RestChanged value),
    @required Result resetRest(_ResetRest value),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return complete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result next(_Next value),
    Result previous(_Previous value),
    Result restToogle(_RestToggle value),
    Result complete(_Complete value),
    Result restChanged(_RestChanged value),
    Result resetRest(_ResetRest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete implements WorkoutRunningEvent {
  const factory _Complete() = _$_Complete;
}

abstract class _$RestChangedCopyWith<$Res> {
  factory _$RestChangedCopyWith(
          _RestChanged value, $Res Function(_RestChanged) then) =
      __$RestChangedCopyWithImpl<$Res>;
}

class __$RestChangedCopyWithImpl<$Res>
    extends _$WorkoutRunningEventCopyWithImpl<$Res>
    implements _$RestChangedCopyWith<$Res> {
  __$RestChangedCopyWithImpl(
      _RestChanged _value, $Res Function(_RestChanged) _then)
      : super(_value, (v) => _then(v as _RestChanged));

  @override
  _RestChanged get _value => super._value as _RestChanged;
}

class _$_RestChanged implements _RestChanged {
  const _$_RestChanged();

  @override
  String toString() {
    return 'WorkoutRunningEvent.restChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RestChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(Workout workout),
    @required Result next(),
    @required Result previous(),
    @required Result restToogle(),
    @required Result complete(),
    @required Result restChanged(),
    @required Result resetRest(),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return restChanged();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Workout workout),
    Result next(),
    Result previous(),
    Result restToogle(),
    Result complete(),
    Result restChanged(),
    Result resetRest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restChanged != null) {
      return restChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result next(_Next value),
    @required Result previous(_Previous value),
    @required Result restToogle(_RestToggle value),
    @required Result complete(_Complete value),
    @required Result restChanged(_RestChanged value),
    @required Result resetRest(_ResetRest value),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return restChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result next(_Next value),
    Result previous(_Previous value),
    Result restToogle(_RestToggle value),
    Result complete(_Complete value),
    Result restChanged(_RestChanged value),
    Result resetRest(_ResetRest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restChanged != null) {
      return restChanged(this);
    }
    return orElse();
  }
}

abstract class _RestChanged implements WorkoutRunningEvent {
  const factory _RestChanged() = _$_RestChanged;
}

abstract class _$ResetRestCopyWith<$Res> {
  factory _$ResetRestCopyWith(
          _ResetRest value, $Res Function(_ResetRest) then) =
      __$ResetRestCopyWithImpl<$Res>;
}

class __$ResetRestCopyWithImpl<$Res>
    extends _$WorkoutRunningEventCopyWithImpl<$Res>
    implements _$ResetRestCopyWith<$Res> {
  __$ResetRestCopyWithImpl(_ResetRest _value, $Res Function(_ResetRest) _then)
      : super(_value, (v) => _then(v as _ResetRest));

  @override
  _ResetRest get _value => super._value as _ResetRest;
}

class _$_ResetRest implements _ResetRest {
  const _$_ResetRest();

  @override
  String toString() {
    return 'WorkoutRunningEvent.resetRest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetRest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(Workout workout),
    @required Result next(),
    @required Result previous(),
    @required Result restToogle(),
    @required Result complete(),
    @required Result restChanged(),
    @required Result resetRest(),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return resetRest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(Workout workout),
    Result next(),
    Result previous(),
    Result restToogle(),
    Result complete(),
    Result restChanged(),
    Result resetRest(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetRest != null) {
      return resetRest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(_Start value),
    @required Result next(_Next value),
    @required Result previous(_Previous value),
    @required Result restToogle(_RestToggle value),
    @required Result complete(_Complete value),
    @required Result restChanged(_RestChanged value),
    @required Result resetRest(_ResetRest value),
  }) {
    assert(start != null);
    assert(next != null);
    assert(previous != null);
    assert(restToogle != null);
    assert(complete != null);
    assert(restChanged != null);
    assert(resetRest != null);
    return resetRest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(_Start value),
    Result next(_Next value),
    Result previous(_Previous value),
    Result restToogle(_RestToggle value),
    Result complete(_Complete value),
    Result restChanged(_RestChanged value),
    Result resetRest(_ResetRest value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetRest != null) {
      return resetRest(this);
    }
    return orElse();
  }
}

abstract class _ResetRest implements WorkoutRunningEvent {
  const factory _ResetRest() = _$_ResetRest;
}

class _$WorkoutRunningStateTearOff {
  const _$WorkoutRunningStateTearOff();

  _WorkoutRunningState call(
      {@required Option<int> currentIndex,
      @required Duration rest,
      @required Duration totalRest,
      @required bool isResting,
      @required bool hasNextExercise,
      @required bool hasPreviousExercise,
      @required bool isCompleted}) {
    return _WorkoutRunningState(
      currentIndex: currentIndex,
      rest: rest,
      totalRest: totalRest,
      isResting: isResting,
      hasNextExercise: hasNextExercise,
      hasPreviousExercise: hasPreviousExercise,
      isCompleted: isCompleted,
    );
  }
}

// ignore: unused_element
const $WorkoutRunningState = _$WorkoutRunningStateTearOff();

mixin _$WorkoutRunningState {
  Option<int> get currentIndex;
  Duration get rest;
  Duration get totalRest;
  bool get isResting;
  bool get hasNextExercise;
  bool get hasPreviousExercise;
  bool get isCompleted;

  $WorkoutRunningStateCopyWith<WorkoutRunningState> get copyWith;
}

abstract class $WorkoutRunningStateCopyWith<$Res> {
  factory $WorkoutRunningStateCopyWith(
          WorkoutRunningState value, $Res Function(WorkoutRunningState) then) =
      _$WorkoutRunningStateCopyWithImpl<$Res>;
  $Res call(
      {Option<int> currentIndex,
      Duration rest,
      Duration totalRest,
      bool isResting,
      bool hasNextExercise,
      bool hasPreviousExercise,
      bool isCompleted});
}

class _$WorkoutRunningStateCopyWithImpl<$Res>
    implements $WorkoutRunningStateCopyWith<$Res> {
  _$WorkoutRunningStateCopyWithImpl(this._value, this._then);

  final WorkoutRunningState _value;
  // ignore: unused_field
  final $Res Function(WorkoutRunningState) _then;

  @override
  $Res call({
    Object currentIndex = freezed,
    Object rest = freezed,
    Object totalRest = freezed,
    Object isResting = freezed,
    Object hasNextExercise = freezed,
    Object hasPreviousExercise = freezed,
    Object isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex as Option<int>,
      rest: rest == freezed ? _value.rest : rest as Duration,
      totalRest:
          totalRest == freezed ? _value.totalRest : totalRest as Duration,
      isResting: isResting == freezed ? _value.isResting : isResting as bool,
      hasNextExercise: hasNextExercise == freezed
          ? _value.hasNextExercise
          : hasNextExercise as bool,
      hasPreviousExercise: hasPreviousExercise == freezed
          ? _value.hasPreviousExercise
          : hasPreviousExercise as bool,
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
    ));
  }
}

abstract class _$WorkoutRunningStateCopyWith<$Res>
    implements $WorkoutRunningStateCopyWith<$Res> {
  factory _$WorkoutRunningStateCopyWith(_WorkoutRunningState value,
          $Res Function(_WorkoutRunningState) then) =
      __$WorkoutRunningStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<int> currentIndex,
      Duration rest,
      Duration totalRest,
      bool isResting,
      bool hasNextExercise,
      bool hasPreviousExercise,
      bool isCompleted});
}

class __$WorkoutRunningStateCopyWithImpl<$Res>
    extends _$WorkoutRunningStateCopyWithImpl<$Res>
    implements _$WorkoutRunningStateCopyWith<$Res> {
  __$WorkoutRunningStateCopyWithImpl(
      _WorkoutRunningState _value, $Res Function(_WorkoutRunningState) _then)
      : super(_value, (v) => _then(v as _WorkoutRunningState));

  @override
  _WorkoutRunningState get _value => super._value as _WorkoutRunningState;

  @override
  $Res call({
    Object currentIndex = freezed,
    Object rest = freezed,
    Object totalRest = freezed,
    Object isResting = freezed,
    Object hasNextExercise = freezed,
    Object hasPreviousExercise = freezed,
    Object isCompleted = freezed,
  }) {
    return _then(_WorkoutRunningState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex as Option<int>,
      rest: rest == freezed ? _value.rest : rest as Duration,
      totalRest:
          totalRest == freezed ? _value.totalRest : totalRest as Duration,
      isResting: isResting == freezed ? _value.isResting : isResting as bool,
      hasNextExercise: hasNextExercise == freezed
          ? _value.hasNextExercise
          : hasNextExercise as bool,
      hasPreviousExercise: hasPreviousExercise == freezed
          ? _value.hasPreviousExercise
          : hasPreviousExercise as bool,
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
    ));
  }
}

class _$_WorkoutRunningState extends _WorkoutRunningState {
  const _$_WorkoutRunningState(
      {@required this.currentIndex,
      @required this.rest,
      @required this.totalRest,
      @required this.isResting,
      @required this.hasNextExercise,
      @required this.hasPreviousExercise,
      @required this.isCompleted})
      : assert(currentIndex != null),
        assert(rest != null),
        assert(totalRest != null),
        assert(isResting != null),
        assert(hasNextExercise != null),
        assert(hasPreviousExercise != null),
        assert(isCompleted != null),
        super._();

  @override
  final Option<int> currentIndex;
  @override
  final Duration rest;
  @override
  final Duration totalRest;
  @override
  final bool isResting;
  @override
  final bool hasNextExercise;
  @override
  final bool hasPreviousExercise;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'WorkoutRunningState(currentIndex: $currentIndex, rest: $rest, totalRest: $totalRest, isResting: $isResting, hasNextExercise: $hasNextExercise, hasPreviousExercise: $hasPreviousExercise, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutRunningState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)) &&
            (identical(other.rest, rest) ||
                const DeepCollectionEquality().equals(other.rest, rest)) &&
            (identical(other.totalRest, totalRest) ||
                const DeepCollectionEquality()
                    .equals(other.totalRest, totalRest)) &&
            (identical(other.isResting, isResting) ||
                const DeepCollectionEquality()
                    .equals(other.isResting, isResting)) &&
            (identical(other.hasNextExercise, hasNextExercise) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextExercise, hasNextExercise)) &&
            (identical(other.hasPreviousExercise, hasPreviousExercise) ||
                const DeepCollectionEquality()
                    .equals(other.hasPreviousExercise, hasPreviousExercise)) &&
            (identical(other.isCompleted, isCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isCompleted, isCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentIndex) ^
      const DeepCollectionEquality().hash(rest) ^
      const DeepCollectionEquality().hash(totalRest) ^
      const DeepCollectionEquality().hash(isResting) ^
      const DeepCollectionEquality().hash(hasNextExercise) ^
      const DeepCollectionEquality().hash(hasPreviousExercise) ^
      const DeepCollectionEquality().hash(isCompleted);

  @override
  _$WorkoutRunningStateCopyWith<_WorkoutRunningState> get copyWith =>
      __$WorkoutRunningStateCopyWithImpl<_WorkoutRunningState>(
          this, _$identity);
}

abstract class _WorkoutRunningState extends WorkoutRunningState {
  const _WorkoutRunningState._() : super._();
  const factory _WorkoutRunningState(
      {@required Option<int> currentIndex,
      @required Duration rest,
      @required Duration totalRest,
      @required bool isResting,
      @required bool hasNextExercise,
      @required bool hasPreviousExercise,
      @required bool isCompleted}) = _$_WorkoutRunningState;

  @override
  Option<int> get currentIndex;
  @override
  Duration get rest;
  @override
  Duration get totalRest;
  @override
  bool get isResting;
  @override
  bool get hasNextExercise;
  @override
  bool get hasPreviousExercise;
  @override
  bool get isCompleted;
  @override
  _$WorkoutRunningStateCopyWith<_WorkoutRunningState> get copyWith;
}
