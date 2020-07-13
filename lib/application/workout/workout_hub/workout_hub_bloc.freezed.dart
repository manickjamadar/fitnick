// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_hub_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutHubEventTearOff {
  const _$WorkoutHubEventTearOff();

  _WorkoutHubInit init() {
    return const _WorkoutHubInit();
  }

  _WorkoutHubRefreshed refreshed() {
    return const _WorkoutHubRefreshed();
  }
}

// ignore: unused_element
const $WorkoutHubEvent = _$WorkoutHubEventTearOff();

mixin _$WorkoutHubEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refreshed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refreshed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_WorkoutHubInit value),
    @required Result refreshed(_WorkoutHubRefreshed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutHubInit value),
    Result refreshed(_WorkoutHubRefreshed value),
    @required Result orElse(),
  });
}

abstract class $WorkoutHubEventCopyWith<$Res> {
  factory $WorkoutHubEventCopyWith(
          WorkoutHubEvent value, $Res Function(WorkoutHubEvent) then) =
      _$WorkoutHubEventCopyWithImpl<$Res>;
}

class _$WorkoutHubEventCopyWithImpl<$Res>
    implements $WorkoutHubEventCopyWith<$Res> {
  _$WorkoutHubEventCopyWithImpl(this._value, this._then);

  final WorkoutHubEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutHubEvent) _then;
}

abstract class _$WorkoutHubInitCopyWith<$Res> {
  factory _$WorkoutHubInitCopyWith(
          _WorkoutHubInit value, $Res Function(_WorkoutHubInit) then) =
      __$WorkoutHubInitCopyWithImpl<$Res>;
}

class __$WorkoutHubInitCopyWithImpl<$Res>
    extends _$WorkoutHubEventCopyWithImpl<$Res>
    implements _$WorkoutHubInitCopyWith<$Res> {
  __$WorkoutHubInitCopyWithImpl(
      _WorkoutHubInit _value, $Res Function(_WorkoutHubInit) _then)
      : super(_value, (v) => _then(v as _WorkoutHubInit));

  @override
  _WorkoutHubInit get _value => super._value as _WorkoutHubInit;
}

class _$_WorkoutHubInit implements _WorkoutHubInit {
  const _$_WorkoutHubInit();

  @override
  String toString() {
    return 'WorkoutHubEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WorkoutHubInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refreshed(),
  }) {
    assert(init != null);
    assert(refreshed != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refreshed(),
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
    @required Result init(_WorkoutHubInit value),
    @required Result refreshed(_WorkoutHubRefreshed value),
  }) {
    assert(init != null);
    assert(refreshed != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutHubInit value),
    Result refreshed(_WorkoutHubRefreshed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHubInit implements WorkoutHubEvent {
  const factory _WorkoutHubInit() = _$_WorkoutHubInit;
}

abstract class _$WorkoutHubRefreshedCopyWith<$Res> {
  factory _$WorkoutHubRefreshedCopyWith(_WorkoutHubRefreshed value,
          $Res Function(_WorkoutHubRefreshed) then) =
      __$WorkoutHubRefreshedCopyWithImpl<$Res>;
}

class __$WorkoutHubRefreshedCopyWithImpl<$Res>
    extends _$WorkoutHubEventCopyWithImpl<$Res>
    implements _$WorkoutHubRefreshedCopyWith<$Res> {
  __$WorkoutHubRefreshedCopyWithImpl(
      _WorkoutHubRefreshed _value, $Res Function(_WorkoutHubRefreshed) _then)
      : super(_value, (v) => _then(v as _WorkoutHubRefreshed));

  @override
  _WorkoutHubRefreshed get _value => super._value as _WorkoutHubRefreshed;
}

class _$_WorkoutHubRefreshed implements _WorkoutHubRefreshed {
  const _$_WorkoutHubRefreshed();

  @override
  String toString() {
    return 'WorkoutHubEvent.refreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WorkoutHubRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result refreshed(),
  }) {
    assert(init != null);
    assert(refreshed != null);
    return refreshed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result refreshed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_WorkoutHubInit value),
    @required Result refreshed(_WorkoutHubRefreshed value),
  }) {
    assert(init != null);
    assert(refreshed != null);
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_WorkoutHubInit value),
    Result refreshed(_WorkoutHubRefreshed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHubRefreshed implements WorkoutHubEvent {
  const factory _WorkoutHubRefreshed() = _$_WorkoutHubRefreshed;
}

class _$WorkoutHubStateTearOff {
  const _$WorkoutHubStateTearOff();

  _WorkoutHubLoading loading() {
    return const _WorkoutHubLoading();
  }

  _WorkoutHubLoaded loaded({@required List<Workout> workouts}) {
    return _WorkoutHubLoaded(
      workouts: workouts,
    );
  }

  _WorkoutHubLoadedError loadedError({@required WorkoutFailure failure}) {
    return _WorkoutHubLoadedError(
      failure: failure,
    );
  }
}

// ignore: unused_element
const $WorkoutHubState = _$WorkoutHubStateTearOff();

mixin _$WorkoutHubState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Workout> workouts),
    @required Result loadedError(WorkoutFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Workout> workouts),
    Result loadedError(WorkoutFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_WorkoutHubLoading value),
    @required Result loaded(_WorkoutHubLoaded value),
    @required Result loadedError(_WorkoutHubLoadedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_WorkoutHubLoading value),
    Result loaded(_WorkoutHubLoaded value),
    Result loadedError(_WorkoutHubLoadedError value),
    @required Result orElse(),
  });
}

