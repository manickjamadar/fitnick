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
      {@required
      @JsonKey(name: 'id')
          UniqueId id,
      @required
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'video_path')
          String videoPath,
      @JsonKey(name: 'thumbnail_path')
          String thumbnailPath,
      @required
      @JsonKey(name: 'levels')
          List<ExerciseLevel> levels,
      @required
      @JsonKey(name: 'tools')
          List<ExerciseTool> tools,
      @required
      @JsonKey(name: 'types')
          List<ExerciseType> types,
      @required
      @JsonKey(name: 'primary_targets')
          List<ExerciseTarget> primaryTargets,
      @required
      @JsonKey(name: 'secondary_targets')
          List<ExerciseTarget> secondaryTargets}) {
    return _ExerciseEntity(
      id: id,
      name: name,
      videoPath: videoPath,
      thumbnailPath: thumbnailPath,
      levels: levels,
      tools: tools,
      types: types,
      primaryTargets: primaryTargets,
      secondaryTargets: secondaryTargets,
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
  @JsonKey(name: 'video_path')
  String get videoPath;
  @JsonKey(name: 'thumbnail_path')
  String get thumbnailPath;
  @JsonKey(name: 'levels')
  List<ExerciseLevel> get levels;
  @JsonKey(name: 'tools')
  List<ExerciseTool> get tools;
  @JsonKey(name: 'types')
  List<ExerciseType> get types;
  @JsonKey(name: 'primary_targets')
  List<ExerciseTarget> get primaryTargets;
  @JsonKey(name: 'secondary_targets')
  List<ExerciseTarget> get secondaryTargets;

  Map<String, dynamic> toJson();
  $ExerciseEntityCopyWith<ExerciseEntity> get copyWith;
}

abstract class $ExerciseEntityCopyWith<$Res> {
  factory $ExerciseEntityCopyWith(
          ExerciseEntity value, $Res Function(ExerciseEntity) then) =
      _$ExerciseEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          UniqueId id,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'video_path')
          String videoPath,
      @JsonKey(name: 'thumbnail_path')
          String thumbnailPath,
      @JsonKey(name: 'levels')
          List<ExerciseLevel> levels,
      @JsonKey(name: 'tools')
          List<ExerciseTool> tools,
      @JsonKey(name: 'types')
          List<ExerciseType> types,
      @JsonKey(name: 'primary_targets')
          List<ExerciseTarget> primaryTargets,
      @JsonKey(name: 'secondary_targets')
          List<ExerciseTarget> secondaryTargets});
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
    Object videoPath = freezed,
    Object thumbnailPath = freezed,
    Object levels = freezed,
    Object tools = freezed,
    Object types = freezed,
    Object primaryTargets = freezed,
    Object secondaryTargets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      videoPath: videoPath == freezed ? _value.videoPath : videoPath as String,
      thumbnailPath: thumbnailPath == freezed
          ? _value.thumbnailPath
          : thumbnailPath as String,
      levels: levels == freezed ? _value.levels : levels as List<ExerciseLevel>,
      tools: tools == freezed ? _value.tools : tools as List<ExerciseTool>,
      types: types == freezed ? _value.types : types as List<ExerciseType>,
      primaryTargets: primaryTargets == freezed
          ? _value.primaryTargets
          : primaryTargets as List<ExerciseTarget>,
      secondaryTargets: secondaryTargets == freezed
          ? _value.secondaryTargets
          : secondaryTargets as List<ExerciseTarget>,
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
      {@JsonKey(name: 'id')
          UniqueId id,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'video_path')
          String videoPath,
      @JsonKey(name: 'thumbnail_path')
          String thumbnailPath,
      @JsonKey(name: 'levels')
          List<ExerciseLevel> levels,
      @JsonKey(name: 'tools')
          List<ExerciseTool> tools,
      @JsonKey(name: 'types')
          List<ExerciseType> types,
      @JsonKey(name: 'primary_targets')
          List<ExerciseTarget> primaryTargets,
      @JsonKey(name: 'secondary_targets')
          List<ExerciseTarget> secondaryTargets});
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
    Object videoPath = freezed,
    Object thumbnailPath = freezed,
    Object levels = freezed,
    Object tools = freezed,
    Object types = freezed,
    Object primaryTargets = freezed,
    Object secondaryTargets = freezed,
  }) {
    return _then(_ExerciseEntity(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      videoPath: videoPath == freezed ? _value.videoPath : videoPath as String,
      thumbnailPath: thumbnailPath == freezed
          ? _value.thumbnailPath
          : thumbnailPath as String,
      levels: levels == freezed ? _value.levels : levels as List<ExerciseLevel>,
      tools: tools == freezed ? _value.tools : tools as List<ExerciseTool>,
      types: types == freezed ? _value.types : types as List<ExerciseType>,
      primaryTargets: primaryTargets == freezed
          ? _value.primaryTargets
          : primaryTargets as List<ExerciseTarget>,
      secondaryTargets: secondaryTargets == freezed
          ? _value.secondaryTargets
          : secondaryTargets as List<ExerciseTarget>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_ExerciseEntity extends _ExerciseEntity with DiagnosticableTreeMixin {
  const _$_ExerciseEntity(
      {@required @JsonKey(name: 'id') this.id,
      @required @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'video_path') this.videoPath,
      @JsonKey(name: 'thumbnail_path') this.thumbnailPath,
      @required @JsonKey(name: 'levels') this.levels,
      @required @JsonKey(name: 'tools') this.tools,
      @required @JsonKey(name: 'types') this.types,
      @required @JsonKey(name: 'primary_targets') this.primaryTargets,
      @required @JsonKey(name: 'secondary_targets') this.secondaryTargets})
      : assert(id != null),
        assert(name != null),
        assert(levels != null),
        assert(tools != null),
        assert(types != null),
        assert(primaryTargets != null),
        assert(secondaryTargets != null),
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
  @JsonKey(name: 'video_path')
  final String videoPath;
  @override
  @JsonKey(name: 'thumbnail_path')
  final String thumbnailPath;
  @override
  @JsonKey(name: 'levels')
  final List<ExerciseLevel> levels;
  @override
  @JsonKey(name: 'tools')
  final List<ExerciseTool> tools;
  @override
  @JsonKey(name: 'types')
  final List<ExerciseType> types;
  @override
  @JsonKey(name: 'primary_targets')
  final List<ExerciseTarget> primaryTargets;
  @override
  @JsonKey(name: 'secondary_targets')
  final List<ExerciseTarget> secondaryTargets;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseEntity(id: $id, name: $name, videoPath: $videoPath, thumbnailPath: $thumbnailPath, levels: $levels, tools: $tools, types: $types, primaryTargets: $primaryTargets, secondaryTargets: $secondaryTargets)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('videoPath', videoPath))
      ..add(DiagnosticsProperty('thumbnailPath', thumbnailPath))
      ..add(DiagnosticsProperty('levels', levels))
      ..add(DiagnosticsProperty('tools', tools))
      ..add(DiagnosticsProperty('types', types))
      ..add(DiagnosticsProperty('primaryTargets', primaryTargets))
      ..add(DiagnosticsProperty('secondaryTargets', secondaryTargets));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.videoPath, videoPath) ||
                const DeepCollectionEquality()
                    .equals(other.videoPath, videoPath)) &&
            (identical(other.thumbnailPath, thumbnailPath) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailPath, thumbnailPath)) &&
            (identical(other.levels, levels) ||
                const DeepCollectionEquality().equals(other.levels, levels)) &&
            (identical(other.tools, tools) ||
                const DeepCollectionEquality().equals(other.tools, tools)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.primaryTargets, primaryTargets) ||
                const DeepCollectionEquality()
                    .equals(other.primaryTargets, primaryTargets)) &&
            (identical(other.secondaryTargets, secondaryTargets) ||
                const DeepCollectionEquality()
                    .equals(other.secondaryTargets, secondaryTargets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(videoPath) ^
      const DeepCollectionEquality().hash(thumbnailPath) ^
      const DeepCollectionEquality().hash(levels) ^
      const DeepCollectionEquality().hash(tools) ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(primaryTargets) ^
      const DeepCollectionEquality().hash(secondaryTargets);

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
      {@required
      @JsonKey(name: 'id')
          UniqueId id,
      @required
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'video_path')
          String videoPath,
      @JsonKey(name: 'thumbnail_path')
          String thumbnailPath,
      @required
      @JsonKey(name: 'levels')
          List<ExerciseLevel> levels,
      @required
      @JsonKey(name: 'tools')
          List<ExerciseTool> tools,
      @required
      @JsonKey(name: 'types')
          List<ExerciseType> types,
      @required
      @JsonKey(name: 'primary_targets')
          List<ExerciseTarget> primaryTargets,
      @required
      @JsonKey(name: 'secondary_targets')
          List<ExerciseTarget> secondaryTargets}) = _$_ExerciseEntity;

  factory _ExerciseEntity.fromJson(Map<String, dynamic> json) =
      _$_ExerciseEntity.fromJson;

  @override
  @JsonKey(name: 'id')
  UniqueId get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'video_path')
  String get videoPath;
  @override
  @JsonKey(name: 'thumbnail_path')
  String get thumbnailPath;
  @override
  @JsonKey(name: 'levels')
  List<ExerciseLevel> get levels;
  @override
  @JsonKey(name: 'tools')
  List<ExerciseTool> get tools;
  @override
  @JsonKey(name: 'types')
  List<ExerciseType> get types;
  @override
  @JsonKey(name: 'primary_targets')
  List<ExerciseTarget> get primaryTargets;
  @override
  @JsonKey(name: 'secondary_targets')
  List<ExerciseTarget> get secondaryTargets;
  @override
  _$ExerciseEntityCopyWith<_ExerciseEntity> get copyWith;
}
