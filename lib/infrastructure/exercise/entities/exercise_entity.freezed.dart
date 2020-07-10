// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExerciseEntityTearOff {
  const _$ExerciseEntityTearOff();

  _ExerciseEntity call(
      {@required UniqueId id,
      @required String name,
      @required ExerciseLevel level,
      @required ExerciseTool tool,
      @required ExerciseType type,
      @required ExerciseTarget target}) {
    return _ExerciseEntity(
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
const $ExerciseEntity = _$ExerciseEntityTearOff();

mixin _$ExerciseEntity {
  UniqueId get id;
  String get name;
  ExerciseLevel get level;
  ExerciseTool get tool;
  ExerciseType get type;
  ExerciseTarget get target;

  $ExerciseEntityCopyWith<ExerciseEntity> get copyWith;
}

abstract class $ExerciseEntityCopyWith<$Res> {
  factory $ExerciseEntityCopyWith(
          ExerciseEntity value, $Res Function(ExerciseEntity) then) =
      _$ExerciseEntityCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      ExerciseLevel level,
      ExerciseTool tool,
      ExerciseType type,
      ExerciseTarget target});
}

class _$ExerciseEntityCopyWithImpl<$Res>
    implements $ExerciseEntityCopyWith<$Res> {
  _$ExerciseEntityCopyWithImpl(this._value, this._then);

  final ExerciseEntity _value;
  // ignore: unused_field
  final $Res Function(ExerciseEntity) _then;

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
      name: name == freezed ? _value.name : name as String,
      level: level == freezed ? _value.level : level as ExerciseLevel,
      tool: tool == freezed ? _value.tool : tool as ExerciseTool,
      type: type == freezed ? _value.type : type as ExerciseType,
      target: target == freezed ? _value.target : target as ExerciseTarget,
    ));
  }
}

abstract class _$ExerciseEntityCopyWith<$Res>
    implements $ExerciseEntityCopyWith<$Res> {
  factory _$ExerciseEntityCopyWith(
          _ExerciseEntity value, $Res Function(_ExerciseEntity) then) =
      __$ExerciseEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
      ExerciseLevel level,
      ExerciseTool tool,
      ExerciseType type,
      ExerciseTarget target});
}

class __$ExerciseEntityCopyWithImpl<$Res>
    extends _$ExerciseEntityCopyWithImpl<$Res>
    implements _$ExerciseEntityCopyWith<$Res> {
  __$ExerciseEntityCopyWithImpl(
      _ExerciseEntity _value, $Res Function(_ExerciseEntity) _then)
      : super(_value, (v) => _then(v as _ExerciseEntity));

  @override
  _ExerciseEntity get _value => super._value as _ExerciseEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object level = freezed,
    Object tool = freezed,
    Object type = freezed,
    Object target = freezed,
  }) {
    return _then(_ExerciseEntity(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      level: level == freezed ? _value.level : level as ExerciseLevel,
      tool: tool == freezed ? _value.tool : tool as ExerciseTool,
      type: type == freezed ? _value.type : type as ExerciseType,
      target: target == freezed ? _value.target : target as ExerciseTarget,
    ));
  }
}

class _$_ExerciseEntity
    with DiagnosticableTreeMixin
    implements _ExerciseEntity {
  const _$_ExerciseEntity(
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
  final String name;
  @override
  final ExerciseLevel level;
  @override
  final ExerciseTool tool;
  @override
  final ExerciseType type;
  @override
  final ExerciseTarget target;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseEntity(id: $id, name: $name, level: $level, tool: $tool, type: $type, target: $target)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('tool', tool))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('target', target));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseEntity &&
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
  _$ExerciseEntityCopyWith<_ExerciseEntity> get copyWith =>
      __$ExerciseEntityCopyWithImpl<_ExerciseEntity>(this, _$identity);
}

abstract class _ExerciseEntity implements ExerciseEntity {
  const factory _ExerciseEntity(
      {@required UniqueId id,
      @required String name,
      @required ExerciseLevel level,
      @required ExerciseTool tool,
      @required ExerciseType type,
      @required ExerciseTarget target}) = _$_ExerciseEntity;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  ExerciseLevel get level;
  @override
  ExerciseTool get tool;
  @override
  ExerciseType get type;
  @override
  ExerciseTarget get target;
  @override
  _$ExerciseEntityCopyWith<_ExerciseEntity> get copyWith;
}
