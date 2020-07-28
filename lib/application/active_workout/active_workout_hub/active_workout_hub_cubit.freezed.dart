// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'active_workout_hub_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActiveWorkoutHubStateTearOff {
  const _$ActiveWorkoutHubStateTearOff();

  _ActiveWorkoutHubLoading loading() {
    return const _ActiveWorkoutHubLoading();
  }

  _ActiveWorkoutHubLoaded loaded(List<ActiveWorkout> activeWorkouts) {
    return _ActiveWorkoutHubLoaded(
      activeWorkouts,
    );
  }

  _ActiveWorkoutHubLoadedError loadedError({@required WorkoutFailure failure}) {
    return _ActiveWorkoutHubLoadedError(
      failure: failure,
    );
  }
}

// ignore: unused_element
const $ActiveWorkoutHubState = _$ActiveWorkoutHubStateTearOff();

mixin _$ActiveWorkoutHubState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ActiveWorkout> activeWorkouts),
    @required Result loadedError(WorkoutFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ActiveWorkout> activeWorkouts),
    Result loadedError(WorkoutFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ActiveWorkoutHubLoading value),
    @required Result loaded(_ActiveWorkoutHubLoaded value),
    @required Result loadedError(_ActiveWorkoutHubLoadedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ActiveWorkoutHubLoading value),
    Result loaded(_ActiveWorkoutHubLoaded value),
    Result loadedError(_ActiveWorkoutHubLoadedError value),
    @required Result orElse(),
  });
}

abstract class $ActiveWorkoutHubStateCopyWith<$Res> {
  factory $ActiveWorkoutHubStateCopyWith(ActiveWorkoutHubState value,
          $Res Function(ActiveWorkoutHubState) then) =
      _$ActiveWorkoutHubStateCopyWithImpl<$Res>;
}

class _$ActiveWorkoutHubStateCopyWithImpl<$Res>
    implements $ActiveWorkoutHubStateCopyWith<$Res> {
  _$ActiveWorkoutHubStateCopyWithImpl(this._value, this._then);

  final ActiveWorkoutHubState _value;
  // ignore: unused_field
  final $Res Function(ActiveWorkoutHubState) _then;
}

abstract class _$ActiveWorkoutHubLoadingCopyWith<$Res> {
  factory _$ActiveWorkoutHubLoadingCopyWith(_ActiveWorkoutHubLoading value,
          $Res Function(_ActiveWorkoutHubLoading) then) =
      __$ActiveWorkoutHubLoadingCopyWithImpl<$Res>;
}

class __$ActiveWorkoutHubLoadingCopyWithImpl<$Res>
    extends _$ActiveWorkoutHubStateCopyWithImpl<$Res>
    implements _$ActiveWorkoutHubLoadingCopyWith<$Res> {
  __$ActiveWorkoutHubLoadingCopyWithImpl(_ActiveWorkoutHubLoading _value,
      $Res Function(_ActiveWorkoutHubLoading) _then)
      : super(_value, (v) => _then(v as _ActiveWorkoutHubLoading));

  @override
  _ActiveWorkoutHubLoading get _value =>
      super._value as _ActiveWorkoutHubLoading;
}

class _$_ActiveWorkoutHubLoading implements _ActiveWorkoutHubLoading {
  const _$_ActiveWorkoutHubLoading();

