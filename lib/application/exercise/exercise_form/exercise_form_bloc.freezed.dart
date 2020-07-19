// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseFormEventTearOff {
  const _$ExerciseFormEventTearOff();

  _ExerciseFormInit init(Option<Exercise> exerciseOption) {
    return _ExerciseFormInit(
      exerciseOption,
    );
  }

  _ExerciseNamedChanged nameChanged(String name) {
    return _ExerciseNamedChanged(
      name,
    );
  }

  _ExerciseThumbnailPathChanged thumbnailPathChanged(String path) {
    return _ExerciseThumbnailPathChanged(
      path,
    );
  }

  _ExerciseVideoPathChanged videoPathChanged(String path) {
    return _ExerciseVideoPathChanged(
      path,
    );
  }

  _ExerciseLevelChanged levelsChanged(List<ExerciseLevel> levels) {
    return _ExerciseLevelChanged(
      levels,
    );
  }

  _ExerciseToolChanged toolsChanged(List<ExerciseTool> tools) {
    return _ExerciseToolChanged(
      tools,
    );
  }

  _ExerciseTypeChanged typesChanged(List<ExerciseType> types) {
    return _ExerciseTypeChanged(
      types,
    );
  }

  _ExercisePrimaryTargetChanged primaryTargetsChanged(
      List<ExerciseTarget> primaryTargets) {
    return _ExercisePrimaryTargetChanged(
      primaryTargets,
    );
  }

  _ExerciseSecondaryTargetChanged secondaryTargetsChanged(
      List<ExerciseTarget> secondaryTargets) {
    return _ExerciseSecondaryTargetChanged(
      secondaryTargets,
    );
  }

  _ExerciseAdded added() {
    return const _ExerciseAdded();
  }
}

// ignore: unused_element
const $ExerciseFormEvent = _$ExerciseFormEventTearOff();

mixin _$ExerciseFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  });
}

abstract class $ExerciseFormEventCopyWith<$Res> {
  factory $ExerciseFormEventCopyWith(
          ExerciseFormEvent value, $Res Function(ExerciseFormEvent) then) =
      _$ExerciseFormEventCopyWithImpl<$Res>;
}

class _$ExerciseFormEventCopyWithImpl<$Res>
    implements $ExerciseFormEventCopyWith<$Res> {
  _$ExerciseFormEventCopyWithImpl(this._value, this._then);

  final ExerciseFormEvent _value;
  // ignore: unused_field
  final $Res Function(ExerciseFormEvent) _then;
}

abstract class _$ExerciseFormInitCopyWith<$Res> {
  factory _$ExerciseFormInitCopyWith(
          _ExerciseFormInit value, $Res Function(_ExerciseFormInit) then) =
      __$ExerciseFormInitCopyWithImpl<$Res>;
  $Res call({Option<Exercise> exerciseOption});
}

class __$ExerciseFormInitCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseFormInitCopyWith<$Res> {
  __$ExerciseFormInitCopyWithImpl(
      _ExerciseFormInit _value, $Res Function(_ExerciseFormInit) _then)
      : super(_value, (v) => _then(v as _ExerciseFormInit));

  @override
  _ExerciseFormInit get _value => super._value as _ExerciseFormInit;

  @override
  $Res call({
    Object exerciseOption = freezed,
  }) {
    return _then(_ExerciseFormInit(
      exerciseOption == freezed
          ? _value.exerciseOption
          : exerciseOption as Option<Exercise>,
    ));
  }
}

class _$_ExerciseFormInit implements _ExerciseFormInit {
  const _$_ExerciseFormInit(this.exerciseOption)
      : assert(exerciseOption != null);

  @override
  final Option<Exercise> exerciseOption;

