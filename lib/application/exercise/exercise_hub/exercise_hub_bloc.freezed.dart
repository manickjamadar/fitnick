// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_hub_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseHubEventTearOff {
  const _$ExerciseHubEventTearOff();

  _ExerciseHubInit init() {
    return const _ExerciseHubInit();
  }

  _ExerciseHubAdded exerciseAdded({@required Exercise exercise}) {
    return _ExerciseHubAdded(
      exercise: exercise,
    );
  }

  _ExerciseHubUpdated exerciseUpdated({@required Exercise exercise}) {
    return _ExerciseHubUpdated(
      exercise: exercise,
    );
  }

  _ExerciseHubDeleted exerciseDeleted({@required UniqueId exerciseId}) {
    return _ExerciseHubDeleted(
      exerciseId: exerciseId,
    );
  }

  _ExerciseHubRerodered exerciseReordered() {
    return const _ExerciseHubRerodered();
  }
}

// ignore: unused_element
const $ExerciseHubEvent = _$ExerciseHubEventTearOff();

mixin _$ExerciseHubEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseUpdated(Exercise exercise),
    @required Result exerciseDeleted(UniqueId exerciseId),
    @required Result exerciseReordered(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result exerciseAdded(Exercise exercise),
    Result exerciseUpdated(Exercise exercise),
    Result exerciseDeleted(UniqueId exerciseId),
    Result exerciseReordered(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseHubInit value),
    @required Result exerciseAdded(_ExerciseHubAdded value),
    @required Result exerciseUpdated(_ExerciseHubUpdated value),
    @required Result exerciseDeleted(_ExerciseHubDeleted value),
    @required Result exerciseReordered(_ExerciseHubRerodered value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result exerciseAdded(_ExerciseHubAdded value),
    Result exerciseUpdated(_ExerciseHubUpdated value),
    Result exerciseDeleted(_ExerciseHubDeleted value),
    Result exerciseReordered(_ExerciseHubRerodered value),
    @required Result orElse(),
  });
}

abstract class $ExerciseHubEventCopyWith<$Res> {
  factory $ExerciseHubEventCopyWith(
          ExerciseHubEvent value, $Res Function(ExerciseHubEvent) then) =
      _$ExerciseHubEventCopyWithImpl<$Res>;
}

class _$ExerciseHubEventCopyWithImpl<$Res>
    implements $ExerciseHubEventCopyWith<$Res> {
  _$ExerciseHubEventCopyWithImpl(this._value, this._then);

  final ExerciseHubEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseHubEvent) _then;
}

abstract class _$ExerciseHubInitCopyWith<$Res> {
  factory _$ExerciseHubInitCopyWith(
          _ExerciseHubInit value, $Res Function(_ExerciseHubInit) then) =
      __$ExerciseHubInitCopyWithImpl<$Res>;
}

class __$ExerciseHubInitCopyWithImpl<$Res>
    extends _$ExerciseHubEventCopyWithImpl<$Res>
    implements _$ExerciseHubInitCopyWith<$Res> {
  __$ExerciseHubInitCopyWithImpl(
      _ExerciseHubInit _value, $Res Function(_ExerciseHubInit) _then)
      : super(_value, (v) => _then(v as _ExerciseHubInit));

  @override
  _ExerciseHubInit get _value => super._value as _ExerciseHubInit;
}

class _$_ExerciseHubInit implements _ExerciseHubInit {
  const _$_ExerciseHubInit();

