// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'workout_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WorkoutEntity _$WorkoutEntityFromJson(Map<String, dynamic> json) {
  return _WorkoutEntity.fromJson(json);
}

class _$WorkoutEntityTearOff {
  const _$WorkoutEntityTearOff();

  _WorkoutEntity call(
      {@required UniqueId id,
      @required String name,
      @required List<UniqueId> exerciseIds}) {
    return _WorkoutEntity(
      id: id,
      name: name,
      exerciseIds: exerciseIds,
    );
  }
}

// ignore: unused_element
const $WorkoutEntity = _$WorkoutEntityTearOff();

mixin _$WorkoutEntity {
  UniqueId get id;
  String get name;
  List<UniqueId> get exerciseIds;

  Map<String, dynamic> toJson();
  $WorkoutEntityCopyWith<WorkoutEntity> get copyWith;
}

abstract class $WorkoutEntityCopyWith<$Res> {
  factory $WorkoutEntityCopyWith(
          WorkoutEntity value, $Res Function(WorkoutEntity) then) =
      _$WorkoutEntityCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name, List<UniqueId> exerciseIds});
}

class _$WorkoutEntityCopyWithImpl<$Res>
    implements $WorkoutEntityCopyWith<$Res> {
  _$WorkoutEntityCopyWithImpl(this._value, this._then);

  final WorkoutEntity _value;
  // ignore: unused_field
  final $Res Function(WorkoutEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object exerciseIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      exerciseIds: exerciseIds == freezed
          ? _value.exerciseIds
          : exerciseIds as List<UniqueId>,
    ));
  }
}

abstract class _$WorkoutEntityCopyWith<$Res>
    implements $WorkoutEntityCopyWith<$Res> {
  factory _$WorkoutEntityCopyWith(
          _WorkoutEntity value, $Res Function(_WorkoutEntity) then) =
      __$WorkoutEntityCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name, List<UniqueId> exerciseIds});
}

class __$WorkoutEntityCopyWithImpl<$Res>
    extends _$WorkoutEntityCopyWithImpl<$Res>
    implements _$WorkoutEntityCopyWith<$Res> {
  __$WorkoutEntityCopyWithImpl(
      _WorkoutEntity _value, $Res Function(_WorkoutEntity) _then)
      : super(_value, (v) => _then(v as _WorkoutEntity));

  @override
  _WorkoutEntity get _value => super._value as _WorkoutEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object exerciseIds = freezed,
  }) {
    return _then(_WorkoutEntity(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      exerciseIds: exerciseIds == freezed
          ? _value.exerciseIds
          : exerciseIds as List<UniqueId>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_WorkoutEntity extends _WorkoutEntity {
  const _$_WorkoutEntity(
      {@required this.id, @required this.name, @required this.exerciseIds})
      : assert(id != null),
        assert(name != null),
        assert(exerciseIds != null),
        super._();

  factory _$_WorkoutEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkoutEntityFromJson(json);

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final List<UniqueId> exerciseIds;

  @override
  String toString() {
    return 'WorkoutEntity(id: $id, name: $name, exerciseIds: $exerciseIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.exerciseIds, exerciseIds) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseIds, exerciseIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(exerciseIds);

  @override
  _$WorkoutEntityCopyWith<_WorkoutEntity> get copyWith =>
      __$WorkoutEntityCopyWithImpl<_WorkoutEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkoutEntityToJson(this);
  }
}

abstract class _WorkoutEntity extends WorkoutEntity {
  const _WorkoutEntity._() : super._();
  const factory _WorkoutEntity(
      {@required UniqueId id,
      @required String name,
      @required List<UniqueId> exerciseIds}) = _$_WorkoutEntity;

  factory _WorkoutEntity.fromJson(Map<String, dynamic> json) =
      _$_WorkoutEntity.fromJson;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  List<UniqueId> get exerciseIds;
  @override
  _$WorkoutEntityCopyWith<_WorkoutEntity> get copyWith;
}
