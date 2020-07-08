// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseFormEventTearOff {
  const _$ExerciseFormEventTearOff();

  _ExerciseFormInit init(Option<Exercise> exercise) {
    return _ExerciseFormInit(
      exercise,
    );
  }

  _ExerciseNamedChanged exerciseNameChanged(String name) {
    return _ExerciseNamedChanged(
      name,
    );
  }

  _ExerciseLevelChanged exerciseLevelChanged(ExerciseLevel level) {
    return _ExerciseLevelChanged(
      level,
    );
  }

  _ExerciseToolChanged exerciseToolChanged(ExerciseTool tool) {
    return _ExerciseToolChanged(
      tool,
    );
  }

  _ExerciseTypeChanged exerciseTypeChanged(ExerciseType type) {
    return _ExerciseTypeChanged(
      type,
    );
  }

  _ExerciseTargetChanged exerciseTargetChanged(ExerciseTarget target) {
    return _ExerciseTargetChanged(
      target,
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
    @required Result init(Option<Exercise> exercise),
    @required Result exerciseNameChanged(String name),
    @required Result exerciseLevelChanged(ExerciseLevel level),
    @required Result exerciseToolChanged(ExerciseTool tool),
    @required Result exerciseTypeChanged(ExerciseType type),
    @required Result exerciseTargetChanged(ExerciseTarget target),
    @required Result added(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exercise),
    Result exerciseNameChanged(String name),
    Result exerciseLevelChanged(ExerciseLevel level),
    Result exerciseToolChanged(ExerciseTool tool),
    Result exerciseTypeChanged(ExerciseType type),
    Result exerciseTargetChanged(ExerciseTarget target),
    Result added(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result exerciseNameChanged(_ExerciseNamedChanged value),
    @required Result exerciseLevelChanged(_ExerciseLevelChanged value),
    @required Result exerciseToolChanged(_ExerciseToolChanged value),
    @required Result exerciseTypeChanged(_ExerciseTypeChanged value),
    @required Result exerciseTargetChanged(_ExerciseTargetChanged value),
    @required Result added(_ExerciseAdded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result exerciseNameChanged(_ExerciseNamedChanged value),
    Result exerciseLevelChanged(_ExerciseLevelChanged value),
    Result exerciseToolChanged(_ExerciseToolChanged value),
    Result exerciseTypeChanged(_ExerciseTypeChanged value),
    Result exerciseTargetChanged(_ExerciseTargetChanged value),
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
  $Res call({Option<Exercise> exercise});
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
    Object exercise = freezed,
  }) {
    return _then(_ExerciseFormInit(
      exercise == freezed ? _value.exercise : exercise as Option<Exercise>,
    ));
  }
}

class _$_ExerciseFormInit implements _ExerciseFormInit {
  const _$_ExerciseFormInit(this.exercise) : assert(exercise != null);

  @override
  final Option<Exercise> exercise;

  @override
  String toString() {
    return 'ExerciseFormEvent.init(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseFormInit &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$ExerciseFormInitCopyWith<_ExerciseFormInit> get copyWith =>
      __$ExerciseFormInitCopyWithImpl<_ExerciseFormInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exercise),
    @required Result exerciseNameChanged(String name),
    @required Result exerciseLevelChanged(ExerciseLevel level),
    @required Result exerciseToolChanged(ExerciseTool tool),
    @required Result exerciseTypeChanged(ExerciseType type),
    @required Result exerciseTargetChanged(ExerciseTarget target),
    @required Result added(),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return init(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exercise),
    Result exerciseNameChanged(String name),
    Result exerciseLevelChanged(ExerciseLevel level),
    Result exerciseToolChanged(ExerciseTool tool),
    Result exerciseTypeChanged(ExerciseType type),
    Result exerciseTargetChanged(ExerciseTarget target),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result exerciseNameChanged(_ExerciseNamedChanged value),
    @required Result exerciseLevelChanged(_ExerciseLevelChanged value),
    @required Result exerciseToolChanged(_ExerciseToolChanged value),
    @required Result exerciseTypeChanged(_ExerciseTypeChanged value),
    @required Result exerciseTargetChanged(_ExerciseTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result exerciseNameChanged(_ExerciseNamedChanged value),
    Result exerciseLevelChanged(_ExerciseLevelChanged value),
    Result exerciseToolChanged(_ExerciseToolChanged value),
    Result exerciseTypeChanged(_ExerciseTypeChanged value),
    Result exerciseTargetChanged(_ExerciseTargetChanged value),
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
  const factory _ExerciseFormInit(Option<Exercise> exercise) =
      _$_ExerciseFormInit;

  Option<Exercise> get exercise;
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
    return 'ExerciseFormEvent.exerciseNameChanged(name: $name)';
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
    @required Result init(Option<Exercise> exercise),
    @required Result exerciseNameChanged(String name),
    @required Result exerciseLevelChanged(ExerciseLevel level),
    @required Result exerciseToolChanged(ExerciseTool tool),
    @required Result exerciseTypeChanged(ExerciseType type),
    @required Result exerciseTargetChanged(ExerciseTarget target),
    @required Result added(),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseNameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exercise),
    Result exerciseNameChanged(String name),
    Result exerciseLevelChanged(ExerciseLevel level),
    Result exerciseToolChanged(ExerciseTool tool),
    Result exerciseTypeChanged(ExerciseType type),
    Result exerciseTargetChanged(ExerciseTarget target),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseNameChanged != null) {
      return exerciseNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result exerciseNameChanged(_ExerciseNamedChanged value),
    @required Result exerciseLevelChanged(_ExerciseLevelChanged value),
    @required Result exerciseToolChanged(_ExerciseToolChanged value),
    @required Result exerciseTypeChanged(_ExerciseTypeChanged value),
    @required Result exerciseTargetChanged(_ExerciseTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result exerciseNameChanged(_ExerciseNamedChanged value),
    Result exerciseLevelChanged(_ExerciseLevelChanged value),
    Result exerciseToolChanged(_ExerciseToolChanged value),
    Result exerciseTypeChanged(_ExerciseTypeChanged value),
    Result exerciseTargetChanged(_ExerciseTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseNameChanged != null) {
      return exerciseNameChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseNamedChanged implements ExerciseFormEvent {
  const factory _ExerciseNamedChanged(String name) = _$_ExerciseNamedChanged;

  String get name;
  _$ExerciseNamedChangedCopyWith<_ExerciseNamedChanged> get copyWith;
}

abstract class _$ExerciseLevelChangedCopyWith<$Res> {
  factory _$ExerciseLevelChangedCopyWith(_ExerciseLevelChanged value,
          $Res Function(_ExerciseLevelChanged) then) =
      __$ExerciseLevelChangedCopyWithImpl<$Res>;
  $Res call({ExerciseLevel level});
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
    Object level = freezed,
  }) {
    return _then(_ExerciseLevelChanged(
      level == freezed ? _value.level : level as ExerciseLevel,
    ));
  }
}

class _$_ExerciseLevelChanged implements _ExerciseLevelChanged {
  const _$_ExerciseLevelChanged(this.level) : assert(level != null);

  @override
  final ExerciseLevel level;

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseLevelChanged(level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseLevelChanged &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(level);

  @override
  _$ExerciseLevelChangedCopyWith<_ExerciseLevelChanged> get copyWith =>
      __$ExerciseLevelChangedCopyWithImpl<_ExerciseLevelChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exercise),
    @required Result exerciseNameChanged(String name),
    @required Result exerciseLevelChanged(ExerciseLevel level),
    @required Result exerciseToolChanged(ExerciseTool tool),
    @required Result exerciseTypeChanged(ExerciseType type),
    @required Result exerciseTargetChanged(ExerciseTarget target),
    @required Result added(),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseLevelChanged(level);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exercise),
    Result exerciseNameChanged(String name),
    Result exerciseLevelChanged(ExerciseLevel level),
    Result exerciseToolChanged(ExerciseTool tool),
    Result exerciseTypeChanged(ExerciseType type),
    Result exerciseTargetChanged(ExerciseTarget target),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseLevelChanged != null) {
      return exerciseLevelChanged(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result exerciseNameChanged(_ExerciseNamedChanged value),
    @required Result exerciseLevelChanged(_ExerciseLevelChanged value),
    @required Result exerciseToolChanged(_ExerciseToolChanged value),
    @required Result exerciseTypeChanged(_ExerciseTypeChanged value),
    @required Result exerciseTargetChanged(_ExerciseTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseLevelChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result exerciseNameChanged(_ExerciseNamedChanged value),
    Result exerciseLevelChanged(_ExerciseLevelChanged value),
    Result exerciseToolChanged(_ExerciseToolChanged value),
    Result exerciseTypeChanged(_ExerciseTypeChanged value),
    Result exerciseTargetChanged(_ExerciseTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseLevelChanged != null) {
      return exerciseLevelChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseLevelChanged implements ExerciseFormEvent {
  const factory _ExerciseLevelChanged(ExerciseLevel level) =
      _$_ExerciseLevelChanged;

  ExerciseLevel get level;
  _$ExerciseLevelChangedCopyWith<_ExerciseLevelChanged> get copyWith;
}

abstract class _$ExerciseToolChangedCopyWith<$Res> {
  factory _$ExerciseToolChangedCopyWith(_ExerciseToolChanged value,
          $Res Function(_ExerciseToolChanged) then) =
      __$ExerciseToolChangedCopyWithImpl<$Res>;
  $Res call({ExerciseTool tool});
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
    Object tool = freezed,
  }) {
    return _then(_ExerciseToolChanged(
      tool == freezed ? _value.tool : tool as ExerciseTool,
    ));
  }
}

class _$_ExerciseToolChanged implements _ExerciseToolChanged {
  const _$_ExerciseToolChanged(this.tool) : assert(tool != null);

  @override
  final ExerciseTool tool;

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseToolChanged(tool: $tool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseToolChanged &&
            (identical(other.tool, tool) ||
                const DeepCollectionEquality().equals(other.tool, tool)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tool);

  @override
  _$ExerciseToolChangedCopyWith<_ExerciseToolChanged> get copyWith =>
      __$ExerciseToolChangedCopyWithImpl<_ExerciseToolChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exercise),
    @required Result exerciseNameChanged(String name),
    @required Result exerciseLevelChanged(ExerciseLevel level),
    @required Result exerciseToolChanged(ExerciseTool tool),
    @required Result exerciseTypeChanged(ExerciseType type),
    @required Result exerciseTargetChanged(ExerciseTarget target),
    @required Result added(),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseToolChanged(tool);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exercise),
    Result exerciseNameChanged(String name),
    Result exerciseLevelChanged(ExerciseLevel level),
    Result exerciseToolChanged(ExerciseTool tool),
    Result exerciseTypeChanged(ExerciseType type),
    Result exerciseTargetChanged(ExerciseTarget target),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseToolChanged != null) {
      return exerciseToolChanged(tool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result exerciseNameChanged(_ExerciseNamedChanged value),
    @required Result exerciseLevelChanged(_ExerciseLevelChanged value),
    @required Result exerciseToolChanged(_ExerciseToolChanged value),
    @required Result exerciseTypeChanged(_ExerciseTypeChanged value),
    @required Result exerciseTargetChanged(_ExerciseTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseToolChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result exerciseNameChanged(_ExerciseNamedChanged value),
    Result exerciseLevelChanged(_ExerciseLevelChanged value),
    Result exerciseToolChanged(_ExerciseToolChanged value),
    Result exerciseTypeChanged(_ExerciseTypeChanged value),
    Result exerciseTargetChanged(_ExerciseTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseToolChanged != null) {
      return exerciseToolChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseToolChanged implements ExerciseFormEvent {
  const factory _ExerciseToolChanged(ExerciseTool tool) =
      _$_ExerciseToolChanged;

  ExerciseTool get tool;
  _$ExerciseToolChangedCopyWith<_ExerciseToolChanged> get copyWith;
}

abstract class _$ExerciseTypeChangedCopyWith<$Res> {
  factory _$ExerciseTypeChangedCopyWith(_ExerciseTypeChanged value,
          $Res Function(_ExerciseTypeChanged) then) =
      __$ExerciseTypeChangedCopyWithImpl<$Res>;
  $Res call({ExerciseType type});
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
    Object type = freezed,
  }) {
    return _then(_ExerciseTypeChanged(
      type == freezed ? _value.type : type as ExerciseType,
    ));
  }
}

class _$_ExerciseTypeChanged implements _ExerciseTypeChanged {
  const _$_ExerciseTypeChanged(this.type) : assert(type != null);

  @override
  final ExerciseType type;

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseTypeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseTypeChanged &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  _$ExerciseTypeChangedCopyWith<_ExerciseTypeChanged> get copyWith =>
      __$ExerciseTypeChangedCopyWithImpl<_ExerciseTypeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exercise),
    @required Result exerciseNameChanged(String name),
    @required Result exerciseLevelChanged(ExerciseLevel level),
    @required Result exerciseToolChanged(ExerciseTool tool),
    @required Result exerciseTypeChanged(ExerciseType type),
    @required Result exerciseTargetChanged(ExerciseTarget target),
    @required Result added(),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseTypeChanged(type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exercise),
    Result exerciseNameChanged(String name),
    Result exerciseLevelChanged(ExerciseLevel level),
    Result exerciseToolChanged(ExerciseTool tool),
    Result exerciseTypeChanged(ExerciseType type),
    Result exerciseTargetChanged(ExerciseTarget target),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseTypeChanged != null) {
      return exerciseTypeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result exerciseNameChanged(_ExerciseNamedChanged value),
    @required Result exerciseLevelChanged(_ExerciseLevelChanged value),
    @required Result exerciseToolChanged(_ExerciseToolChanged value),
    @required Result exerciseTypeChanged(_ExerciseTypeChanged value),
    @required Result exerciseTargetChanged(_ExerciseTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result exerciseNameChanged(_ExerciseNamedChanged value),
    Result exerciseLevelChanged(_ExerciseLevelChanged value),
    Result exerciseToolChanged(_ExerciseToolChanged value),
    Result exerciseTypeChanged(_ExerciseTypeChanged value),
    Result exerciseTargetChanged(_ExerciseTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseTypeChanged != null) {
      return exerciseTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseTypeChanged implements ExerciseFormEvent {
  const factory _ExerciseTypeChanged(ExerciseType type) =
      _$_ExerciseTypeChanged;

  ExerciseType get type;
  _$ExerciseTypeChangedCopyWith<_ExerciseTypeChanged> get copyWith;
}

abstract class _$ExerciseTargetChangedCopyWith<$Res> {
  factory _$ExerciseTargetChangedCopyWith(_ExerciseTargetChanged value,
          $Res Function(_ExerciseTargetChanged) then) =
      __$ExerciseTargetChangedCopyWithImpl<$Res>;
  $Res call({ExerciseTarget target});
}

class __$ExerciseTargetChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res>
    implements _$ExerciseTargetChangedCopyWith<$Res> {
  __$ExerciseTargetChangedCopyWithImpl(_ExerciseTargetChanged _value,
      $Res Function(_ExerciseTargetChanged) _then)
      : super(_value, (v) => _then(v as _ExerciseTargetChanged));

  @override
  _ExerciseTargetChanged get _value => super._value as _ExerciseTargetChanged;

  @override
  $Res call({
    Object target = freezed,
  }) {
    return _then(_ExerciseTargetChanged(
      target == freezed ? _value.target : target as ExerciseTarget,
    ));
  }
}

class _$_ExerciseTargetChanged implements _ExerciseTargetChanged {
  const _$_ExerciseTargetChanged(this.target) : assert(target != null);

  @override
  final ExerciseTarget target;

  @override
  String toString() {
    return 'ExerciseFormEvent.exerciseTargetChanged(target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseTargetChanged &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(target);

  @override
  _$ExerciseTargetChangedCopyWith<_ExerciseTargetChanged> get copyWith =>
      __$ExerciseTargetChangedCopyWithImpl<_ExerciseTargetChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(Option<Exercise> exercise),
    @required Result exerciseNameChanged(String name),
    @required Result exerciseLevelChanged(ExerciseLevel level),
    @required Result exerciseToolChanged(ExerciseTool tool),
    @required Result exerciseTypeChanged(ExerciseType type),
    @required Result exerciseTargetChanged(ExerciseTarget target),
    @required Result added(),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseTargetChanged(target);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exercise),
    Result exerciseNameChanged(String name),
    Result exerciseLevelChanged(ExerciseLevel level),
    Result exerciseToolChanged(ExerciseTool tool),
    Result exerciseTypeChanged(ExerciseType type),
    Result exerciseTargetChanged(ExerciseTarget target),
    Result added(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseTargetChanged != null) {
      return exerciseTargetChanged(target);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ExerciseFormInit value),
    @required Result exerciseNameChanged(_ExerciseNamedChanged value),
    @required Result exerciseLevelChanged(_ExerciseLevelChanged value),
    @required Result exerciseToolChanged(_ExerciseToolChanged value),
    @required Result exerciseTypeChanged(_ExerciseTypeChanged value),
    @required Result exerciseTargetChanged(_ExerciseTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return exerciseTargetChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result exerciseNameChanged(_ExerciseNamedChanged value),
    Result exerciseLevelChanged(_ExerciseLevelChanged value),
    Result exerciseToolChanged(_ExerciseToolChanged value),
    Result exerciseTypeChanged(_ExerciseTypeChanged value),
    Result exerciseTargetChanged(_ExerciseTargetChanged value),
    Result added(_ExerciseAdded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exerciseTargetChanged != null) {
      return exerciseTargetChanged(this);
    }
    return orElse();
  }
}

abstract class _ExerciseTargetChanged implements ExerciseFormEvent {
  const factory _ExerciseTargetChanged(ExerciseTarget target) =
      _$_ExerciseTargetChanged;

  ExerciseTarget get target;
  _$ExerciseTargetChangedCopyWith<_ExerciseTargetChanged> get copyWith;
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
    @required Result init(Option<Exercise> exercise),
    @required Result exerciseNameChanged(String name),
    @required Result exerciseLevelChanged(ExerciseLevel level),
    @required Result exerciseToolChanged(ExerciseTool tool),
    @required Result exerciseTypeChanged(ExerciseType type),
    @required Result exerciseTargetChanged(ExerciseTarget target),
    @required Result added(),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return added();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(Option<Exercise> exercise),
    Result exerciseNameChanged(String name),
    Result exerciseLevelChanged(ExerciseLevel level),
    Result exerciseToolChanged(ExerciseTool tool),
    Result exerciseTypeChanged(ExerciseType type),
    Result exerciseTargetChanged(ExerciseTarget target),
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
    @required Result exerciseNameChanged(_ExerciseNamedChanged value),
    @required Result exerciseLevelChanged(_ExerciseLevelChanged value),
    @required Result exerciseToolChanged(_ExerciseToolChanged value),
    @required Result exerciseTypeChanged(_ExerciseTypeChanged value),
    @required Result exerciseTargetChanged(_ExerciseTargetChanged value),
    @required Result added(_ExerciseAdded value),
  }) {
    assert(init != null);
    assert(exerciseNameChanged != null);
    assert(exerciseLevelChanged != null);
    assert(exerciseToolChanged != null);
    assert(exerciseTypeChanged != null);
    assert(exerciseTargetChanged != null);
    assert(added != null);
    return added(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ExerciseFormInit value),
    Result exerciseNameChanged(_ExerciseNamedChanged value),
    Result exerciseLevelChanged(_ExerciseLevelChanged value),
    Result exerciseToolChanged(_ExerciseToolChanged value),
    Result exerciseTypeChanged(_ExerciseTypeChanged value),
    Result exerciseTargetChanged(_ExerciseTargetChanged value),
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