abstract class $WorkoutHubStateCopyWith<$Res> {
  factory $WorkoutHubStateCopyWith(
          WorkoutHubState value, $Res Function(WorkoutHubState) then) =
      _$WorkoutHubStateCopyWithImpl<$Res>;
}

class _$WorkoutHubStateCopyWithImpl<$Res>
    implements $WorkoutHubStateCopyWith<$Res> {
  _$WorkoutHubStateCopyWithImpl(this._value, this._then);

  final WorkoutHubState _value;
  // ignore: unused_field
  final $Res Function(WorkoutHubState) _then;
}

abstract class _$WorkoutHubLoadingCopyWith<$Res> {
  factory _$WorkoutHubLoadingCopyWith(
          _WorkoutHubLoading value, $Res Function(_WorkoutHubLoading) then) =
      __$WorkoutHubLoadingCopyWithImpl<$Res>;
}

class __$WorkoutHubLoadingCopyWithImpl<$Res>
    extends _$WorkoutHubStateCopyWithImpl<$Res>
    implements _$WorkoutHubLoadingCopyWith<$Res> {
  __$WorkoutHubLoadingCopyWithImpl(
      _WorkoutHubLoading _value, $Res Function(_WorkoutHubLoading) _then)
      : super(_value, (v) => _then(v as _WorkoutHubLoading));

  @override
  _WorkoutHubLoading get _value => super._value as _WorkoutHubLoading;
}

class _$_WorkoutHubLoading implements _WorkoutHubLoading {
  const _$_WorkoutHubLoading();

