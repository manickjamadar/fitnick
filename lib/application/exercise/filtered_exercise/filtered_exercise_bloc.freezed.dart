// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'filtered_exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FilteredExerciseEventTearOff {
  const _$FilteredExerciseEventTearOff();

  _Searched searched({@required String term}) {
    return _Searched(
      term: term,
    );
  }

  _Refreshed refreshed({@required List<Exercise> exercises}) {
    return _Refreshed(
      exercises: exercises,
    );
  }

  _Filtered filtered(Exercise exercise) {
    return _Filtered(
      exercise,
    );
  }

  _ResetFiltered resetFiltered() {
    return const _ResetFiltered();
  }
}

// ignore: unused_element
const $FilteredExerciseEvent = _$FilteredExerciseEventTearOff();

mixin _$FilteredExerciseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searched(String term),
    @required Result refreshed(List<Exercise> exercises),
    @required Result filtered(Exercise exercise),
    @required Result resetFiltered(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searched(String term),
    Result refreshed(List<Exercise> exercises),
    Result filtered(Exercise exercise),
    Result resetFiltered(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searched(_Searched value),
    @required Result refreshed(_Refreshed value),
    @required Result filtered(_Filtered value),
    @required Result resetFiltered(_ResetFiltered value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searched(_Searched value),
    Result refreshed(_Refreshed value),
    Result filtered(_Filtered value),
    Result resetFiltered(_ResetFiltered value),
    @required Result orElse(),
  });
}

abstract class $FilteredExerciseEventCopyWith<$Res> {
  factory $FilteredExerciseEventCopyWith(FilteredExerciseEvent value,
          $Res Function(FilteredExerciseEvent) then) =
      _$FilteredExerciseEventCopyWithImpl<$Res>;
}

class _$FilteredExerciseEventCopyWithImpl<$Res>
    implements $FilteredExerciseEventCopyWith<$Res> {
  _$FilteredExerciseEventCopyWithImpl(this._value, this._then);

  final FilteredExerciseEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredExerciseEvent) _then;
}

abstract class _$SearchedCopyWith<$Res> {
  factory _$SearchedCopyWith(_Searched value, $Res Function(_Searched) then) =
      __$SearchedCopyWithImpl<$Res>;
  $Res call({String term});
}

class __$SearchedCopyWithImpl<$Res>
    extends _$FilteredExerciseEventCopyWithImpl<$Res>
    implements _$SearchedCopyWith<$Res> {
  __$SearchedCopyWithImpl(_Searched _value, $Res Function(_Searched) _then)
      : super(_value, (v) => _then(v as _Searched));

  @override
  _Searched get _value => super._value as _Searched;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(_Searched(
      term: term == freezed ? _value.term : term as String,
    ));
  }
}

class _$_Searched implements _Searched {
  const _$_Searched({@required this.term}) : assert(term != null);

  @override
  final String term;