  @override
  String toString() {
    return 'ActiveWorkoutHubState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActiveWorkoutHubLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ActiveWorkout> activeWorkouts),
    @required Result loadedError(WorkoutFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ActiveWorkout> activeWorkouts),
    Result loadedError(WorkoutFailure failure),
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
    @required Result loading(_ActiveWorkoutHubLoading value),
    @required Result loaded(_ActiveWorkoutHubLoaded value),
    @required Result loadedError(_ActiveWorkoutHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ActiveWorkoutHubLoading value),
    Result loaded(_ActiveWorkoutHubLoaded value),
    Result loadedError(_ActiveWorkoutHubLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ActiveWorkoutHubLoading implements ActiveWorkoutHubState {
  const factory _ActiveWorkoutHubLoading() = _$_ActiveWorkoutHubLoading;
}

abstract class _$ActiveWorkoutHubLoadedCopyWith<$Res> {
  factory _$ActiveWorkoutHubLoadedCopyWith(_ActiveWorkoutHubLoaded value,
          $Res Function(_ActiveWorkoutHubLoaded) then) =
      __$ActiveWorkoutHubLoadedCopyWithImpl<$Res>;
  $Res call({List<ActiveWorkout> activeWorkouts});
}

class __$ActiveWorkoutHubLoadedCopyWithImpl<$Res>
    extends _$ActiveWorkoutHubStateCopyWithImpl<$Res>
    implements _$ActiveWorkoutHubLoadedCopyWith<$Res> {
  __$ActiveWorkoutHubLoadedCopyWithImpl(_ActiveWorkoutHubLoaded _value,
      $Res Function(_ActiveWorkoutHubLoaded) _then)
      : super(_value, (v) => _then(v as _ActiveWorkoutHubLoaded));

  @override
  _ActiveWorkoutHubLoaded get _value => super._value as _ActiveWorkoutHubLoaded;

  @override
  $Res call({
    Object activeWorkouts = freezed,
  }) {
    return _then(_ActiveWorkoutHubLoaded(
      activeWorkouts == freezed
          ? _value.activeWorkouts
          : activeWorkouts as List<ActiveWorkout>,
    ));
  }
}

class _$_ActiveWorkoutHubLoaded implements _ActiveWorkoutHubLoaded {
  const _$_ActiveWorkoutHubLoaded(this.activeWorkouts)
      : assert(activeWorkouts != null);

  @override
  final List<ActiveWorkout> activeWorkouts;

  @override
  String toString() {
    return 'ActiveWorkoutHubState.loaded(activeWorkouts: $activeWorkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveWorkoutHubLoaded &&
            (identical(other.activeWorkouts, activeWorkouts) ||
                const DeepCollectionEquality()
                    .equals(other.activeWorkouts, activeWorkouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(activeWorkouts);

  @override
  _$ActiveWorkoutHubLoadedCopyWith<_ActiveWorkoutHubLoaded> get copyWith =>
      __$ActiveWorkoutHubLoadedCopyWithImpl<_ActiveWorkoutHubLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ActiveWorkout> activeWorkouts),
    @required Result loadedError(WorkoutFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loaded(activeWorkouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ActiveWorkout> activeWorkouts),
    Result loadedError(WorkoutFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(activeWorkouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ActiveWorkoutHubLoading value),
    @required Result loaded(_ActiveWorkoutHubLoaded value),
    @required Result loadedError(_ActiveWorkoutHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ActiveWorkoutHubLoading value),
    Result loaded(_ActiveWorkoutHubLoaded value),
    Result loadedError(_ActiveWorkoutHubLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ActiveWorkoutHubLoaded implements ActiveWorkoutHubState {
  const factory _ActiveWorkoutHubLoaded(List<ActiveWorkout> activeWorkouts) =
      _$_ActiveWorkoutHubLoaded;

  List<ActiveWorkout> get activeWorkouts;
  _$ActiveWorkoutHubLoadedCopyWith<_ActiveWorkoutHubLoaded> get copyWith;
}

abstract class _$ActiveWorkoutHubLoadedErrorCopyWith<$Res> {
  factory _$ActiveWorkoutHubLoadedErrorCopyWith(
          _ActiveWorkoutHubLoadedError value,
          $Res Function(_ActiveWorkoutHubLoadedError) then) =
      __$ActiveWorkoutHubLoadedErrorCopyWithImpl<$Res>;
  $Res call({WorkoutFailure failure});

  $WorkoutFailureCopyWith<$Res> get failure;
}

class __$ActiveWorkoutHubLoadedErrorCopyWithImpl<$Res>
    extends _$ActiveWorkoutHubStateCopyWithImpl<$Res>
    implements _$ActiveWorkoutHubLoadedErrorCopyWith<$Res> {
  __$ActiveWorkoutHubLoadedErrorCopyWithImpl(
      _ActiveWorkoutHubLoadedError _value,
      $Res Function(_ActiveWorkoutHubLoadedError) _then)
      : super(_value, (v) => _then(v as _ActiveWorkoutHubLoadedError));

  @override
  _ActiveWorkoutHubLoadedError get _value =>
      super._value as _ActiveWorkoutHubLoadedError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ActiveWorkoutHubLoadedError(
      failure: failure == freezed ? _value.failure : failure as WorkoutFailure,
    ));
  }

  @override
  $WorkoutFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $WorkoutFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_ActiveWorkoutHubLoadedError implements _ActiveWorkoutHubLoadedError {
  const _$_ActiveWorkoutHubLoadedError({@required this.failure})
      : assert(failure != null);

  @override
  final WorkoutFailure failure;

  @override
  String toString() {
    return 'ActiveWorkoutHubState.loadedError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveWorkoutHubLoadedError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ActiveWorkoutHubLoadedErrorCopyWith<_ActiveWorkoutHubLoadedError>
      get copyWith => __$ActiveWorkoutHubLoadedErrorCopyWithImpl<
          _ActiveWorkoutHubLoadedError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<ActiveWorkout> activeWorkouts),
    @required Result loadedError(WorkoutFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loadedError(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<ActiveWorkout> activeWorkouts),
    Result loadedError(WorkoutFailure failure),
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
    @required Result loading(_ActiveWorkoutHubLoading value),
    @required Result loaded(_ActiveWorkoutHubLoaded value),
    @required Result loadedError(_ActiveWorkoutHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loadedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ActiveWorkoutHubLoading value),
    Result loaded(_ActiveWorkoutHubLoaded value),
    Result loadedError(_ActiveWorkoutHubLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedError != null) {
      return loadedError(this);
    }
    return orElse();
  }
}

abstract class _ActiveWorkoutHubLoadedError implements ActiveWorkoutHubState {
  const factory _ActiveWorkoutHubLoadedError(
      {@required WorkoutFailure failure}) = _$_ActiveWorkoutHubLoadedError;

  WorkoutFailure get failure;
  _$ActiveWorkoutHubLoadedErrorCopyWith<_ActiveWorkoutHubLoadedError>
      get copyWith;
}
