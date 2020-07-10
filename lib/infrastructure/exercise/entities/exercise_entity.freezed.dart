// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'exercise_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExerciseEntity _$ExerciseEntityFromJson(Map<String, dynamic> json) {
  return _ExerciseEntity.fromJson(json);
}

class _$ExerciseEntityTearOff {
  const _$ExerciseEntityTearOff();

  _ExerciseEntity call(
      {@required @JsonKey(name: 'id') UniqueId id,
      @required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'level') ExerciseLevel level,
      @required @JsonKey(name: 'tool') ExerciseTool tool,
      @required @JsonKey(name: 'type') ExerciseType type,
      @required @JsonKey(name: 'target') ExerciseTarget target}) {
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
  @JsonKey(name: 'id')
  UniqueId get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'level')
  ExerciseLevel get level;
  @JsonKey(name: 'tool')
  ExerciseTool get tool;
  @JsonKey(name: 'type')
  ExerciseType get type;
  @JsonKey(name: 'target')
  ExerciseTarget get target;

  Map<String, dynamic> toJson();
  $ExerciseEntityCopyWith<ExerciseEntity> get copyWith;
}

abstract class $ExerciseEntityCopyWith<$Res> {
  factory $ExerciseEntityCopyWith(
          ExerciseEntity value, $Res Function(ExerciseEntity) then) =
      _$ExerciseEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') UniqueId id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'level') ExerciseLevel level,
      @JsonKey(name: 'tool') ExerciseTool tool,
      @JsonKey(name: 'type') ExerciseType type,
      @JsonKey(name: 'target') ExerciseTarget target});
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
      {@JsonKey(name: 'id') UniqueId id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'level') ExerciseLevel level,
      @JsonKey(name: 'tool') ExerciseTool tool,
      @JsonKey(name: 'type') ExerciseType type,
      @JsonKey(name: 'target') ExerciseTarget target});
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

@JsonSerializable(explicitToJson: true)
class _$_ExerciseEntity extends _ExerciseEntity with DiagnosticableTreeMixin {
  const _$_ExerciseEntity(
      {@required @JsonKey(name: 'id') this.id,
      @required @JsonKey(name: 'name') this.name,
      @required @JsonKey(name: 'level') this.level,
      @required @JsonKey(name: 'tool') this.tool,
      @required @JsonKey(name: 'type') this.type,
      @required @JsonKey(name: 'target') this.target})
      : assert(id != null),
        assert(name != null),
        assert(level != null),
        assert(tool != null),
        assert(type != null),
        assert(target != null),
        super._();

  factory _$_ExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ExerciseEntityFromJson(json);

  @override
  @JsonKey(name: 'id')
  final UniqueId id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'level')
  final ExerciseLevel level;
  @override
  @JsonKey(name: 'tool')
  final ExerciseTool tool;
  @override
  @JsonKey(name: 'type')
  final ExerciseType type;
  @override
  @JsonKey(name: 'target')
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExerciseEntityToJson(this);
  }
}

abstract class _ExerciseEntity extends ExerciseEntity {
  const _ExerciseEntity._() : super._();
  const factory _ExerciseEntity(
          {@required @JsonKey(name: 'id') UniqueId id,
          @required @JsonKey(name: 'name') String name,
          @required @JsonKey(name: 'level') ExerciseLevel level,
          @required @JsonKey(name: 'tool') ExerciseTool tool,
          @required @JsonKey(name: 'type') ExerciseType type,
          @required @JsonKey(name: 'target') ExerciseTarget target}) =
      _$_ExerciseEntity;

  factory _ExerciseEntity.fromJson(Map<String, dynamic> json) =
      _$_ExerciseEntity.fromJson;

  @override
  @JsonKey(name: 'id')
  UniqueId get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'level')
  ExerciseLevel get level;
  @override
  @JsonKey(name: 'tool')
  ExerciseTool get tool;
  @override
  @JsonKey(name: 'type')
  ExerciseType get type;
  @override
  @JsonKey(name: 'target')
  ExerciseTarget get target;
  @override
  _$ExerciseEntityCopyWith<_ExerciseEntity> get copyWith;
}
