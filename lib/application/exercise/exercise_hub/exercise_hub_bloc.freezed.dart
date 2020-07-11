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

  _ExerciseHubRefreshed refreshed() {
    return const _ExerciseHubRefreshed();
  }
}

// ignore: unused_element
const $ExerciseHubEvent = _$ExerciseHubEventTearOff();

mixin _$ExerciseHubEvent {
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
    @required Result init(_ExerciseHubInit value),
    @required Result refreshed(_ExerciseHubRefreshed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result refreshed(_ExerciseHubRefreshed value),
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
    @required Result init(_ExerciseHubInit value),
    @required Result refreshed(_ExerciseHubRefreshed value),
  }) {
    assert(init != null);
    assert(refreshed != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result refreshed(_ExerciseHubRefreshed value),
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

abstract class _$ExerciseHubRefreshedCopyWith<$Res> {
  factory _$ExerciseHubRefreshedCopyWith(_ExerciseHubRefreshed value,
          $Res Function(_ExerciseHubRefreshed) then) =
      __$ExerciseHubRefreshedCopyWithImpl<$Res>;
}

class __$ExerciseHubRefreshedCopyWithImpl<$Res>
    extends _$ExerciseHubEventCopyWithImpl<$Res>
    implements _$ExerciseHubRefreshedCopyWith<$Res> {
  __$ExerciseHubRefreshedCopyWithImpl(
      _ExerciseHubRefreshed _value, $Res Function(_ExerciseHubRefreshed) _then)
      : super(_value, (v) => _then(v as _ExerciseHubRefreshed));

  @override
  _ExerciseHubRefreshed get _value => super._value as _ExerciseHubRefreshed;
}

class _$_ExerciseHubRefreshed implements _ExerciseHubRefreshed {
  const _$_ExerciseHubRefreshed();

  @override
  String toString() {
    return 'ExerciseHubEvent.refreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExerciseHubRefreshed);
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
    @required Result init(_ExerciseHubInit value),
    @required Result refreshed(_ExerciseHubRefreshed value),
  }) {
    assert(init != null);
    assert(refreshed != null);
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseHubInit value),
    Result refreshed(_ExerciseHubRefreshed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubRefreshed implements ExerciseHubEvent {
  const factory _ExerciseHubRefreshed() = _$_ExerciseHubRefreshed;
}

class _$ExerciseHubStateTearOff {
  const _$ExerciseHubStateTearOff();

  _ExerciseHubLoading loading() {
    return const _ExerciseHubLoading();
  }

  _ExerciseHubLoaded loaded({@required List<Exercise> exercises}) {
    return _ExerciseHubLoaded(
      exercises: exercises,
    );
  }

  _ExerciseHubLoadedError loadedError({@required ExerciseFailure failure}) {
    return _ExerciseHubLoadedError(
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
    @required Result loaded(List<Exercise> exercises),
    @required Result loadedError(ExerciseFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Exercise> exercises),
    Result loadedError(ExerciseFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ExerciseHubLoading value),
    @required Result loaded(_ExerciseHubLoaded value),
    @required Result loadedError(_ExerciseHubLoadedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubLoadedError value),
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
    @required Result loaded(List<Exercise> exercises),
    @required Result loadedError(ExerciseFailure failure),
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
    Result loaded(List<Exercise> exercises),
    Result loadedError(ExerciseFailure failure),
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
    @required Result loadedError(_ExerciseHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubLoadedError value),
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
  $Res call({List<Exercise> exercises});
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
    Object exercises = freezed,
  }) {
    return _then(_ExerciseHubLoaded(
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

class _$_ExerciseHubLoaded implements _ExerciseHubLoaded {
  const _$_ExerciseHubLoaded({@required this.exercises})
      : assert(exercises != null);

  @override
  final List<Exercise> exercises;

  @override
  String toString() {
    return 'ExerciseHubState.loaded(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseHubLoaded &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercises);

  @override
  _$ExerciseHubLoadedCopyWith<_ExerciseHubLoaded> get copyWith =>
      __$ExerciseHubLoadedCopyWithImpl<_ExerciseHubLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Exercise> exercises),
    @required Result loadedError(ExerciseFailure failure),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loaded(exercises);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Exercise> exercises),
    Result loadedError(ExerciseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_ExerciseHubLoading value),
    @required Result loaded(_ExerciseHubLoaded value),
    @required Result loadedError(_ExerciseHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubLoadedError value),
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
  const factory _ExerciseHubLoaded({@required List<Exercise> exercises}) =
      _$_ExerciseHubLoaded;

  List<Exercise> get exercises;
  _$ExerciseHubLoadedCopyWith<_ExerciseHubLoaded> get copyWith;
}

abstract class _$ExerciseHubLoadedErrorCopyWith<$Res> {
  factory _$ExerciseHubLoadedErrorCopyWith(_ExerciseHubLoadedError value,
          $Res Function(_ExerciseHubLoadedError) then) =
      __$ExerciseHubLoadedErrorCopyWithImpl<$Res>;
  $Res call({ExerciseFailure failure});

  $ExerciseFailureCopyWith<$Res> get failure;
}

class __$ExerciseHubLoadedErrorCopyWithImpl<$Res>
    extends _$ExerciseHubStateCopyWithImpl<$Res>
    implements _$ExerciseHubLoadedErrorCopyWith<$Res> {
  __$ExerciseHubLoadedErrorCopyWithImpl(_ExerciseHubLoadedError _value,
      $Res Function(_ExerciseHubLoadedError) _then)
      : super(_value, (v) => _then(v as _ExerciseHubLoadedError));

  @override
  _ExerciseHubLoadedError get _value => super._value as _ExerciseHubLoadedError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ExerciseHubLoadedError(
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

class _$_ExerciseHubLoadedError implements _ExerciseHubLoadedError {
  const _$_ExerciseHubLoadedError({@required this.failure})
      : assert(failure != null);

  @override
  final ExerciseFailure failure;

  @override
  String toString() {
    return 'ExerciseHubState.loadedError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseHubLoadedError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ExerciseHubLoadedErrorCopyWith<_ExerciseHubLoadedError> get copyWith =>
      __$ExerciseHubLoadedErrorCopyWithImpl<_ExerciseHubLoadedError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Exercise> exercises),
    @required Result loadedError(ExerciseFailure failure),
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
    Result loaded(List<Exercise> exercises),
    Result loadedError(ExerciseFailure failure),
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
    @required Result loadedError(_ExerciseHubLoadedError value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(loadedError != null);
    return loadedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_ExerciseHubLoading value),
    Result loaded(_ExerciseHubLoaded value),
    Result loadedError(_ExerciseHubLoadedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedError != null) {
      return loadedError(this);
    }
    return orElse();
  }
}

abstract class _ExerciseHubLoadedError implements ExerciseHubState {
  const factory _ExerciseHubLoadedError({@required ExerciseFailure failure}) =
      _$_ExerciseHubLoadedError;

  ExerciseFailure get failure;
  _$ExerciseHubLoadedErrorCopyWith<_ExerciseHubLoadedError> get copyWith;
}
