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
      @required Option<String> videoPath,
      @required Option<String> thumbnailPath,
      @required List<ExerciseLevel> levels,
      @required List<ExerciseType> types,
      @required List<ExerciseTool> tools,
      @required List<ExerciseTarget> primaryTargets,
      @required List<ExerciseTarget> secondaryTargets}) {
    return _Exercise(
      id: id,
      name: name,
      videoPath: videoPath,
      thumbnailPath: thumbnailPath,
      levels: levels,
      types: types,
      tools: tools,
      primaryTargets: primaryTargets,
      secondaryTargets: secondaryTargets,
    );
  }
}

// ignore: unused_element
const $Exercise = _$ExerciseTearOff();

mixin _$Exercise {
  UniqueId get id;
  ExerciseName get name;
  Option<String> get videoPath;
  Option<String> get thumbnailPath;
  List<ExerciseLevel> get levels;
  List<ExerciseType> get types;
  List<ExerciseTool> get tools;
  List<ExerciseTarget> get primaryTargets;
  List<ExerciseTarget> get secondaryTargets;

  $ExerciseCopyWith<Exercise> get copyWith;
}

abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ExerciseName name,
      Option<String> videoPath,
      Option<String> thumbnailPath,
      List<ExerciseLevel> levels,
      List<ExerciseType> types,
      List<ExerciseTool> tools,
      List<ExerciseTarget> primaryTargets,
      List<ExerciseTarget> secondaryTargets});
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
    Object videoPath = freezed,
    Object thumbnailPath = freezed,
    Object levels = freezed,
    Object types = freezed,
    Object tools = freezed,
    Object primaryTargets = freezed,
    Object secondaryTargets = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as ExerciseName,
      videoPath:
          videoPath == freezed ? _value.videoPath : videoPath as Option<String>,
      thumbnailPath: thumbnailPath == freezed
          ? _value.thumbnailPath
          : thumbnailPath as Option<String>,
      levels: levels == freezed ? _value.levels : levels as List<ExerciseLevel>,
      types: types == freezed ? _value.types : types as List<ExerciseType>,
      tools: tools == freezed ? _value.tools : tools as List<ExerciseTool>,
      primaryTargets: primaryTargets == freezed
          ? _value.primaryTargets
          : primaryTargets as List<ExerciseTarget>,
      secondaryTargets: secondaryTargets == freezed
          ? _value.secondaryTargets
          : secondaryTargets as List<ExerciseTarget>,
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
      Option<String> videoPath,
      Option<String> thumbnailPath,
      List<ExerciseLevel> levels,
      List<ExerciseType> types,
      List<ExerciseTool> tools,
      List<ExerciseTarget> primaryTargets,
      List<ExerciseTarget> secondaryTargets});
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
    Object videoPath = freezed,
    Object thumbnailPath = freezed,
    Object levels = freezed,
    Object types = freezed,
    Object tools = freezed,
    Object primaryTargets = freezed,
    Object secondaryTargets = freezed,
  }) {
    return _then(_Exercise(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as ExerciseName,
      videoPath:
          videoPath == freezed ? _value.videoPath : videoPath as Option<String>,
      thumbnailPath: thumbnailPath == freezed
          ? _value.thumbnailPath
          : thumbnailPath as Option<String>,
      levels: levels == freezed ? _value.levels : levels as List<ExerciseLevel>,
      types: types == freezed ? _value.types : types as List<ExerciseType>,
      tools: tools == freezed ? _value.tools : tools as List<ExerciseTool>,
      primaryTargets: primaryTargets == freezed
          ? _value.primaryTargets
          : primaryTargets as List<ExerciseTarget>,
      secondaryTargets: secondaryTargets == freezed
          ? _value.secondaryTargets
          : secondaryTargets as List<ExerciseTarget>,
    ));
  }
}

class _$_Exercise extends _Exercise {
  const _$_Exercise(
      {@required this.id,
      @required this.name,
      @required this.videoPath,
      @required this.thumbnailPath,
      @required this.levels,
      @required this.types,
      @required this.tools,
      @required this.primaryTargets,
      @required this.secondaryTargets})
      : assert(id != null),
        assert(name != null),
        assert(videoPath != null),
        assert(thumbnailPath != null),
        assert(levels != null),
        assert(types != null),
        assert(tools != null),
        assert(primaryTargets != null),
        assert(secondaryTargets != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ExerciseName name;
  @override
  final Option<String> videoPath;
  @override
  final Option<String> thumbnailPath;
  @override
  final List<ExerciseLevel> levels;
  @override
  final List<ExerciseType> types;
  @override
  final List<ExerciseTool> tools;
  @override
  final List<ExerciseTarget> primaryTargets;
  @override
  final List<ExerciseTarget> secondaryTargets;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, videoPath: $videoPath, thumbnailPath: $thumbnailPath, levels: $levels, types: $types, tools: $tools, primaryTargets: $primaryTargets, secondaryTargets: $secondaryTargets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
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
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.tools, tools) ||
                const DeepCollectionEquality().equals(other.tools, tools)) &&
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
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(tools) ^
      const DeepCollectionEquality().hash(primaryTargets) ^
      const DeepCollectionEquality().hash(secondaryTargets);

  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise extends Exercise {
  const _Exercise._() : super._();
  const factory _Exercise(
      {@required UniqueId id,
      @required ExerciseName name,
      @required Option<String> videoPath,
      @required Option<String> thumbnailPath,
      @required List<ExerciseLevel> levels,
      @required List<ExerciseType> types,
      @required List<ExerciseTool> tools,
      @required List<ExerciseTarget> primaryTargets,
      @required List<ExerciseTarget> secondaryTargets}) = _$_Exercise;

  @override
  UniqueId get id;
  @override
  ExerciseName get name;
  @override
  Option<String> get videoPath;
  @override
  Option<String> get thumbnailPath;
  @override
  List<ExerciseLevel> get levels;
  @override
  List<ExerciseType> get types;
  @override
  List<ExerciseTool> get tools;
  @override
  List<ExerciseTarget> get primaryTargets;
  @override
  List<ExerciseTarget> get secondaryTargets;
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith;
}