  @override
  String toString() {
    return 'ExerciseFormEvent.init(exerciseOption: $exerciseOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseFormInit &&
            (identical(other.exerciseOption, exerciseOption) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseOption, exerciseOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseOption);

  @override
  _$ExerciseFormInitCopyWith<_ExerciseFormInit> get copyWith =>
      __$ExerciseFormInitCopyWithImpl<_ExerciseFormInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return init(exerciseOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(exerciseOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _ExerciseFormInit implements ExerciseFormEvent {
  const factory _ExerciseFormInit(Option<Exercise> exerciseOption) =
      _$_ExerciseFormInit;

  Option<Exercise> get exerciseOption;
  _$ExerciseFormInitCopyWith<_ExerciseFormInit> get copyWith;
}

abstract class _$ExerciseNamedChangedCopyWith<$Res> {
  factory _$ExerciseNamedChangedCopyWith(_ExerciseNamedChanged value,
          $Res Function(_ExerciseNamedChanged) then) =
      __$ExerciseNamedChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$ExerciseNamedChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseNamedChangedCopyWith<$Res> {
  __$ExerciseNamedChangedCopyWithImpl(
      _ExerciseNamedChanged _value, $Res Function(_ExerciseNamedChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseNamedChanged));

  @override
  _ExerciseNamedChanged get _value => super._value as _ExerciseNamedChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ExerciseNamedChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_ExerciseNamedChanged implements _ExerciseNamedChanged {
  const _$_ExerciseNamedChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'ExerciseFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseNamedChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$ExerciseNamedChangedCopyWith<_ExerciseNamedChanged> get copyWith =>
      __$ExerciseNamedChangedCopyWithImpl<_ExerciseNamedChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
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
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseNamedChanged implements ExerciseFormEvent {
  const factory _ExerciseNamedChanged(String name) = _$_ExerciseNamedChanged;

  String get name;
  _$ExerciseNamedChangedCopyWith<_ExerciseNamedChanged> get copyWith;
}

abstract class _$ExerciseThumbnailPathChangedCopyWith<$Res> {
  factory _$ExerciseThumbnailPathChangedCopyWith(
          _ExerciseThumbnailPathChanged value,
          $Res Function(_ExerciseThumbnailPathChanged) then) =
      __$ExerciseThumbnailPathChangedCopyWithImpl<$Res>;
  $Res call({String path});
}

class __$ExerciseThumbnailPathChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseThumbnailPathChangedCopyWith<$Res> {
  __$ExerciseThumbnailPathChangedCopyWithImpl(
      _ExerciseThumbnailPathChanged _value,
      $Res Function(_ExerciseThumbnailPathChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseThumbnailPathChanged));

  @override
  _ExerciseThumbnailPathChanged get _value =>
      super._value as _ExerciseThumbnailPathChanged;

  @override
  $Res call({
    Object path = freezed,
  }) {
    return _then(_ExerciseThumbnailPathChanged(
      path == freezed ? _value.path : path as String,
    ));
  }
}

class _$_ExerciseThumbnailPathChanged implements _ExerciseThumbnailPathChanged {
  const _$_ExerciseThumbnailPathChanged(this.path) : assert(path != null);

  @override
  final String path;

  @override
  String toString() {
    return 'ExerciseFormEvent.thumbnailPathChanged(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseThumbnailPathChanged &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @override
  _$ExerciseThumbnailPathChangedCopyWith<_ExerciseThumbnailPathChanged>
      get copyWith => __$ExerciseThumbnailPathChangedCopyWithImpl<
          _ExerciseThumbnailPathChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return thumbnailPathChanged(path);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (thumbnailPathChanged != null) {
      return thumbnailPathChanged(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return thumbnailPathChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (thumbnailPathChanged != null) {
      return thumbnailPathChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseThumbnailPathChanged implements ExerciseFormEvent {
  const factory _ExerciseThumbnailPathChanged(String path) =
      _$_ExerciseThumbnailPathChanged;

  String get path;
  _$ExerciseThumbnailPathChangedCopyWith<_ExerciseThumbnailPathChanged>
      get copyWith;
}

abstract class _$ExerciseVideoPathChangedCopyWith<$Res> {
  factory _$ExerciseVideoPathChangedCopyWith(_ExerciseVideoPathChanged value,
          $Res Function(_ExerciseVideoPathChanged) then) =
      __$ExerciseVideoPathChangedCopyWithImpl<$Res>;
  $Res call({String path});
}

class __$ExerciseVideoPathChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseVideoPathChangedCopyWith<$Res> {
  __$ExerciseVideoPathChangedCopyWithImpl(_ExerciseVideoPathChanged _value,
      $Res Function(_ExerciseVideoPathChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseVideoPathChanged));

  @override
  _ExerciseVideoPathChanged get _value =>
      super._value as _ExerciseVideoPathChanged;

  @override
  $Res call({
    Object path = freezed,
  }) {
    return _then(_ExerciseVideoPathChanged(
      path == freezed ? _value.path : path as String,
    ));
  }
}

class _$_ExerciseVideoPathChanged implements _ExerciseVideoPathChanged {
  const _$_ExerciseVideoPathChanged(this.path) : assert(path != null);

  @override
  final String path;

  @override
  String toString() {
    return 'ExerciseFormEvent.videoPathChanged(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseVideoPathChanged &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @override
  _$ExerciseVideoPathChangedCopyWith<_ExerciseVideoPathChanged> get copyWith =>
      __$ExerciseVideoPathChangedCopyWithImpl<_ExerciseVideoPathChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return videoPathChanged(path);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (videoPathChanged != null) {
      return videoPathChanged(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return videoPathChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (videoPathChanged != null) {
      return videoPathChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseVideoPathChanged implements ExerciseFormEvent {
  const factory _ExerciseVideoPathChanged(String path) =
      _$_ExerciseVideoPathChanged;

  String get path;
  _$ExerciseVideoPathChangedCopyWith<_ExerciseVideoPathChanged> get copyWith;
}

abstract class _$ExerciseLevelChangedCopyWith<$Res> {
  factory _$ExerciseLevelChangedCopyWith(_ExerciseLevelChanged value,
          $Res Function(_ExerciseLevelChanged) then) =
      __$ExerciseLevelChangedCopyWithImpl<$Res>;
  $Res call({List<ExerciseLevel> levels});
}

class __$ExerciseLevelChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseLevelChangedCopyWith<$Res> {
  __$ExerciseLevelChangedCopyWithImpl(
      _ExerciseLevelChanged _value, $Res Function(_ExerciseLevelChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseLevelChanged));

  @override
  _ExerciseLevelChanged get _value => super._value as _ExerciseLevelChanged;

  @override
  $Res call({
    Object levels = freezed,
  }) {
    return _then(_ExerciseLevelChanged(
      levels == freezed ? _value.levels : levels as List<ExerciseLevel>,
    ));
  }
}

class _$_ExerciseLevelChanged implements _ExerciseLevelChanged {
  const _$_ExerciseLevelChanged(this.levels) : assert(levels != null);

  @override
  final List<ExerciseLevel> levels;

  @override
  String toString() {
    return 'ExerciseFormEvent.levelsChanged(levels: $levels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseLevelChanged &&
            (identical(other.levels, levels) ||
                const DeepCollectionEquality().equals(other.levels, levels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(levels);

  @override
  _$ExerciseLevelChangedCopyWith<_ExerciseLevelChanged> get copyWith =>
      __$ExerciseLevelChangedCopyWithImpl<_ExerciseLevelChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return levelsChanged(levels);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (levelsChanged != null) {
      return levelsChanged(levels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return levelsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (levelsChanged != null) {
      return levelsChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseLevelChanged implements ExerciseFormEvent {
  const factory _ExerciseLevelChanged(List<ExerciseLevel> levels) =
      _$_ExerciseLevelChanged;

  List<ExerciseLevel> get levels;
  _$ExerciseLevelChangedCopyWith<_ExerciseLevelChanged> get copyWith;
}

abstract class _$ExerciseToolChangedCopyWith<$Res> {
  factory _$ExerciseToolChangedCopyWith(_ExerciseToolChanged value,
          $Res Function(_ExerciseToolChanged) then) =
      __$ExerciseToolChangedCopyWithImpl<$Res>;
  $Res call({List<ExerciseTool> tools});
}

class __$ExerciseToolChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseToolChangedCopyWith<$Res> {
  __$ExerciseToolChangedCopyWithImpl(
      _ExerciseToolChanged _value, $Res Function(_ExerciseToolChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseToolChanged));

  @override
  _ExerciseToolChanged get _value => super._value as _ExerciseToolChanged;

  @override
  $Res call({
    Object tools = freezed,
  }) {
    return _then(_ExerciseToolChanged(
      tools == freezed ? _value.tools : tools as List<ExerciseTool>,
    ));
  }
}

class _$_ExerciseToolChanged implements _ExerciseToolChanged {
  const _$_ExerciseToolChanged(this.tools) : assert(tools != null);

  @override
  final List<ExerciseTool> tools;

  @override
  String toString() {
    return 'ExerciseFormEvent.toolsChanged(tools: $tools)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseToolChanged &&
            (identical(other.tools, tools) ||
                const DeepCollectionEquality().equals(other.tools, tools)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tools);

  @override
  _$ExerciseToolChangedCopyWith<_ExerciseToolChanged> get copyWith =>
      __$ExerciseToolChangedCopyWithImpl<_ExerciseToolChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return toolsChanged(tools);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toolsChanged != null) {
      return toolsChanged(tools);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return toolsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toolsChanged != null) {
      return toolsChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseToolChanged implements ExerciseFormEvent {
  const factory _ExerciseToolChanged(List<ExerciseTool> tools) =
      _$_ExerciseToolChanged;

  List<ExerciseTool> get tools;
  _$ExerciseToolChangedCopyWith<_ExerciseToolChanged> get copyWith;
}

abstract class _$ExerciseTypeChangedCopyWith<$Res> {
  factory _$ExerciseTypeChangedCopyWith(_ExerciseTypeChanged value,
          $Res Function(_ExerciseTypeChanged) then) =
      __$ExerciseTypeChangedCopyWithImpl<$Res>;
  $Res call({List<ExerciseType> types});
}

class __$ExerciseTypeChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseTypeChangedCopyWith<$Res> {
  __$ExerciseTypeChangedCopyWithImpl(
      _ExerciseTypeChanged _value, $Res Function(_ExerciseTypeChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseTypeChanged));

  @override
  _ExerciseTypeChanged get _value => super._value as _ExerciseTypeChanged;

  @override
  $Res call({
    Object types = freezed,
  }) {
    return _then(_ExerciseTypeChanged(
      types == freezed ? _value.types : types as List<ExerciseType>,
    ));
  }
}

class _$_ExerciseTypeChanged implements _ExerciseTypeChanged {
  const _$_ExerciseTypeChanged(this.types) : assert(types != null);

  @override
  final List<ExerciseType> types;

  @override
  String toString() {
    return 'ExerciseFormEvent.typesChanged(types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseTypeChanged &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(types);

  @override
  _$ExerciseTypeChangedCopyWith<_ExerciseTypeChanged> get copyWith =>
      __$ExerciseTypeChangedCopyWithImpl<_ExerciseTypeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return typesChanged(types);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (typesChanged != null) {
      return typesChanged(types);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return typesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (typesChanged != null) {
      return typesChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseTypeChanged implements ExerciseFormEvent {
  const factory _ExerciseTypeChanged(List<ExerciseType> types) =
      _$_ExerciseTypeChanged;

  List<ExerciseType> get types;
  _$ExerciseTypeChangedCopyWith<_ExerciseTypeChanged> get copyWith;
}

abstract class _$ExercisePrimaryTargetChangedCopyWith<$Res> {
  factory _$ExercisePrimaryTargetChangedCopyWith(
          _ExercisePrimaryTargetChanged value,
          $Res Function(_ExercisePrimaryTargetChanged) then) =
      __$ExercisePrimaryTargetChangedCopyWithImpl<$Res>;
  $Res call({List<ExerciseTarget> primaryTargets});
}

class __$ExercisePrimaryTargetChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExercisePrimaryTargetChangedCopyWith<$Res> {
  __$ExercisePrimaryTargetChangedCopyWithImpl(
      _ExercisePrimaryTargetChanged _value,
      $Res Function(_ExercisePrimaryTargetChanged) _then)
      : super(_value, (v) => _then(v as _ExercisePrimaryTargetChanged));

  @override
  _ExercisePrimaryTargetChanged get _value =>
      super._value as _ExercisePrimaryTargetChanged;

  @override
  $Res call({
    Object primaryTargets = freezed,
  }) {
    return _then(_ExercisePrimaryTargetChanged(
      primaryTargets == freezed
          ? _value.primaryTargets
          : primaryTargets as List<ExerciseTarget>,
    ));
  }
}

class _$_ExercisePrimaryTargetChanged implements _ExercisePrimaryTargetChanged {
  const _$_ExercisePrimaryTargetChanged(this.primaryTargets)
      : assert(primaryTargets != null);

  @override
  final List<ExerciseTarget> primaryTargets;

  @override
  String toString() {
    return 'ExerciseFormEvent.primaryTargetsChanged(primaryTargets: $primaryTargets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExercisePrimaryTargetChanged &&
            (identical(other.primaryTargets, primaryTargets) ||
                const DeepCollectionEquality()
                    .equals(other.primaryTargets, primaryTargets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(primaryTargets);

  @override
  _$ExercisePrimaryTargetChangedCopyWith<_ExercisePrimaryTargetChanged>
      get copyWith => __$ExercisePrimaryTargetChangedCopyWithImpl<
          _ExercisePrimaryTargetChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return primaryTargetsChanged(primaryTargets);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (primaryTargetsChanged != null) {
      return primaryTargetsChanged(primaryTargets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return primaryTargetsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (primaryTargetsChanged != null) {
      return primaryTargetsChanged(this);
    }
    return orElse();
  }
}

abstract class _ExercisePrimaryTargetChanged implements ExerciseFormEvent {
  const factory _ExercisePrimaryTargetChanged(
      List<ExerciseTarget> primaryTargets) = _$_ExercisePrimaryTargetChanged;

  List<ExerciseTarget> get primaryTargets;
  _$ExercisePrimaryTargetChangedCopyWith<_ExercisePrimaryTargetChanged>
      get copyWith;
}

abstract class _$ExerciseSecondaryTargetChangedCopyWith<$Res> {
  factory _$ExerciseSecondaryTargetChangedCopyWith(
          _ExerciseSecondaryTargetChanged value,
          $Res Function(_ExerciseSecondaryTargetChanged) then) =
      __$ExerciseSecondaryTargetChangedCopyWithImpl<$Res>;
  $Res call({List<ExerciseTarget> secondaryTargets});
}

class __$ExerciseSecondaryTargetChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseSecondaryTargetChangedCopyWith<$Res> {
  __$ExerciseSecondaryTargetChangedCopyWithImpl(
      _ExerciseSecondaryTargetChanged _value,
      $Res Function(_ExerciseSecondaryTargetChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseSecondaryTargetChanged));

  @override
  _ExerciseSecondaryTargetChanged get _value =>
      super._value as _ExerciseSecondaryTargetChanged;

  @override
  $Res call({
    Object secondaryTargets = freezed,
  }) {
    return _then(_ExerciseSecondaryTargetChanged(
      secondaryTargets == freezed
          ? _value.secondaryTargets
          : secondaryTargets as List<ExerciseTarget>,
    ));
  }
}

class _$_ExerciseSecondaryTargetChanged
    implements _ExerciseSecondaryTargetChanged {
  const _$_ExerciseSecondaryTargetChanged(this.secondaryTargets)
      : assert(secondaryTargets != null);

  @override
  final List<ExerciseTarget> secondaryTargets;

  @override
  String toString() {
    return 'ExerciseFormEvent.secondaryTargetsChanged(secondaryTargets: $secondaryTargets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseSecondaryTargetChanged &&
            (identical(other.secondaryTargets, secondaryTargets) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryTargets, secondaryTargets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secondaryTargets);

  @override
  _$ExerciseSecondaryTargetChangedCopyWith<_ExerciseSecondaryTargetChanged>
      get copyWith => __$ExerciseSecondaryTargetChangedCopyWithImpl<
          _ExerciseSecondaryTargetChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return secondaryTargetsChanged(secondaryTargets);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (secondaryTargetsChanged != null) {
      return secondaryTargetsChanged(secondaryTargets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return secondaryTargetsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (secondaryTargetsChanged != null) {
      return secondaryTargetsChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseSecondaryTargetChanged implements ExerciseFormEvent {
  const factory _ExerciseSecondaryTargetChanged(
          List<ExerciseTarget> secondaryTargets) =
      _$_ExerciseSecondaryTargetChanged;

  List<ExerciseTarget> get secondaryTargets;
  _$ExerciseSecondaryTargetChangedCopyWith<_ExerciseSecondaryTargetChanged>
      get copyWith;
}

abstract class _$ExerciseAddedCopyWith<$Res> {
  factory _$ExerciseAddedCopyWith(
          _ExerciseAdded value, $Res Function(_ExerciseAdded) then) =
      __$ExerciseAddedCopyWithImpl<$Res>;
}

class __$ExerciseAddedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseAddedCopyWith<$Res> {
  __$ExerciseAddedCopyWithImpl(
      _ExerciseAdded _value, $Res Function(_ExerciseAdded) _then)
      : super(_value, (v) => _then(v as _ExerciseAdded));

  @override
  _ExerciseAdded get _value => super._value as _ExerciseAdded;
}

class _$_ExerciseAdded implements _ExerciseAdded {
  const _$_ExerciseAdded();

  @override
  String toString() {
    return 'ExerciseFormEvent.added()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExerciseAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exerciseOption),
    @required Result nameChanged(String name),
    @required Result thumbnailPathChanged(String path),
    @required Result videoPathChanged(String path),
    @required Result levelsChanged(List<ExerciseLevel> levels),
    @required Result toolsChanged(List<ExerciseTool> tools),
    @required Result typesChanged(List<ExerciseType> types),
    @required Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    @required
        Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    @required Result added(),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return added();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exerciseOption),
    Result nameChanged(String name),
    Result thumbnailPathChanged(String path),
    Result videoPathChanged(String path),
    Result levelsChanged(List<ExerciseLevel> levels),
    Result toolsChanged(List<ExerciseTool> tools),
    Result typesChanged(List<ExerciseType> types),
    Result primaryTargetsChanged(List<ExerciseTarget> primaryTargets),
    Result secondaryTargetsChanged(List<ExerciseTarget> secondaryTargets),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result nameChanged(_ExerciseNamedChanged value),
    @required Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    @required Result videoPathChanged(_ExerciseVideoPathChanged value),
    @required Result levelsChanged(_ExerciseLevelChanged value),
    @required Result toolsChanged(_ExerciseToolChanged value),
    @required Result typesChanged(_ExerciseTypeChanged value),
    @required Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    @required
        Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(nameChanged != null);
    assert(thumbnailPathChanged != null);
    assert(videoPathChanged != null);
    assert(levelsChanged != null);
    assert(toolsChanged != null);
    assert(typesChanged != null);
    assert(primaryTargetsChanged != null);
    assert(secondaryTargetsChanged != null);
    assert(added != null);
    return added(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result nameChanged(_ExerciseNamedChanged value),
    Result thumbnailPathChanged(_ExerciseThumbnailPathChanged value),
    Result videoPathChanged(_ExerciseVideoPathChanged value),
    Result levelsChanged(_ExerciseLevelChanged value),
    Result toolsChanged(_ExerciseToolChanged value),
    Result typesChanged(_ExerciseTypeChanged value),
    Result primaryTargetsChanged(_ExercisePrimaryTargetChanged value),
    Result secondaryTargetsChanged(_ExerciseSecondaryTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _ExerciseAdded implements ExerciseFormEvent {
  const factory _ExerciseAdded() = _$_ExerciseAdded;
}

class _$ExerciseFormStateTearOff {
  const _$ExerciseFormStateTearOff();

  _ExerciseFormState call(
      {@required bool isEditing,
      @required bool isAdding,
      @required bool shouldShowErrorMessages,
      @required Exercise exercise,
      @required Option<Either<ExerciseFailure, Unit>> addStatus}) {
    return _ExerciseFormState(
      isEditing: isEditing,
      isAdding: isAdding,
      shouldShowErrorMessages: shouldShowErrorMessages,
      exercise: exercise,
      addStatus: addStatus,
    );
  }
}

// ignore: unused_element
const $ExerciseFormState = _$ExerciseFormStateTearOff();

mixin _$ExerciseFormState {
  bool get isEditing;
  bool get isAdding;
  bool get shouldShowErrorMessages;
  Exercise get exercise;
  Option<Either<ExerciseFailure, Unit>> get addStatus;

  $ExerciseFormStateCopyWith<ExerciseFormState> get copyWith;
}

abstract class $ExerciseFormStateCopyWith<$Res> {
  factory $ExerciseFormStateCopyWith(
          ExerciseFormState value, $Res Function(ExerciseFormState) then) =
      _$ExerciseFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEditing,
      bool isAdding,
      bool shouldShowErrorMessages,
      Exercise exercise,
      Option<Either<ExerciseFailure, Unit>> addStatus});

  $ExerciseCopyWith<$Res> get exercise;
}

class _$ExerciseFormStateCopyWithImpl<$Res>
    implements $ExerciseFormStateCopyWith<$Res> {
  _$ExerciseFormStateCopyWithImpl(this._value, this._then);

  final ExerciseFormState _value;
  // ignore: unused_field
  final $Res Function(ExerciseFormState) _then;

  @override
  $Res call({
    Object isEditing = freezed,
    Object isAdding = freezed,
    Object shouldShowErrorMessages = freezed,
    Object exercise = freezed,
    Object addStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      shouldShowErrorMessages: shouldShowErrorMessages == freezed
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages as bool,
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
      addStatus: addStatus == freezed
          ? _value.addStatus
          : addStatus as Option<Either<ExerciseFailure, Unit>>,
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

abstract class _$ExerciseFormStateCopyWith<$Res>
    implements $ExerciseFormStateCopyWith<$Res> {
  factory _$ExerciseFormStateCopyWith(
          _ExerciseFormState value, $Res Function(_ExerciseFormState) then) =
      __$ExerciseFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEditing,
      bool isAdding,
      bool shouldShowErrorMessages,
      Exercise exercise,
      Option<Either<ExerciseFailure, Unit>> addStatus});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

class __$ExerciseFormStateCopyWithImpl<$Res>
    extends _$ExerciseFormStateCopyWithImpl<$Res>
    implements _$ExerciseFormStateCopyWith<$Res> {
  __$ExerciseFormStateCopyWithImpl(
      _ExerciseFormState _value, $Res Function(_ExerciseFormState) _then)
      : super(_value, (v) => _then(v as _ExerciseFormState));

  @override
  _ExerciseFormState get _value => super._value as _ExerciseFormState;

  @override
  $Res call({
    Object isEditing = freezed,
    Object isAdding = freezed,
    Object shouldShowErrorMessages = freezed,
    Object exercise = freezed,
    Object addStatus = freezed,
  }) {
    return _then(_ExerciseFormState(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      shouldShowErrorMessages: shouldShowErrorMessages == freezed
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages as bool,
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
      addStatus: addStatus == freezed
          ? _value.addStatus
          : addStatus as Option<Either<ExerciseFailure, Unit>>,
    ));
  }
}

class _$_ExerciseFormState extends _ExerciseFormState {
  const _$_ExerciseFormState(
      {@required this.isEditing,
      @required this.isAdding,
      @required this.shouldShowErrorMessages,
      @required this.exercise,
      @required this.addStatus})
      : assert(isEditing != null),
        assert(isAdding != null),
        assert(shouldShowErrorMessages != null),
        assert(exercise != null),
        assert(addStatus != null),
        super._();

  @override
  final bool isEditing;
  @override
  final bool isAdding;
  @override
  final bool shouldShowErrorMessages;
  @override
  final Exercise exercise;
  @override
  final Option<Either<ExerciseFailure, Unit>> addStatus;

  @override
  String toString() {
    return 'ExerciseFormState(isEditing: $isEditing, isAdding: $isAdding, shouldShowErrorMessages: $shouldShowErrorMessages, exercise: $exercise, addStatus: $addStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseFormState &&
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
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)) &&
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
      const DeepCollectionEquality().hash(exercise) ^
      const DeepCollectionEquality().hash(addStatus);

  @override
  _$ExerciseFormStateCopyWith<_ExerciseFormState> get copyWith =>
      __$ExerciseFormStateCopyWithImpl<_ExerciseFormState>(this, _$identity);
}

abstract class _ExerciseFormState extends ExerciseFormState {
  const _ExerciseFormState._() : super._();
  const factory _ExerciseFormState(
          {@required bool isEditing,
          @required bool isAdding,
          @required bool shouldShowErrorMessages,
          @required Exercise exercise,
          @required Option<Either<ExerciseFailure, Unit>> addStatus}) =
      _$_ExerciseFormState;

  @override
  bool get isEditing;
  @override
  bool get isAdding;
  @override
  bool get shouldShowErrorMessages;
  @override
  Exercise get exercise;
  @override
  Option<Either<ExerciseFailure, Unit>> get addStatus;
  @override
  _$ExerciseFormStateCopyWith<_ExerciseFormState> get copyWith;
}