  @override
  String toString() {
    return 'FilteredExerciseEvent.searched(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Searched &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @override
  _$SearchedCopyWith<_Searched> get copyWith =>
      __$SearchedCopyWithImpl<_Searched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searched(String term),
    @required Result refreshed(List<Exercise> exercises),
    @required Result filtered(Exercise exercise),
    @required Result resetFiltered(),
  }) {
    assert(searched != null);
    assert(refreshed != null);
    assert(filtered != null);
    assert(resetFiltered != null);
    return searched(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searched(String term),
    Result refreshed(List<Exercise> exercises),
    Result filtered(Exercise exercise),
    Result resetFiltered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searched != null) {
      return searched(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searched(_Searched value),
    @required Result refreshed(_Refreshed value),
    @required Result filtered(_Filtered value),
    @required Result resetFiltered(_ResetFiltered value),
  }) {
    assert(searched != null);
    assert(refreshed != null);
    assert(filtered != null);
    assert(resetFiltered != null);
    return searched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searched(_Searched value),
    Result refreshed(_Refreshed value),
    Result filtered(_Filtered value),
    Result resetFiltered(_ResetFiltered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements FilteredExerciseEvent {
  const factory _Searched({@required String term}) = _$_Searched;

  String get term;
  _$SearchedCopyWith<_Searched> get copyWith;
}

abstract class _$RefreshedCopyWith<$Res> {
  factory _$RefreshedCopyWith(
          _Refreshed value, $Res Function(_Refreshed) then) =
      __$RefreshedCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

class __$RefreshedCopyWithImpl<$Res>
    extends _$FilteredExerciseEventCopyWithImpl<$Res>
    implements _$RefreshedCopyWith<$Res> {
  __$RefreshedCopyWithImpl(_Refreshed _value, $Res Function(_Refreshed) _then)
      : super(_value, (v) => _then(v as _Refreshed));

  @override
  _Refreshed get _value => super._value as _Refreshed;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(_Refreshed(
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

class _$_Refreshed implements _Refreshed {
  const _$_Refreshed({@required this.exercises}) : assert(exercises != null);

  @override
  final List<Exercise> exercises;

  @override
  String toString() {
    return 'FilteredExerciseEvent.refreshed(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Refreshed &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercises);

  @override
  _$RefreshedCopyWith<_Refreshed> get copyWith =>
      __$RefreshedCopyWithImpl<_Refreshed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searched(String term),
    @required Result refreshed(List<Exercise> exercises),
    @required Result filtered(Exercise exercise),
    @required Result resetFiltered(),
  }) {
    assert(searched != null);
    assert(refreshed != null);
    assert(filtered != null);
    assert(resetFiltered != null);
    return refreshed(exercises);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searched(String term),
    Result refreshed(List<Exercise> exercises),
    Result filtered(Exercise exercise),
    Result resetFiltered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshed != null) {
      return refreshed(exercises);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searched(_Searched value),
    @required Result refreshed(_Refreshed value),
    @required Result filtered(_Filtered value),
    @required Result resetFiltered(_ResetFiltered value),
  }) {
    assert(searched != null);
    assert(refreshed != null);
    assert(filtered != null);
    assert(resetFiltered != null);
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searched(_Searched value),
    Result refreshed(_Refreshed value),
    Result filtered(_Filtered value),
    Result resetFiltered(_ResetFiltered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements FilteredExerciseEvent {
  const factory _Refreshed({@required List<Exercise> exercises}) = _$_Refreshed;

  List<Exercise> get exercises;
  _$RefreshedCopyWith<_Refreshed> get copyWith;
}

abstract class _$FilteredCopyWith<$Res> {
  factory _$FilteredCopyWith(_Filtered value, $Res Function(_Filtered) then) =
      __$FilteredCopyWithImpl<$Res>;
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

class __$FilteredCopyWithImpl<$Res>
    extends _$FilteredExerciseEventCopyWithImpl<$Res>
    implements _$FilteredCopyWith<$Res> {
  __$FilteredCopyWithImpl(_Filtered _value, $Res Function(_Filtered) _then)
      : super(_value, (v) => _then(v as _Filtered));

  @override
  _Filtered get _value => super._value as _Filtered;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_Filtered(
      exercise == freezed ? _value.exercise : exercise as Exercise,
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

class _$_Filtered implements _Filtered {
  const _$_Filtered(this.exercise) : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'FilteredExerciseEvent.filtered(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Filtered &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$FilteredCopyWith<_Filtered> get copyWith =>
      __$FilteredCopyWithImpl<_Filtered>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searched(String term),
    @required Result refreshed(List<Exercise> exercises),
    @required Result filtered(Exercise exercise),
    @required Result resetFiltered(),
  }) {
    assert(searched != null);
    assert(refreshed != null);
    assert(filtered != null);
    assert(resetFiltered != null);
    return filtered(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searched(String term),
    Result refreshed(List<Exercise> exercises),
    Result filtered(Exercise exercise),
    Result resetFiltered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filtered != null) {
      return filtered(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searched(_Searched value),
    @required Result refreshed(_Refreshed value),
    @required Result filtered(_Filtered value),
    @required Result resetFiltered(_ResetFiltered value),
  }) {
    assert(searched != null);
    assert(refreshed != null);
    assert(filtered != null);
    assert(resetFiltered != null);
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searched(_Searched value),
    Result refreshed(_Refreshed value),
    Result filtered(_Filtered value),
    Result resetFiltered(_ResetFiltered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements FilteredExerciseEvent {
  const factory _Filtered(Exercise exercise) = _$_Filtered;

  Exercise get exercise;
  _$FilteredCopyWith<_Filtered> get copyWith;
}

abstract class _$ResetFilteredCopyWith<$Res> {
  factory _$ResetFilteredCopyWith(
          _ResetFiltered value, $Res Function(_ResetFiltered) then) =
      __$ResetFilteredCopyWithImpl<$Res>;
}

class __$ResetFilteredCopyWithImpl<$Res>
    extends _$FilteredExerciseEventCopyWithImpl<$Res>
    implements _$ResetFilteredCopyWith<$Res> {
  __$ResetFilteredCopyWithImpl(
      _ResetFiltered _value, $Res Function(_ResetFiltered) _then)
      : super(_value, (v) => _then(v as _ResetFiltered));

  @override
  _ResetFiltered get _value => super._value as _ResetFiltered;
}

class _$_ResetFiltered implements _ResetFiltered {
  const _$_ResetFiltered();

  @override
  String toString() {
    return 'FilteredExerciseEvent.resetFiltered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetFiltered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searched(String term),
    @required Result refreshed(List<Exercise> exercises),
    @required Result filtered(Exercise exercise),
    @required Result resetFiltered(),
  }) {
    assert(searched != null);
    assert(refreshed != null);
    assert(filtered != null);
    assert(resetFiltered != null);
    return resetFiltered();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searched(String term),
    Result refreshed(List<Exercise> exercises),
    Result filtered(Exercise exercise),
    Result resetFiltered(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetFiltered != null) {
      return resetFiltered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searched(_Searched value),
    @required Result refreshed(_Refreshed value),
    @required Result filtered(_Filtered value),
    @required Result resetFiltered(_ResetFiltered value),
  }) {
    assert(searched != null);
    assert(refreshed != null);
    assert(filtered != null);
    assert(resetFiltered != null);
    return resetFiltered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searched(_Searched value),
    Result refreshed(_Refreshed value),
    Result filtered(_Filtered value),
    Result resetFiltered(_ResetFiltered value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetFiltered != null) {
      return resetFiltered(this);
    }
    return orElse();
  }
}

abstract class _ResetFiltered implements FilteredExerciseEvent {
  const factory _ResetFiltered() = _$_ResetFiltered;
}

class _$FilteredExerciseStateTearOff {
  const _$FilteredExerciseStateTearOff();

  _FilteredExerciseState call(
      {@required Option<List<Exercise>> exercises,
      @required String searchTerm,
      @required bool isLoading,
      @required Exercise filteredExercise}) {
    return _FilteredExerciseState(
      exercises: exercises,
      searchTerm: searchTerm,
      isLoading: isLoading,
      filteredExercise: filteredExercise,
    );
  }
}

// ignore: unused_element
const $FilteredExerciseState = _$FilteredExerciseStateTearOff();

mixin _$FilteredExerciseState {
  Option<List<Exercise>> get exercises;
  String get searchTerm;
  bool get isLoading;
  Exercise get filteredExercise;

  $FilteredExerciseStateCopyWith<FilteredExerciseState> get copyWith;
}

abstract class $FilteredExerciseStateCopyWith<$Res> {
  factory $FilteredExerciseStateCopyWith(FilteredExerciseState value,
          $Res Function(FilteredExerciseState) then) =
      _$FilteredExerciseStateCopyWithImpl<$Res>;
  $Res call(
      {Option<List<Exercise>> exercises,
      String searchTerm,
      bool isLoading,
      Exercise filteredExercise});

  $ExerciseCopyWith<$Res> get filteredExercise;
}

class _$FilteredExerciseStateCopyWithImpl<$Res>
    implements $FilteredExerciseStateCopyWith<$Res> {
  _$FilteredExerciseStateCopyWithImpl(this._value, this._then);

  final FilteredExerciseState _value;
  // ignore: unused_field
  final $Res Function(FilteredExerciseState) _then;

  @override
  $Res call({
    Object exercises = freezed,
    Object searchTerm = freezed,
    Object isLoading = freezed,
    Object filteredExercise = freezed,
  }) {
    return _then(_value.copyWith(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises as Option<List<Exercise>>,
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      filteredExercise: filteredExercise == freezed
          ? _value.filteredExercise
          : filteredExercise as Exercise,
    ));
  }

  @override
  $ExerciseCopyWith<$Res> get filteredExercise {
    if (_value.filteredExercise == null) {
      return null;
    }
    return $ExerciseCopyWith<$Res>(_value.filteredExercise, (value) {
      return _then(_value.copyWith(filteredExercise: value));
    });
  }
}

abstract class _$FilteredExerciseStateCopyWith<$Res>
    implements $FilteredExerciseStateCopyWith<$Res> {
  factory _$FilteredExerciseStateCopyWith(_FilteredExerciseState value,
          $Res Function(_FilteredExerciseState) then) =
      __$FilteredExerciseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<List<Exercise>> exercises,
      String searchTerm,
      bool isLoading,
      Exercise filteredExercise});

  @override
  $ExerciseCopyWith<$Res> get filteredExercise;
}

class __$FilteredExerciseStateCopyWithImpl<$Res>
    extends _$FilteredExerciseStateCopyWithImpl<$Res>
    implements _$FilteredExerciseStateCopyWith<$Res> {
  __$FilteredExerciseStateCopyWithImpl(_FilteredExerciseState _value,
      $Res Function(_FilteredExerciseState) _then)
      : super(_value, (v) => _then(v as _FilteredExerciseState));

  @override
  _FilteredExerciseState get _value => super._value as _FilteredExerciseState;

  @override
  $Res call({
    Object exercises = freezed,
    Object searchTerm = freezed,
    Object isLoading = freezed,
    Object filteredExercise = freezed,
  }) {
    return _then(_FilteredExerciseState(
      exercises: exercises == freezed
          ? _value.exercises
          : exercises as Option<List<Exercise>>,
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      filteredExercise: filteredExercise == freezed
          ? _value.filteredExercise
          : filteredExercise as Exercise,
    ));
  }
}

class _$_FilteredExerciseState extends _FilteredExerciseState {
  const _$_FilteredExerciseState(
      {@required this.exercises,
      @required this.searchTerm,
      @required this.isLoading,
      @required this.filteredExercise})
      : assert(exercises != null),
        assert(searchTerm != null),
        assert(isLoading != null),
        assert(filteredExercise != null),
        super._();

  @override
  final Option<List<Exercise>> exercises;
  @override
  final String searchTerm;
  @override
  final bool isLoading;
  @override
  final Exercise filteredExercise;

  @override
  String toString() {
    return 'FilteredExerciseState(exercises: $exercises, searchTerm: $searchTerm, isLoading: $isLoading, filteredExercise: $filteredExercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilteredExerciseState &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.filteredExercise, filteredExercise) ||
                const DeepCollectionEquality()
                    .equals(other.filteredExercise, filteredExercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(searchTerm) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(filteredExercise);

  @override
  _$FilteredExerciseStateCopyWith<_FilteredExerciseState> get copyWith =>
      __$FilteredExerciseStateCopyWithImpl<_FilteredExerciseState>(
          this, _$identity);
}

abstract class _FilteredExerciseState extends FilteredExerciseState {
  const _FilteredExerciseState._() : super._();
  const factory _FilteredExerciseState(
      {@required Option<List<Exercise>> exercises,
      @required String searchTerm,
      @required bool isLoading,
      @required Exercise filteredExercise}) = _$_FilteredExerciseState;

  @override
  Option<List<Exercise>> get exercises;
  @override
  String get searchTerm;
  @override
  bool get isLoading;
  @override
  Exercise get filteredExercise;
  @override
  _$FilteredExerciseStateCopyWith<_FilteredExerciseState> get copyWith;
}
