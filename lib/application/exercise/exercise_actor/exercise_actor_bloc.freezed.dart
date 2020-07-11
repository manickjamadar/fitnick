// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseActorEventTearOff {
  const _$ExerciseActorEventTearOff();

  _ActorAdded added({@required Exercise exercise}) {
    return _ActorAdded(
      exercise: exercise,
    );
  }

  _ActorUpdated updated({@required Exercise exercise}) {
    return _ActorUpdated(
      exercise: exercise,
    );
  }

  _ActorDeleted deleted({@required UniqueId exerciseId}) {
    return _ActorDeleted(
      exerciseId: exerciseId,
    );
  }
}

// ignore: unused_element
const $ExerciseActorEvent = _$ExerciseActorEventTearOff();

mixin _$ExerciseActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Exercise exercise),
    @required Result updated(Exercise exercise),
    @required Result deleted(UniqueId exerciseId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Exercise exercise),
    Result updated(Exercise exercise),
    Result deleted(UniqueId exerciseId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_ActorAdded value),
    @required Result updated(_ActorUpdated value),
    @required Result deleted(_ActorDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_ActorAdded value),
    Result updated(_ActorUpdated value),
    Result deleted(_ActorDeleted value),
    @required Result orElse(),
  });
}

abstract class $ExerciseActorEventCopyWith<$Res> {
  factory $ExerciseActorEventCopyWith(
          ExerciseActorEvent value, $Res Function(ExerciseActorEvent) then) =
      _$ExerciseActorEventCopyWithImpl<$Res>;
}

class _$ExerciseActorEventCopyWithImpl<$Res>
    implements $ExerciseActorEventCopyWith<$Res> {
  _$ExerciseActorEventCopyWithImpl(this._value, this._then);

  final ExerciseActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseActorEvent) _then;
}

