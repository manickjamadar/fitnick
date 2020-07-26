// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'active_workout_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActiveWorkoutEntityTearOff {
  const _$ActiveWorkoutEntityTearOff();

  _ActiveWorkoutEntity call(
      {@required UniqueId id,
      @required String name,
      @required int color,
      @required String imagePath,
      @required List<UniqueId> activeExerciseIds}) {
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
  UniqueId get id;
  String get name;
  int get color;
  String get imagePath;
  List<UniqueId> get activeExerciseIds;

  $ActiveWorkoutEntityCopyWith<ActiveWorkoutEntity> get copyWith;
}

abstract class $ActiveWorkoutEntityCopyWith<$Res> {
  factory $ActiveWorkoutEntityCopyWith(
          ActiveWorkoutEntity value, $Res Function(ActiveWorkoutEntity) then) =
      _$ActiveWorkoutEntityCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      int color,
      String imagePath,
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
      {UniqueId id,
      String name,
      int color,
      String imagePath,
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

class _$_ActiveWorkoutEntity
    with DiagnosticableTreeMixin
    implements _ActiveWorkoutEntity {
  const _$_ActiveWorkoutEntity(
      {@required this.id,
      @required this.name,
      @required this.color,
      @required this.imagePath,
      @required this.activeExerciseIds})
      : assert(id != null),
        assert(name != null),
        assert(color != null),
        assert(imagePath != null),
        assert(activeExerciseIds != null);

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final int color;
  @override
  final String imagePath;
  @override
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
}

abstract class _ActiveWorkoutEntity implements ActiveWorkoutEntity {
  const factory _ActiveWorkoutEntity(
      {@required UniqueId id,
      @required String name,
      @required int color,
      @required String imagePath,
      @required List<UniqueId> activeExerciseIds}) = _$_ActiveWorkoutEntity;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  int get color;
  @override
  String get imagePath;
  @override
  List<UniqueId> get activeExerciseIds;
  @override
  _$ActiveWorkoutEntityCopyWith<_ActiveWorkoutEntity> get copyWith;
}