  @override
  String toString() {
    return 'ExerciseHubEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExerciseHubInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseUpdated(Exercise exercise),
    @required Result exerciseDeleted(UniqueId exerciseId),
    @required Result exerciseReordered(),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result exerciseAdded(Exercise exercise),
    Result exerciseUpdated(Exercise exercise),
    Result exerciseDeleted(UniqueId exerciseId),
    Result exerciseReordered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseHubInit value),
    @required Result exerciseAdded(_ExerciseHubAdded value),
    @required Result exerciseUpdated(_ExerciseHubUpdated value),
    @required Result exerciseDeleted(_ExerciseHubDeleted value),
    @required Result exerciseReordered(_ExerciseHubRerodered value),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result exerciseAdded(_ExerciseHubAdded value),
    Result exerciseUpdated(_ExerciseHubUpdated value),
    Result exerciseDeleted(_ExerciseHubDeleted value),
    Result exerciseReordered(_ExerciseHubRerodered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubInit implements ExerciseHubEvent {
  const factory _ExerciseHubInit() = _$_ExerciseHubInit;
}

abstract class _$ExerciseHubAddedCopyWith<$Res> {
  factory _$ExerciseHubAddedCopyWith(
          _ExerciseHubAdded value, $Res Function(_ExerciseHubAdded) then) =
      __$ExerciseHubAddedCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class __$ExerciseHubAddedCopyWithImpl<$Res>
    extends _$ExerciseHubEventCopyWithImpl<$Res>
    implements _$ExerciseHubAddedCopyWith<$Res> {
  __$ExerciseHubAddedCopyWithImpl(
      _ExerciseHubAdded _value, $Res Function(_ExerciseHubAdded) _then)
      : super(_value, (v) => _then(v as _ExerciseHubAdded));

  @override
  _ExerciseHubAdded get _value => super._value as _ExerciseHubAdded;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_ExerciseHubAdded(
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

class _$_ExerciseHubAdded implements _ExerciseHubAdded {
  const _$_ExerciseHubAdded({@required this.exercise})
      : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'ExerciseHubEvent.exerciseAdded(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseHubAdded &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$ExerciseHubAddedCopyWith<_ExerciseHubAdded> get copyWith =>
      __$ExerciseHubAddedCopyWithImpl<_ExerciseHubAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseUpdated(Exercise exercise),
    @required Result exerciseDeleted(UniqueId exerciseId),
    @required Result exerciseReordered(),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return exerciseAdded(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result exerciseAdded(Exercise exercise),
    Result exerciseUpdated(Exercise exercise),
    Result exerciseDeleted(UniqueId exerciseId),
    Result exerciseReordered(),
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
    @required Result init(_ExerciseHubInit value),
    @required Result exerciseAdded(_ExerciseHubAdded value),
    @required Result exerciseUpdated(_ExerciseHubUpdated value),
    @required Result exerciseDeleted(_ExerciseHubDeleted value),
    @required Result exerciseReordered(_ExerciseHubRerodered value),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return exerciseAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result exerciseAdded(_ExerciseHubAdded value),
    Result exerciseUpdated(_ExerciseHubUpdated value),
    Result exerciseDeleted(_ExerciseHubDeleted value),
    Result exerciseReordered(_ExerciseHubRerodered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseAdded != null) {
      return exerciseAdded(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubAdded implements ExerciseHubEvent {
  const factory _ExerciseHubAdded({@required Exercise exercise}) =
      _$_ExerciseHubAdded;

  Exercise get exercise;
  _$ExerciseHubAddedCopyWith<_ExerciseHubAdded> get copyWith;
}

abstract class _$ExerciseHubUpdatedCopyWith<$Res> {
  factory _$ExerciseHubUpdatedCopyWith(
          _ExerciseHubUpdated value, $Res Function(_ExerciseHubUpdated) then) =
      __$ExerciseHubUpdatedCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class __$ExerciseHubUpdatedCopyWithImpl<$Res>
    extends _$ExerciseHubEventCopyWithImpl<$Res>
    implements _$ExerciseHubUpdatedCopyWith<$Res> {
  __$ExerciseHubUpdatedCopyWithImpl(
      _ExerciseHubUpdated _value, $Res Function(_ExerciseHubUpdated) _then)
      : super(_value, (v) => _then(v as _ExerciseHubUpdated));

  @override
  _ExerciseHubUpdated get _value => super._value as _ExerciseHubUpdated;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_ExerciseHubUpdated(
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

class _$_ExerciseHubUpdated implements _ExerciseHubUpdated {
  const _$_ExerciseHubUpdated({@required this.exercise})
      : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'ExerciseHubEvent.exerciseUpdated(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseHubUpdated &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$ExerciseHubUpdatedCopyWith<_ExerciseHubUpdated> get copyWith =>
      __$ExerciseHubUpdatedCopyWithImpl<_ExerciseHubUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseUpdated(Exercise exercise),
    @required Result exerciseDeleted(UniqueId exerciseId),
    @required Result exerciseReordered(),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return exerciseUpdated(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result exerciseAdded(Exercise exercise),
    Result exerciseUpdated(Exercise exercise),
    Result exerciseDeleted(UniqueId exerciseId),
    Result exerciseReordered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseUpdated != null) {
      return exerciseUpdated(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseHubInit value),
    @required Result exerciseAdded(_ExerciseHubAdded value),
    @required Result exerciseUpdated(_ExerciseHubUpdated value),
    @required Result exerciseDeleted(_ExerciseHubDeleted value),
    @required Result exerciseReordered(_ExerciseHubRerodered value),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return exerciseUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result exerciseAdded(_ExerciseHubAdded value),
    Result exerciseUpdated(_ExerciseHubUpdated value),
    Result exerciseDeleted(_ExerciseHubDeleted value),
    Result exerciseReordered(_ExerciseHubRerodered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseUpdated != null) {
      return exerciseUpdated(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubUpdated implements ExerciseHubEvent {
  const factory _ExerciseHubUpdated({@required Exercise exercise}) =
      _$_ExerciseHubUpdated;

  Exercise get exercise;
  _$ExerciseHubUpdatedCopyWith<_ExerciseHubUpdated> get copyWith;
}

abstract class _$ExerciseHubDeletedCopyWith<$Res> {
  factory _$ExerciseHubDeletedCopyWith(
          _ExerciseHubDeleted value, $Res Function(_ExerciseHubDeleted) then) =
      __$ExerciseHubDeletedCopyWithImpl<$Res>;
  $Res call({UniqueId exerciseId});
}

class __$ExerciseHubDeletedCopyWithImpl<$Res>
    extends _$ExerciseHubEventCopyWithImpl<$Res>
    implements _$ExerciseHubDeletedCopyWith<$Res> {
  __$ExerciseHubDeletedCopyWithImpl(
      _ExerciseHubDeleted _value, $Res Function(_ExerciseHubDeleted) _then)
      : super(_value, (v) => _then(v as _ExerciseHubDeleted));

  @override
  _ExerciseHubDeleted get _value => super._value as _ExerciseHubDeleted;

  @override
  $Res call({
    Object exerciseId = freezed,
  }) {
    return _then(_ExerciseHubDeleted(
      exerciseId:
          exerciseId == freezed ? _value.exerciseId : exerciseId as UniqueId,
    ));
  }
}

class _$_ExerciseHubDeleted implements _ExerciseHubDeleted {
  const _$_ExerciseHubDeleted({@required this.exerciseId})
      : assert(exerciseId != null);

  @override
  final UniqueId exerciseId;

  @override
  String toString() {
    return 'ExerciseHubEvent.exerciseDeleted(exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseHubDeleted &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exerciseId);

  @override
  _$ExerciseHubDeletedCopyWith<_ExerciseHubDeleted> get copyWith =>
      __$ExerciseHubDeletedCopyWithImpl<_ExerciseHubDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseUpdated(Exercise exercise),
    @required Result exerciseDeleted(UniqueId exerciseId),
    @required Result exerciseReordered(),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return exerciseDeleted(exerciseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result exerciseAdded(Exercise exercise),
    Result exerciseUpdated(Exercise exercise),
    Result exerciseDeleted(UniqueId exerciseId),
    Result exerciseReordered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseDeleted != null) {
      return exerciseDeleted(exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseHubInit value),
    @required Result exerciseAdded(_ExerciseHubAdded value),
    @required Result exerciseUpdated(_ExerciseHubUpdated value),
    @required Result exerciseDeleted(_ExerciseHubDeleted value),
    @required Result exerciseReordered(_ExerciseHubRerodered value),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return exerciseDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result exerciseAdded(_ExerciseHubAdded value),
    Result exerciseUpdated(_ExerciseHubUpdated value),
    Result exerciseDeleted(_ExerciseHubDeleted value),
    Result exerciseReordered(_ExerciseHubRerodered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseDeleted != null) {
      return exerciseDeleted(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubDeleted implements ExerciseHubEvent {
  const factory _ExerciseHubDeleted({@required UniqueId exerciseId}) =
      _$_ExerciseHubDeleted;

  UniqueId get exerciseId;
  _$ExerciseHubDeletedCopyWith<_ExerciseHubDeleted> get copyWith;
}

abstract class _$ExerciseHubReroderedCopyWith<$Res> {
  factory _$ExerciseHubReroderedCopyWith(_ExerciseHubRerodered value,
          $Res Function(_ExerciseHubRerodered) then) =
      __$ExerciseHubReroderedCopyWithImpl<$Res>;
}

class __$ExerciseHubReroderedCopyWithImpl<$Res>
    extends _$ExerciseHubEventCopyWithImpl<$Res>
    implements _$ExerciseHubReroderedCopyWith<$Res> {
  __$ExerciseHubReroderedCopyWithImpl(
      _ExerciseHubRerodered _value, $Res Function(_ExerciseHubRerodered) _then)
      : super(_value, (v) => _then(v as _ExerciseHubRerodered));

  @override
  _ExerciseHubRerodered get _value => super._value as _ExerciseHubRerodered;
}

class _$_ExerciseHubRerodered implements _ExerciseHubRerodered {
  const _$_ExerciseHubRerodered();

  @override
  String toString() {
    return 'ExerciseHubEvent.exerciseReordered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExerciseHubRerodered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result exerciseAdded(Exercise exercise),
    @required Result exerciseUpdated(Exercise exercise),
    @required Result exerciseDeleted(UniqueId exerciseId),
    @required Result exerciseReordered(),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return exerciseReordered();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result exerciseAdded(Exercise exercise),
    Result exerciseUpdated(Exercise exercise),
    Result exerciseDeleted(UniqueId exerciseId),
    Result exerciseReordered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseReordered != null) {
      return exerciseReordered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseHubInit value),
    @required Result exerciseAdded(_ExerciseHubAdded value),
    @required Result exerciseUpdated(_ExerciseHubUpdated value),
    @required Result exerciseDeleted(_ExerciseHubDeleted value),
    @required Result exerciseReordered(_ExerciseHubRerodered value),
  }) {
    assert(init != null);
    assert(exerciseAdded != null);
    assert(exerciseUpdated != null);
    assert(exerciseDeleted != null);
    assert(exerciseReordered != null);
    return exerciseReordered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result exerciseAdded(_ExerciseHubAdded value),
    Result exerciseUpdated(_ExerciseHubUpdated value),
    Result exerciseDeleted(_ExerciseHubDeleted value),
    Result exerciseReordered(_ExerciseHubRerodered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseReordered != null) {
      return exerciseReordered(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubRerodered implements ExerciseHubEvent {
  const factory _ExerciseHubRerodered() = _$_ExerciseHubRerodered;
}

class _$ExerciseHubStateTearOff {
  const _$ExerciseHubStateTearOff();

  _ExerciseHubLoading loading() {
    return const _ExerciseHubLoading();
  }

  _ExerciseHubLoaded loaded({@required List<Exercise> exercise}) {
    return _ExerciseHubLoaded(
      exercise: exercise,
    );
  }

  _ExerciseHubError loadedError({@required ExerciseFailure failure}) {
    return _ExerciseHubError(
      failure: failure,
    );
  }

  _ExerciseHubError reorderedError({@required ExerciseFailure failure}) {
    return _ExerciseHubError(
      failure: failure,
    );
  }
}

// ignore: unused_element
const $ExerciseHubState = _$ExerciseHubStateTearOff();

mixin _$ExerciseHubState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Exercise> exercise),
    @required Result loadedError(ExerciseFailure failure),
    @required Result reorderedError(ExerciseFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Exercise> exercise),
    Result loadedError(ExerciseFailure failure),
    Result reorderedError(ExerciseFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ExerciseHubLoading value),
    @required Result loaded(_ExerciseHubLoaded value),
    @required Result loadedError(_ExerciseHubError value),
    @required Result reorderedError(_ExerciseHubError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubError value),
    Result reorderedError(_ExerciseHubError value),
    @required Result orElse(),
  });
}

abstract class $ExerciseHubStateCopyWith<$Res> {
  factory $ExerciseHubStateCopyWith(
          ExerciseHubState value, $Res Function(ExerciseHubState) then) =
      _$ExerciseHubStateCopyWithImpl<$Res>;
}

class _$ExerciseHubStateCopyWithImpl<$Res>
    implements $ExerciseHubStateCopyWith<$Res> {
  _$ExerciseHubStateCopyWithImpl(this._value, this._then);

  final ExerciseHubState _value;
  // ignore: unused_field
  final $Res Function(ExerciseHubState) _then;
}

abstract class _$ExerciseHubLoadingCopyWith<$Res> {
  factory _$ExerciseHubLoadingCopyWith(
          _ExerciseHubLoading value, $Res Function(_ExerciseHubLoading) then) =
      __$ExerciseHubLoadingCopyWithImpl<$Res>;
}

class __$ExerciseHubLoadingCopyWithImpl<$Res>
    extends _$ExerciseHubStateCopyWithImpl<$Res>
    implements _$ExerciseHubLoadingCopyWith<$Res> {
  __$ExerciseHubLoadingCopyWithImpl(
      _ExerciseHubLoading _value, $Res Function(_ExerciseHubLoading) _then)
      : super(_value, (v) => _then(v as _ExerciseHubLoading));

  @override
  _ExerciseHubLoading get _value => super._value as _ExerciseHubLoading;
}

class _$_ExerciseHubLoading implements _ExerciseHubLoading {
  const _$_ExerciseHubLoading();

  @override
  String toString() {
    return 'ExerciseHubState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExerciseHubLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Exercise> exercise),
    @required Result loadedError(ExerciseFailure failure),
    @required Result reorderedError(ExerciseFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    assert(reorderedError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Exercise> exercise),
    Result loadedError(ExerciseFailure failure),
    Result reorderedError(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ExerciseHubLoading value),
    @required Result loaded(_ExerciseHubLoaded value),
    @required Result loadedError(_ExerciseHubError value),
    @required Result reorderedError(_ExerciseHubError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    assert(reorderedError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubError value),
    Result reorderedError(_ExerciseHubError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubLoading implements ExerciseHubState {
  const factory _ExerciseHubLoading() = _$_ExerciseHubLoading;
}

abstract class _$ExerciseHubLoadedCopyWith<$Res> {
  factory _$ExerciseHubLoadedCopyWith(
          _ExerciseHubLoaded value, $Res Function(_ExerciseHubLoaded) then) =
      __$ExerciseHubLoadedCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercise});
}

class __$ExerciseHubLoadedCopyWithImpl<$Res>
    extends _$ExerciseHubStateCopyWithImpl<$Res>
    implements _$ExerciseHubLoadedCopyWith<$Res> {
  __$ExerciseHubLoadedCopyWithImpl(
      _ExerciseHubLoaded _value, $Res Function(_ExerciseHubLoaded) _then)
      : super(_value, (v) => _then(v as _ExerciseHubLoaded));

  @override
  _ExerciseHubLoaded get _value => super._value as _ExerciseHubLoaded;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_ExerciseHubLoaded(
      exercise:
          exercise == freezed ? _value.exercise : exercise as List<Exercise>,
    ));
  }
}

class _$_ExerciseHubLoaded implements _ExerciseHubLoaded {
  const _$_ExerciseHubLoaded({@required this.exercise})
      : assert(exercise != null);

  @override
  final List<Exercise> exercise;

  @override
  String toString() {
    return 'ExerciseHubState.loaded(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseHubLoaded &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$ExerciseHubLoadedCopyWith<_ExerciseHubLoaded> get copyWith =>
      __$ExerciseHubLoadedCopyWithImpl<_ExerciseHubLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Exercise> exercise),
    @required Result loadedError(ExerciseFailure failure),
    @required Result reorderedError(ExerciseFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    assert(reorderedError != null);
    return loaded(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Exercise> exercise),
    Result loadedError(ExerciseFailure failure),
    Result reorderedError(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ExerciseHubLoading value),
    @required Result loaded(_ExerciseHubLoaded value),
    @required Result loadedError(_ExerciseHubError value),
    @required Result reorderedError(_ExerciseHubError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    assert(reorderedError != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubError value),
    Result reorderedError(_ExerciseHubError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubLoaded implements ExerciseHubState {
  const factory _ExerciseHubLoaded({@required List<Exercise> exercise}) =
      _$_ExerciseHubLoaded;

  List<Exercise> get exercise;
  _$ExerciseHubLoadedCopyWith<_ExerciseHubLoaded> get copyWith;
}

abstract class _$ExerciseHubErrorCopyWith<$Res> {
  factory _$ExerciseHubErrorCopyWith(
          _ExerciseHubError value, $Res Function(_ExerciseHubError) then) =
      __$ExerciseHubErrorCopyWithImpl<$Res>;
  $Res call({ExerciseFailure failure});

  $ExerciseFailureCopyWith<$Res> get failure;
}

class __$ExerciseHubErrorCopyWithImpl<$Res>
    extends _$ExerciseHubStateCopyWithImpl<$Res>
    implements _$ExerciseHubErrorCopyWith<$Res> {
  __$ExerciseHubErrorCopyWithImpl(
      _ExerciseHubError _value, $Res Function(_ExerciseHubError) _then)
      : super(_value, (v) => _then(v as _ExerciseHubError));

  @override
  _ExerciseHubError get _value => super._value as _ExerciseHubError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ExerciseHubError(
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

class _$_ExerciseHubError implements _ExerciseHubError {
  const _$_ExerciseHubError({@required this.failure}) : assert(failure != null);

  @override
  final ExerciseFailure failure;

  @override
  String toString() {
    return 'ExerciseHubState.loadedError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseHubError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ExerciseHubErrorCopyWith<_ExerciseHubError> get copyWith =>
      __$ExerciseHubErrorCopyWithImpl<_ExerciseHubError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Exercise> exercise),
    @required Result loadedError(ExerciseFailure failure),
    @required Result reorderedError(ExerciseFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    assert(reorderedError != null);
    return loadedError(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Exercise> exercise),
    Result loadedError(ExerciseFailure failure),
    Result reorderedError(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedError != null) {
      return loadedError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ExerciseHubLoading value),
    @required Result loaded(_ExerciseHubLoaded value),
    @required Result loadedError(_ExerciseHubError value),
    @required Result reorderedError(_ExerciseHubError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    assert(reorderedError != null);
    return loadedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubError value),
    Result reorderedError(_ExerciseHubError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedError != null) {
      return loadedError(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubError implements ExerciseHubState {
  const factory _ExerciseHubError({@required ExerciseFailure failure}) =
      _$_ExerciseHubError;

  ExerciseFailure get failure;
  _$ExerciseHubErrorCopyWith<_ExerciseHubError> get copyWith;
}

abstract class _$ExerciseHubErrorCopyWith<$Res> {
  factory _$ExerciseHubErrorCopyWith(
          _ExerciseHubError value, $Res Function(_ExerciseHubError) then) =
      __$ExerciseHubErrorCopyWithImpl<$Res>;
  $Res call({ExerciseFailure failure});

  $ExerciseFailureCopyWith<$Res> get failure;
}

class __$ExerciseHubErrorCopyWithImpl<$Res>
    extends _$ExerciseHubStateCopyWithImpl<$Res>
    implements _$ExerciseHubErrorCopyWith<$Res> {
  __$ExerciseHubErrorCopyWithImpl(
      _ExerciseHubError _value, $Res Function(_ExerciseHubError) _then)
      : super(_value, (v) => _then(v as _ExerciseHubError));

  @override
  _ExerciseHubError get _value => super._value as _ExerciseHubError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ExerciseHubError(
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

class _$_ExerciseHubError implements _ExerciseHubError {
  const _$_ExerciseHubError({@required this.failure}) : assert(failure != null);

  @override
  final ExerciseFailure failure;

  @override
  String toString() {
    return 'ExerciseHubState.reorderedError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseHubError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ExerciseHubErrorCopyWith<_ExerciseHubError> get copyWith =>
      __$ExerciseHubErrorCopyWithImpl<_ExerciseHubError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Exercise> exercise),
    @required Result loadedError(ExerciseFailure failure),
    @required Result reorderedError(ExerciseFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    assert(reorderedError != null);
    return reorderedError(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Exercise> exercise),
    Result loadedError(ExerciseFailure failure),
    Result reorderedError(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reorderedError != null) {
      return reorderedError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ExerciseHubLoading value),
    @required Result loaded(_ExerciseHubLoaded value),
    @required Result loadedError(_ExerciseHubError value),
    @required Result reorderedError(_ExerciseHubError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    assert(reorderedError != null);
    return reorderedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubError value),
    Result reorderedError(_ExerciseHubError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reorderedError != null) {
      return reorderedError(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubError implements ExerciseHubState {
  const factory _ExerciseHubError({@required ExerciseFailure failure}) =
      _$_ExerciseHubError;

  ExerciseFailure get failure;
  _$ExerciseHubErrorCopyWith<_ExerciseHubError> get copyWith;
}