abstract class _$ActorAddedCopyWith<$Res> {
  factory _$ActorAddedCopyWith(
          _ActorAdded value, $Res Function(_ActorAdded) then) =
      __$ActorAddedCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class __$ActorAddedCopyWithImpl<$Res>
    extends _$ExerciseActorEventCopyWithImpl<$Res>
    implements _$ActorAddedCopyWith<$Res> {
  __$ActorAddedCopyWithImpl(
      _ActorAdded _value, $Res Function(_ActorAdded) _then)
      : super(_value, (v) => _then(v as _ActorAdded));

  @override
  _ActorAdded get _value => super._value as _ActorAdded;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_ActorAdded(
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

class _$_ActorAdded implements _ActorAdded {
  const _$_ActorAdded({@required this.exercise}) : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'ExerciseActorEvent.added(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorAdded &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$ActorAddedCopyWith<_ActorAdded> get copyWith =>
      __$ActorAddedCopyWithImpl<_ActorAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Exercise exercise),
    @required Result updated(Exercise exercise),
    @required Result deleted(UniqueId exerciseId),
  }) {
    assert(added != null);
    assert(updated != null);
    assert(deleted != null);
    return added(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Exercise exercise),
    Result updated(Exercise exercise),
    Result deleted(UniqueId exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_ActorAdded value),
    @required Result updated(_ActorUpdated value),
    @required Result deleted(_ActorDeleted value),
  }) {
    assert(added != null);
    assert(updated != null);
    assert(deleted != null);
    return added(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_ActorAdded value),
    Result updated(_ActorUpdated value),
    Result deleted(_ActorDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _ActorAdded implements ExerciseActorEvent {
  const factory _ActorAdded({@required Exercise exercise}) = _$_ActorAdded;

  Exercise get exercise;
  _$ActorAddedCopyWith<_ActorAdded> get copyWith;
}

abstract class _$ActorUpdatedCopyWith<$Res> {
  factory _$ActorUpdatedCopyWith(
          _ActorUpdated value, $Res Function(_ActorUpdated) then) =
      __$ActorUpdatedCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class __$ActorUpdatedCopyWithImpl<$Res>
    extends _$ExerciseActorEventCopyWithImpl<$Res>
    implements _$ActorUpdatedCopyWith<$Res> {
  __$ActorUpdatedCopyWithImpl(
      _ActorUpdated _value, $Res Function(_ActorUpdated) _then)
      : super(_value, (v) => _then(v as _ActorUpdated));

  @override
  _ActorUpdated get _value => super._value as _ActorUpdated;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_ActorUpdated(
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

class _$_ActorUpdated implements _ActorUpdated {
  const _$_ActorUpdated({@required this.exercise}) : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'ExerciseActorEvent.updated(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorUpdated &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$ActorUpdatedCopyWith<_ActorUpdated> get copyWith =>
      __$ActorUpdatedCopyWithImpl<_ActorUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Exercise exercise),
    @required Result updated(Exercise exercise),
    @required Result deleted(UniqueId exerciseId),
  }) {
    assert(added != null);
    assert(updated != null);
    assert(deleted != null);
    return updated(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Exercise exercise),
    Result updated(Exercise exercise),
    Result deleted(UniqueId exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_ActorAdded value),
    @required Result updated(_ActorUpdated value),
    @required Result deleted(_ActorDeleted value),
  }) {
    assert(added != null);
    assert(updated != null);
    assert(deleted != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_ActorAdded value),
    Result updated(_ActorUpdated value),
    Result deleted(_ActorDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _ActorUpdated implements ExerciseActorEvent {
  const factory _ActorUpdated({@required Exercise exercise}) = _$_ActorUpdated;

  Exercise get exercise;
  _$ActorUpdatedCopyWith<_ActorUpdated> get copyWith;
}

abstract class _$ActorDeletedCopyWith<$Res> {
  factory _$ActorDeletedCopyWith(
          _ActorDeleted value, $Res Function(_ActorDeleted) then) =
      __$ActorDeletedCopyWithImpl<$Res>;
  $Res call({UniqueId exerciseId});
}

class __$ActorDeletedCopyWithImpl<$Res>
    extends _$ExerciseActorEventCopyWithImpl<$Res>
    implements _$ActorDeletedCopyWith<$Res> {
  __$ActorDeletedCopyWithImpl(
      _ActorDeleted _value, $Res Function(_ActorDeleted) _then)
      : super(_value, (v) => _then(v as _ActorDeleted));

  @override
  _ActorDeleted get _value => super._value as _ActorDeleted;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(_ActorDeleted(
      exerciseId:
          exerciseId == freezed ? _value.exerciseId : exerciseId as UniqueId,
    ));
  }
}

class _$_ActorDeleted implements _ActorDeleted {
  const _$_ActorDeleted({@required this.exerciseId})
      : assert(exerciseId != null);

  @override
  final UniqueId exerciseId;

  @override
  String toString() {
    return 'ExerciseActorEvent.deleted(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorDeleted &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  _$ActorDeletedCopyWith<_ActorDeleted> get copyWith =>
      __$ActorDeletedCopyWithImpl<_ActorDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result added(Exercise exercise),
    @required Result updated(Exercise exercise),
    @required Result deleted(UniqueId exerciseId),
  }) {
    assert(added != null);
    assert(updated != null);
    assert(deleted != null);
    return deleted(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result added(Exercise exercise),
    Result updated(Exercise exercise),
    Result deleted(UniqueId exerciseId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result added(_ActorAdded value),
    @required Result updated(_ActorUpdated value),
    @required Result deleted(_ActorDeleted value),
  }) {
    assert(added != null);
    assert(updated != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result added(_ActorAdded value),
    Result updated(_ActorUpdated value),
    Result deleted(_ActorDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _ActorDeleted implements ExerciseActorEvent {
  const factory _ActorDeleted({@required UniqueId exerciseId}) =
      _$_ActorDeleted;

  UniqueId get exerciseId;
  _$ActorDeletedCopyWith<_ActorDeleted> get copyWith;
}

class _$ExerciseActorStateTearOff {
  const _$ExerciseActorStateTearOff();

  _ActorInitial initial() {
    return const _ActorInitial();
  }

  _Acting acting() {
    return const _Acting();
  }

  _ActorSuccess success({@required String message}) {
    return _ActorSuccess(
      message: message,
    );
  }

  _ActorError error({@required ExerciseFailure failure}) {
    return _ActorError(
      failure: failure,
    );
  }
}

// ignore: unused_element
const $ExerciseActorState = _$ExerciseActorStateTearOff();

mixin _$ExerciseActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result acting(),
    @required Result success(String message),
    @required Result error(ExerciseFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result acting(),
    Result success(String message),
    Result error(ExerciseFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_ActorInitial value),
    @required Result acting(_Acting value),
    @required Result success(_ActorSuccess value),
    @required Result error(_ActorError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_ActorInitial value),
    Result acting(_Acting value),
    Result success(_ActorSuccess value),
    Result error(_ActorError value),
    @required Result orElse(),
  });
}

abstract class $ExerciseActorStateCopyWith<$Res> {
  factory $ExerciseActorStateCopyWith(
          ExerciseActorState value, $Res Function(ExerciseActorState) then) =
      _$ExerciseActorStateCopyWithImpl<$Res>;
}

class _$ExerciseActorStateCopyWithImpl<$Res>
    implements $ExerciseActorStateCopyWith<$Res> {
  _$ExerciseActorStateCopyWithImpl(this._value, this._then);

  final ExerciseActorState _value;
  // ignore: unused_field
  final $Res Function(ExerciseActorState) _then;
}

abstract class _$ActorInitialCopyWith<$Res> {
  factory _$ActorInitialCopyWith(
          _ActorInitial value, $Res Function(_ActorInitial) then) =
      __$ActorInitialCopyWithImpl<$Res>;
}

class __$ActorInitialCopyWithImpl<$Res>
    extends _$ExerciseActorStateCopyWithImpl<$Res>
    implements _$ActorInitialCopyWith<$Res> {
  __$ActorInitialCopyWithImpl(
      _ActorInitial _value, $Res Function(_ActorInitial) _then)
      : super(_value, (v) => _then(v as _ActorInitial));

  @override
  _ActorInitial get _value => super._value as _ActorInitial;
}

class _$_ActorInitial implements _ActorInitial {
  const _$_ActorInitial();

  @override
  String toString() {
    return 'ExerciseActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActorInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result acting(),
    @required Result success(String message),
    @required Result error(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result acting(),
    Result success(String message),
    Result error(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_ActorInitial value),
    @required Result acting(_Acting value),
    @required Result success(_ActorSuccess value),
    @required Result error(_ActorError value),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_ActorInitial value),
    Result acting(_Acting value),
    Result success(_ActorSuccess value),
    Result error(_ActorError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ActorInitial implements ExerciseActorState {
  const factory _ActorInitial() = _$_ActorInitial;
}

abstract class _$ActingCopyWith<$Res> {
  factory _$ActingCopyWith(_Acting value, $Res Function(_Acting) then) =
      __$ActingCopyWithImpl<$Res>;
}

class __$ActingCopyWithImpl<$Res> extends _$ExerciseActorStateCopyWithImpl<$Res>
    implements _$ActingCopyWith<$Res> {
  __$ActingCopyWithImpl(_Acting _value, $Res Function(_Acting) _then)
      : super(_value, (v) => _then(v as _Acting));

  @override
  _Acting get _value => super._value as _Acting;
}

class _$_Acting implements _Acting {
  const _$_Acting();

  @override
  String toString() {
    return 'ExerciseActorState.acting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Acting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result acting(),
    @required Result success(String message),
    @required Result error(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return acting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result acting(),
    Result success(String message),
    Result error(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (acting != null) {
      return acting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_ActorInitial value),
    @required Result acting(_Acting value),
    @required Result success(_ActorSuccess value),
    @required Result error(_ActorError value),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return acting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_ActorInitial value),
    Result acting(_Acting value),
    Result success(_ActorSuccess value),
    Result error(_ActorError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (acting != null) {
      return acting(this);
    }
    return orElse();
  }
}

abstract class _Acting implements ExerciseActorState {
  const factory _Acting() = _$_Acting;
}

abstract class _$ActorSuccessCopyWith<$Res> {
  factory _$ActorSuccessCopyWith(
          _ActorSuccess value, $Res Function(_ActorSuccess) then) =
      __$ActorSuccessCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$ActorSuccessCopyWithImpl<$Res>
    extends _$ExerciseActorStateCopyWithImpl<$Res>
    implements _$ActorSuccessCopyWith<$Res> {
  __$ActorSuccessCopyWithImpl(
      _ActorSuccess _value, $Res Function(_ActorSuccess) _then)
      : super(_value, (v) => _then(v as _ActorSuccess));

  @override
  _ActorSuccess get _value => super._value as _ActorSuccess;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ActorSuccess(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ActorSuccess implements _ActorSuccess {
  const _$_ActorSuccess({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ExerciseActorState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorSuccess &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ActorSuccessCopyWith<_ActorSuccess> get copyWith =>
      __$ActorSuccessCopyWithImpl<_ActorSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result acting(),
    @required Result success(String message),
    @required Result error(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return success(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result acting(),
    Result success(String message),
    Result error(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_ActorInitial value),
    @required Result acting(_Acting value),
    @required Result success(_ActorSuccess value),
    @required Result error(_ActorError value),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_ActorInitial value),
    Result acting(_Acting value),
    Result success(_ActorSuccess value),
    Result error(_ActorError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ActorSuccess implements ExerciseActorState {
  const factory _ActorSuccess({@required String message}) = _$_ActorSuccess;

  String get message;
  _$ActorSuccessCopyWith<_ActorSuccess> get copyWith;
}

abstract class _$ActorErrorCopyWith<$Res> {
  factory _$ActorErrorCopyWith(
          _ActorError value, $Res Function(_ActorError) then) =
      __$ActorErrorCopyWithImpl<$Res>;
  $Res call({ExerciseFailure failure});

  $ExerciseFailureCopyWith<$Res> get failure;
}

class __$ActorErrorCopyWithImpl<$Res>
    extends _$ExerciseActorStateCopyWithImpl<$Res>
    implements _$ActorErrorCopyWith<$Res> {
  __$ActorErrorCopyWithImpl(
      _ActorError _value, $Res Function(_ActorError) _then)
      : super(_value, (v) => _then(v as _ActorError));

  @override
  _ActorError get _value => super._value as _ActorError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ActorError(
      failure: failure == freezed ? _value.failure : failure as ExerciseFailure,
    ));
  }

  @override
  $ExerciseFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ExerciseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_ActorError implements _ActorError {
  const _$_ActorError({@required this.failure}) : assert(failure != null);

  @override
  final ExerciseFailure failure;

  @override
  String toString() {
    return 'ExerciseActorState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ActorErrorCopyWith<_ActorError> get copyWith =>
      __$ActorErrorCopyWithImpl<_ActorError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result acting(),
    @required Result success(String message),
    @required Result error(ExerciseFailure failure),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result acting(),
    Result success(String message),
    Result error(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_ActorInitial value),
    @required Result acting(_Acting value),
    @required Result success(_ActorSuccess value),
    @required Result error(_ActorError value),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_ActorInitial value),
    Result acting(_Acting value),
    Result success(_ActorSuccess value),
    Result error(_ActorError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ActorError implements ExerciseActorState {
  const factory _ActorError({@required ExerciseFailure failure}) =
      _$_ActorError;

  ExerciseFailure get failure;
  _$ActorErrorCopyWith<_ActorError> get copyWith;
}
