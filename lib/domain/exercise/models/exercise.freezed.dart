// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseTearOff {
  const _$ExerciseTearOff();

  _Exercise call(
      {@required UniqueId id,
      @required ExerciseName name,
      @required ExerciseLevel level,
      @required ExerciseTool tool,
      @required ExerciseType type,
      @required ExerciseTarget target}) {
    return _Exercise(
      id: id,
      name: name,
      level: level,
      tool: tool,
      type: type,
      target: target,
    );
  }
}

// ignore: unused_element
const $Exercise = _$ExerciseTearOff();

mixin _$Exercise {
  UniqueId get id;
  ExerciseName get name;
  ExerciseLevel get level;
  ExerciseTool get tool;
  ExerciseType get type;
  ExerciseTarget get target;

  $ExerciseCopyWith<Exercise> get copyWith;
}

abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ExerciseName name,
      ExerciseLevel level,
      ExerciseTool tool,
      ExerciseType type,
      ExerciseTarget target});
}

class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object level = freezed,
    Object tool = freezed,
    Object type = freezed,
    Object target = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as ExerciseName,
      level: level == freezed ? _value.level : level as ExerciseLevel,
      tool: tool == freezed ? _value.tool : tool as ExerciseTool,
      type: type == freezed ? _value.type : type as ExerciseType,
      target: target == freezed ? _value.target : target as ExerciseTarget,
    ));
  }
}

abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ExerciseName name,
      ExerciseLevel level,
      ExerciseTool tool,
      ExerciseType type,
      ExerciseTarget target});
}

class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object level = freezed,
    Object tool = freezed,
    Object type = freezed,
    Object target = freezed,
  }) {
    return _then(_Exercise(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as ExerciseName,
      level: level == freezed ? _value.level : level as ExerciseLevel,
      tool: tool == freezed ? _value.tool : tool as ExerciseTool,
      type: type == freezed ? _value.type : type as ExerciseType,
      target: target == freezed ? _value.target : target as ExerciseTarget,
    ));
  }
}

class _$_Exercise implements _Exercise {
  const _$_Exercise(
      {@required this.id,
      @required this.name,
      @required this.level,
      @required this.tool,
      @required this.type,
      @required this.target})
      : assert(id != null),
        assert(name != null),
        assert(level != null),
        assert(tool != null),
        assert(type != null),
        assert(target != null);

  @override
  final UniqueId id;
  @override
  final ExerciseName name;
  @override
  final ExerciseLevel level;
  @override
  final ExerciseTool tool;
  @override
  final ExerciseType type;
  @override
  final ExerciseTarget target;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, level: $level, tool: $tool, type: $type, target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.tool, tool) ||
                const DeepCollectionEquality().equals(other.tool, tool)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(tool) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(target);

  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {@required UniqueId id,
      @required ExerciseName name,
      @required ExerciseLevel level,
      @required ExerciseTool tool,
      @required ExerciseType type,
      @required ExerciseTarget target}) = _$_Exercise;

  @override
  UniqueId get id;
  @override
  ExerciseName get name;
  @override
  ExerciseLevel get level;
  @override
  ExerciseTool get tool;
  @override
  ExerciseType get type;
  @override
  ExerciseTarget get target;
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith;
}
