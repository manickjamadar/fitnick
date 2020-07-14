// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutActorEventTearOff {
  const _$WorkoutActorEventTearOff();

  _Deleted deleted({@required Workout workout}) {
    return _Deleted(
      workout: workout,
    );
  }

  _Reordered reordered() {
    return const _Reordered();
  }
}

// ignore: unused_element
const $WorkoutActorEvent = _$WorkoutActorEventTearOff();

mixin _$WorkoutActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Workout workout),
    @required Result reordered(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Workout workout),
    Result reordered(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result reordered(_Reordered value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result reordered(_Reordered value),
    @required Result orElse(),
  });
}

abstract class $WorkoutActorEventCopyWith<$Res> {
  factory $WorkoutActorEventCopyWith(
          WorkoutActorEvent value, $Res Function(WorkoutActorEvent) then) =
      _$WorkoutActorEventCopyWithImpl<$Res>;
}

class _$WorkoutActorEventCopyWithImpl<$Res>
    implements $WorkoutActorEventCopyWith<$Res> {
  _$WorkoutActorEventCopyWithImpl(this._value, this._then);

  final WorkoutActorEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutActorEvent) _then;
}

abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({Workout workout});

  $WorkoutCopyWith<$Res> get workout;
}

class __$DeletedCopyWithImpl<$Res> extends _$WorkoutActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_Deleted(
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

class _$_Deleted implements _Deleted {
  const _$_Deleted({@required this.workout}) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutActorEvent.deleted(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Workout workout),
    @required Result reordered(),
  }) {
    assert(deleted != null);
    assert(reordered != null);
    return deleted(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Workout workout),
    Result reordered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result reordered(_Reordered value),
  }) {
    assert(deleted != null);
    assert(reordered != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result reordered(_Reordered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements WorkoutActorEvent {
  const factory _Deleted({@required Workout workout}) = _$_Deleted;

  Workout get workout;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

abstract class _$ReorderedCopyWith<$Res> {
  factory _$ReorderedCopyWith(
          _Reordered value, $Res Function(_Reordered) then) =
      __$ReorderedCopyWithImpl<$Res>;
}

class __$ReorderedCopyWithImpl<$Res>
    extends _$WorkoutActorEventCopyWithImpl<$Res>
    implements _$ReorderedCopyWith<$Res> {
  __$ReorderedCopyWithImpl(_Reordered _value, $Res Function(_Reordered) _then)
      : super(_value, (v) => _then(v as _Reordered));

  @override
  _Reordered get _value => super._value as _Reordered;
}

class _$_Reordered implements _Reordered {
  const _$_Reordered();

  @override
  String toString() {
    return 'WorkoutActorEvent.reordered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Reordered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Workout workout),
    @required Result reordered(),
  }) {
    assert(deleted != null);
    assert(reordered != null);
    return reordered();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Workout workout),
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
    @required Result deleted(_Deleted value),
    @required Result reordered(_Reordered value),
  }) {
    assert(deleted != null);
    assert(reordered != null);
    return reordered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result reordered(_Reordered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reordered != null) {
      return reordered(this);
    }
    return orElse();
  }
}

abstract class _Reordered implements WorkoutActorEvent {
  const factory _Reordered() = _$_Reordered;
}

class _$WorkoutActorStateTearOff {
  const _$WorkoutActorStateTearOff();

  _ActorInitial initial() {
    return const _ActorInitial();
  }

  _Acting acting() {
    return const _Acting();
  }

  _WorkoutActorSuccess success({@required String message}) {
    return _WorkoutActorSuccess(
      message: message,
    );
  }

  _WorkoutActorError error({@required String message}) {
    return _WorkoutActorError(
      message: message,
    );
  }
}

// ignore: unused_element
const $WorkoutActorState = _$WorkoutActorStateTearOff();

mixin _$WorkoutActorState {
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
    @required Result success(_WorkoutActorSuccess value),
    @required Result error(_WorkoutActorError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_ActorInitial value),
    Result acting(_Acting value),
    Result success(_WorkoutActorSuccess value),
    Result error(_WorkoutActorError value),
    @required Result orElse(),
  });
}

abstract class $WorkoutActorStateCopyWith<$Res> {
  factory $WorkoutActorStateCopyWith(
          WorkoutActorState value, $Res Function(WorkoutActorState) then) =
      _$WorkoutActorStateCopyWithImpl<$Res>;
}

class _$WorkoutActorStateCopyWithImpl<$Res>
    implements $WorkoutActorStateCopyWith<$Res> {
  _$WorkoutActorStateCopyWithImpl(this._value, this._then);

  final WorkoutActorState _value;
  // ignore: unused_field
  final $Res Function(WorkoutActorState) _then;
}

