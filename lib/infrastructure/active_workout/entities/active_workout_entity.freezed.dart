// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'active_workout_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ActiveWorkoutEntity _$ActiveWorkoutEntityFromJson(Map<String, dynamic> json) {
  return _ActiveWorkoutEntity.fromJson(json);
}

class _$ActiveWorkoutEntityTearOff {
  const _$ActiveWorkoutEntityTearOff();

  _ActiveWorkoutEntity call(
      {@required
      @JsonKey(name: ActiveWorkoutEntity.KEY_ID)
          UniqueId id,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
          String name,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
          int color,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
          String imagePath,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
          List<UniqueId> activeExerciseIds}) {
    return _ActiveWorkoutEntity(
      id: id,
      name: name,
      color: color,
      imagePath: imagePath,
      activeExerciseIds: activeExerciseIds,
    );
  }
}

// ignore: unused_element
const $ActiveWorkoutEntity = _$ActiveWorkoutEntityTearOff();

mixin _$ActiveWorkoutEntity {
  @JsonKey(name: ActiveWorkoutEntity.KEY_ID)
  UniqueId get id;
  @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
  String get name;
  @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
  int get color;
  @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
  String get imagePath;
  @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
  List<UniqueId> get activeExerciseIds;

  Map<String, dynamic> toJson();
  $ActiveWorkoutEntityCopyWith<ActiveWorkoutEntity> get copyWith;
}

abstract class $ActiveWorkoutEntityCopyWith<$Res> {
  factory $ActiveWorkoutEntityCopyWith(
          ActiveWorkoutEntity value, $Res Function(ActiveWorkoutEntity) then) =
      _$ActiveWorkoutEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: ActiveWorkoutEntity.KEY_ID)
          UniqueId id,
      @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
          String name,
      @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
          int color,
      @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
          String imagePath,
      @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
          List<UniqueId> activeExerciseIds});
}

class _$ActiveWorkoutEntityCopyWithImpl<$Res>
    implements $ActiveWorkoutEntityCopyWith<$Res> {
  _$ActiveWorkoutEntityCopyWithImpl(this._value, this._then);

  final ActiveWorkoutEntity _value;
  // ignore: unused_field
  final $Res Function(ActiveWorkoutEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
    Object imagePath = freezed,
    Object activeExerciseIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      color: color == freezed ? _value.color : color as int,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      activeExerciseIds: activeExerciseIds == freezed
          ? _value.activeExerciseIds
          : activeExerciseIds as List<UniqueId>,
    ));
  }
}

abstract class _$ActiveWorkoutEntityCopyWith<$Res>
    implements $ActiveWorkoutEntityCopyWith<$Res> {
  factory _$ActiveWorkoutEntityCopyWith(_ActiveWorkoutEntity value,
          $Res Function(_ActiveWorkoutEntity) then) =
      __$ActiveWorkoutEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: ActiveWorkoutEntity.KEY_ID)
          UniqueId id,
      @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
          String name,
      @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
          int color,
      @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
          String imagePath,
      @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
          List<UniqueId> activeExerciseIds});
}

class __$ActiveWorkoutEntityCopyWithImpl<$Res>
    extends _$ActiveWorkoutEntityCopyWithImpl<$Res>
    implements _$ActiveWorkoutEntityCopyWith<$Res> {
  __$ActiveWorkoutEntityCopyWithImpl(
      _ActiveWorkoutEntity _value, $Res Function(_ActiveWorkoutEntity) _then)
      : super(_value, (v) => _then(v as _ActiveWorkoutEntity));

  @override
  _ActiveWorkoutEntity get _value => super._value as _ActiveWorkoutEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object color = freezed,
    Object imagePath = freezed,
    Object activeExerciseIds = freezed,
  }) {
    return _then(_ActiveWorkoutEntity(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      color: color == freezed ? _value.color : color as int,
      imagePath: imagePath == freezed ? _value.imagePath : imagePath as String,
      activeExerciseIds: activeExerciseIds == freezed
          ? _value.activeExerciseIds
          : activeExerciseIds as List<UniqueId>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_ActiveWorkoutEntity extends _ActiveWorkoutEntity
    with DiagnosticableTreeMixin {
  const _$_ActiveWorkoutEntity(
      {@required
      @JsonKey(name: ActiveWorkoutEntity.KEY_ID)
          this.id,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
          this.name,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
          this.color,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
          this.imagePath,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
          this.activeExerciseIds})
      : assert(id != null),
        assert(name != null),
        assert(color != null),
        assert(imagePath != null),
        assert(activeExerciseIds != null),
        super._();

  factory _$_ActiveWorkoutEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ActiveWorkoutEntityFromJson(json);

  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_ID)
  final UniqueId id;
  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
  final String name;
  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
  final int color;
  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
  final String imagePath;
  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
  final List<UniqueId> activeExerciseIds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActiveWorkoutEntity(id: $id, name: $name, color: $color, imagePath: $imagePath, activeExerciseIds: $activeExerciseIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActiveWorkoutEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('activeExerciseIds', activeExerciseIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveWorkoutEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.activeExerciseIds, activeExerciseIds) ||
                const DeepCollectionEquality()
                    .equals(other.activeExerciseIds, activeExerciseIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(activeExerciseIds);

  @override
  _$ActiveWorkoutEntityCopyWith<_ActiveWorkoutEntity> get copyWith =>
      __$ActiveWorkoutEntityCopyWithImpl<_ActiveWorkoutEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActiveWorkoutEntityToJson(this);
  }
}

abstract class _ActiveWorkoutEntity extends ActiveWorkoutEntity {
  const _ActiveWorkoutEntity._() : super._();
  const factory _ActiveWorkoutEntity(
      {@required
      @JsonKey(name: ActiveWorkoutEntity.KEY_ID)
          UniqueId id,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
          String name,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
          int color,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
          String imagePath,
      @required
      @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
          List<UniqueId> activeExerciseIds}) = _$_ActiveWorkoutEntity;

  factory _ActiveWorkoutEntity.fromJson(Map<String, dynamic> json) =
      _$_ActiveWorkoutEntity.fromJson;

  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_ID)
  UniqueId get id;
  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_NAME)
  String get name;
  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_COLOR)
  int get color;
  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_IMAGE_PATH)
  String get imagePath;
  @override
  @JsonKey(name: ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS)
  List<UniqueId> get activeExerciseIds;
  @override
  _$ActiveWorkoutEntityCopyWith<_ActiveWorkoutEntity> get copyWith;
}