  @override
  String toString() {
    return 'WorkoutHubState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WorkoutHubLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Workout> workouts),
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
    Result loaded(List<Workout> workouts),
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
    @required Result loading(_WorkoutHubLoading value),
    @required Result loaded(_WorkoutHubLoaded value),
    @required Result loadedError(_WorkoutHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_WorkoutHubLoading value),
    Result loaded(_WorkoutHubLoaded value),
    Result loadedError(_WorkoutHubLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHubLoading implements WorkoutHubState {
  const factory _WorkoutHubLoading() = _$_WorkoutHubLoading;
}

abstract class _$WorkoutHubLoadedCopyWith<$Res> {
  factory _$WorkoutHubLoadedCopyWith(
          _WorkoutHubLoaded value, $Res Function(_WorkoutHubLoaded) then) =
      __$WorkoutHubLoadedCopyWithImpl<$Res>;
  $Res call({List<Workout> workouts});
}

class __$WorkoutHubLoadedCopyWithImpl<$Res>
    extends _$WorkoutHubStateCopyWithImpl<$Res>
    implements _$WorkoutHubLoadedCopyWith<$Res> {
  __$WorkoutHubLoadedCopyWithImpl(
      _WorkoutHubLoaded _value, $Res Function(_WorkoutHubLoaded) _then)
      : super(_value, (v) => _then(v as _WorkoutHubLoaded));

  @override
  _WorkoutHubLoaded get _value => super._value as _WorkoutHubLoaded;

  @override
  $Res call({
    Object workouts = freezed,
  }) {
    return _then(_WorkoutHubLoaded(
      workouts:
          workouts == freezed ? _value.workouts : workouts as List<Workout>,
    ));
  }
}

class _$_WorkoutHubLoaded implements _WorkoutHubLoaded {
  const _$_WorkoutHubLoaded({@required this.workouts})
      : assert(workouts != null);

  @override
  final List<Workout> workouts;

  @override
  String toString() {
    return 'WorkoutHubState.loaded(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutHubLoaded &&
            (identical(other.workouts, workouts) ||
                const DeepCollectionEquality()
                    .equals(other.workouts, workouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workouts);

  @override
  _$WorkoutHubLoadedCopyWith<_WorkoutHubLoaded> get copyWith =>
      __$WorkoutHubLoadedCopyWithImpl<_WorkoutHubLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Workout> workouts),
    @required Result loadedError(WorkoutFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loaded(workouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Workout> workouts),
    Result loadedError(WorkoutFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_WorkoutHubLoading value),
    @required Result loaded(_WorkoutHubLoaded value),
    @required Result loadedError(_WorkoutHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_WorkoutHubLoading value),
    Result loaded(_WorkoutHubLoaded value),
    Result loadedError(_WorkoutHubLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHubLoaded implements WorkoutHubState {
  const factory _WorkoutHubLoaded({@required List<Workout> workouts}) =
      _$_WorkoutHubLoaded;

  List<Workout> get workouts;
  _$WorkoutHubLoadedCopyWith<_WorkoutHubLoaded> get copyWith;
}

abstract class _$WorkoutHubLoadedErrorCopyWith<$Res> {
  factory _$WorkoutHubLoadedErrorCopyWith(_WorkoutHubLoadedError value,
          $Res Function(_WorkoutHubLoadedError) then) =
      __$WorkoutHubLoadedErrorCopyWithImpl<$Res>;
  $Res call({WorkoutFailure failure});

  $WorkoutFailureCopyWith<$Res> get failure;
}

class __$WorkoutHubLoadedErrorCopyWithImpl<$Res>
    extends _$WorkoutHubStateCopyWithImpl<$Res>
    implements _$WorkoutHubLoadedErrorCopyWith<$Res> {
  __$WorkoutHubLoadedErrorCopyWithImpl(_WorkoutHubLoadedError _value,
      $Res Function(_WorkoutHubLoadedError) _then)
      : super(_value, (v) => _then(v as _WorkoutHubLoadedError));

  @override
  _WorkoutHubLoadedError get _value => super._value as _WorkoutHubLoadedError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_WorkoutHubLoadedError(
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

class _$_WorkoutHubLoadedError implements _WorkoutHubLoadedError {
  const _$_WorkoutHubLoadedError({@required this.failure})
      : assert(failure != null);

  @override
  final WorkoutFailure failure;

  @override
  String toString() {
    return 'WorkoutHubState.loadedError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutHubLoadedError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$WorkoutHubLoadedErrorCopyWith<_WorkoutHubLoadedError> get copyWith =>
      __$WorkoutHubLoadedErrorCopyWithImpl<_WorkoutHubLoadedError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Workout> workouts),
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
    Result loaded(List<Workout> workouts),
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
    @required Result loading(_WorkoutHubLoading value),
    @required Result loaded(_WorkoutHubLoaded value),
    @required Result loadedError(_WorkoutHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loadedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_WorkoutHubLoading value),
    Result loaded(_WorkoutHubLoaded value),
    Result loadedError(_WorkoutHubLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedError != null) {
      return loadedError(this);
    }
    return orElse();
  }
}

abstract class _WorkoutHubLoadedError implements WorkoutHubState {
  const factory _WorkoutHubLoadedError({@required WorkoutFailure failure}) =
      _$_WorkoutHubLoadedError;

  WorkoutFailure get failure;
  _$WorkoutHubLoadedErrorCopyWith<_WorkoutHubLoadedError> get copyWith;
}