abstract class _$ActorInitialCopyWith<$Res> {
  factory _$ActorInitialCopyWith(
          _ActorInitial value, $Res Function(_ActorInitial) then) =
      __$ActorInitialCopyWithImpl<$Res>;
}

class __$ActorInitialCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
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
    return 'WorkoutActorState.initial()';
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
    @required Result success(_WorkoutActorSuccess value),
    @required Result error(_WorkoutActorError value),
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
    Result success(_WorkoutActorSuccess value),
    Result error(_WorkoutActorError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ActorInitial implements WorkoutActorState {
  const factory _ActorInitial() = _$_ActorInitial;
}

abstract class _$ActingCopyWith<$Res> {
  factory _$ActingCopyWith(_Acting value, $Res Function(_Acting) then) =
      __$ActingCopyWithImpl<$Res>;
}

class __$ActingCopyWithImpl<$Res> extends _$WorkoutActorStateCopyWithImpl<$Res>
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
    return 'WorkoutActorState.acting()';
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
    @required Result success(_WorkoutActorSuccess value),
    @required Result error(_WorkoutActorError value),
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
    Result success(_WorkoutActorSuccess value),
    Result error(_WorkoutActorError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (acting != null) {
      return acting(this);
    }
    return orElse();
  }
}

abstract class _Acting implements WorkoutActorState {
  const factory _Acting() = _$_Acting;
}

abstract class _$WorkoutActorSuccessCopyWith<$Res> {
  factory _$WorkoutActorSuccessCopyWith(_WorkoutActorSuccess value,
          $Res Function(_WorkoutActorSuccess) then) =
      __$WorkoutActorSuccessCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$WorkoutActorSuccessCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements _$WorkoutActorSuccessCopyWith<$Res> {
  __$WorkoutActorSuccessCopyWithImpl(
      _WorkoutActorSuccess _value, $Res Function(_WorkoutActorSuccess) _then)
      : super(_value, (v) => _then(v as _WorkoutActorSuccess));

  @override
  _WorkoutActorSuccess get _value => super._value as _WorkoutActorSuccess;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_WorkoutActorSuccess(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_WorkoutActorSuccess implements _WorkoutActorSuccess {
  const _$_WorkoutActorSuccess({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'WorkoutActorState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutActorSuccess &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$WorkoutActorSuccessCopyWith<_WorkoutActorSuccess> get copyWith =>
      __$WorkoutActorSuccessCopyWithImpl<_WorkoutActorSuccess>(
          this, _$identity);

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
    @required Result success(_WorkoutActorSuccess value),
    @required Result error(_WorkoutActorError value),
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
    Result success(_WorkoutActorSuccess value),
    Result error(_WorkoutActorError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _WorkoutActorSuccess implements WorkoutActorState {
  const factory _WorkoutActorSuccess({@required String message}) =
      _$_WorkoutActorSuccess;

  String get message;
  _$WorkoutActorSuccessCopyWith<_WorkoutActorSuccess> get copyWith;
}

abstract class _$WorkoutActorErrorCopyWith<$Res> {
  factory _$WorkoutActorErrorCopyWith(
          _WorkoutActorError value, $Res Function(_WorkoutActorError) then) =
      __$WorkoutActorErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$WorkoutActorErrorCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements _$WorkoutActorErrorCopyWith<$Res> {
  __$WorkoutActorErrorCopyWithImpl(
      _WorkoutActorError _value, $Res Function(_WorkoutActorError) _then)
      : super(_value, (v) => _then(v as _WorkoutActorError));

  @override
  _WorkoutActorError get _value => super._value as _WorkoutActorError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_WorkoutActorError(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_WorkoutActorError implements _WorkoutActorError {
  const _$_WorkoutActorError({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'WorkoutActorState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutActorError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$WorkoutActorErrorCopyWith<_WorkoutActorError> get copyWith =>
      __$WorkoutActorErrorCopyWithImpl<_WorkoutActorError>(this, _$identity);

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
    @required Result success(_WorkoutActorSuccess value),
    @required Result error(_WorkoutActorError value),
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
    Result success(_WorkoutActorSuccess value),
    Result error(_WorkoutActorError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WorkoutActorError implements WorkoutActorState {
  const factory _WorkoutActorError({@required String message}) =
      _$_WorkoutActorError;

  String get message;
  _$WorkoutActorErrorCopyWith<_WorkoutActorError> get copyWith;
}
