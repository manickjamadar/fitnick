// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseActorEventTearOff {
  const _$ExerciseActorEventTearOff();

  _ActorDeleted deleted({@required Exercise exercise}) {
    return _ActorDeleted(
      exercise: exercise,
    );
  }

  _ActorReordered reordered() {
    return const _ActorReordered();
  }
}

// ignore: unused_element
const $ExerciseActorEvent = _$ExerciseActorEventTearOff();

mixin _$ExerciseActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Exercise exercise),
    @required Result reordered(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Exercise exercise),
    Result reordered(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_ActorDeleted value),
    @required Result reordered(_ActorReordered value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_ActorDeleted value),
    Result reordered(_ActorReordered value),
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

abstract class _$ActorDeletedCopyWith<$Res> {
  factory _$ActorDeletedCopyWith(
          _ActorDeleted value, $Res Function(_ActorDeleted) then) =
      __$ActorDeletedCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
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
    Object exercise = freezed,
  }) {
    return _then(_ActorDeleted(
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

class _$_ActorDeleted implements _ActorDeleted {
  const _$_ActorDeleted({@required this.exercise}) : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'ExerciseActorEvent.deleted(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorDeleted &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$ActorDeletedCopyWith<_ActorDeleted> get copyWith =>
      __$ActorDeletedCopyWithImpl<_ActorDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Exercise exercise),
    @required Result reordered(),
  }) {
    assert(deleted != null);
    assert(reordered != null);
    return deleted(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Exercise exercise),
    Result reordered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_ActorDeleted value),
    @required Result reordered(_ActorReordered value),
  }) {
    assert(deleted != null);
    assert(reordered != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_ActorDeleted value),
    Result reordered(_ActorReordered value),
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
  const factory _ActorDeleted({@required Exercise exercise}) = _$_ActorDeleted;

  Exercise get exercise;
  _$ActorDeletedCopyWith<_ActorDeleted> get copyWith;
}

abstract class _$ActorReorderedCopyWith<$Res> {
  factory _$ActorReorderedCopyWith(
          _ActorReordered value, $Res Function(_ActorReordered) then) =
      __$ActorReorderedCopyWithImpl<$Res>;
}

class __$ActorReorderedCopyWithImpl<$Res>
    extends _$ExerciseActorEventCopyWithImpl<$Res>
    implements _$ActorReorderedCopyWith<$Res> {
  __$ActorReorderedCopyWithImpl(
      _ActorReordered _value, $Res Function(_ActorReordered) _then)
      : super(_value, (v) => _then(v as _ActorReordered));

  @override
  _ActorReordered get _value => super._value as _ActorReordered;
}

class _$_ActorReordered implements _ActorReordered {
  const _$_ActorReordered();

  @override
  String toString() {
    return 'ExerciseActorEvent.reordered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActorReordered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Exercise exercise),
    @required Result reordered(),
  }) {
    assert(deleted != null);
    assert(reordered != null);
    return reordered();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Exercise exercise),
    Result reordered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reordered != null) {
      return reordered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_ActorDeleted value),
    @required Result reordered(_ActorReordered value),
  }) {
    assert(deleted != null);
    assert(reordered != null);
    return reordered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_ActorDeleted value),
    Result reordered(_ActorReordered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reordered != null) {
      return reordered(this);
    }
    return orElse();
  }
}

abstract class _ActorReordered implements ExerciseActorEvent {
  const factory _ActorReordered() = _$_ActorReordered;
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

  _ActorError error({@required String message}) {
    return _ActorError(
      message: message,
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
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result acting(),
    Result success(String message),
    Result error(String message),
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
    @required Result error(String message),
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
    Result error(String message),
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
    @required Result error(String message),
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
    Result error(String message),
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
    @required Result error(String message),
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
    Result error(String message),
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
  $Res call({String message});
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
    Object message = freezed,
  }) {
    return _then(_ActorError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ActorError implements _ActorError {
  const _$_ActorError({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ExerciseActorState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ActorErrorCopyWith<_ActorError> get copyWith =>
      __$ActorErrorCopyWithImpl<_ActorError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result acting(),
    @required Result success(String message),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(acting != null);
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result acting(),
    Result success(String message),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
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
  const factory _ActorError({@required String message}) = _$_ActorError;

  String get message;
  _$ActorErrorCopyWith<_ActorError> get copyWith;
}
