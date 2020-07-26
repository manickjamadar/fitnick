// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'active_exercise_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ActiveExerciseEntity _$ActiveExerciseEntityFromJson(Map<String, dynamic> json) {
  return _ActiveExerciseEntity.fromJson(json);
}

class _$ActiveExerciseEntityTearOff {
  const _$ActiveExerciseEntityTearOff();

  _ActiveExerciseEntity call(
      {@required
      @JsonKey(name: ActiveExerciseEntity.KEY_ID)
          UniqueId id,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
          List<ExerciseSet> sets,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
          int repsTempo,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
          UniqueId exerciseId}) {
    return _ActiveExerciseEntity(
      id: id,
      sets: sets,
      repsTempo: repsTempo,
      exerciseId: exerciseId,
    );
  }
}

// ignore: unused_element
const $ActiveExerciseEntity = _$ActiveExerciseEntityTearOff();

mixin _$ActiveExerciseEntity {
  @JsonKey(name: ActiveExerciseEntity.KEY_ID)
  UniqueId get id;
  @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
  List<ExerciseSet> get sets;
  @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
  int get repsTempo;
  @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
  UniqueId get exerciseId;

  Map<String, dynamic> toJson();
  $ActiveExerciseEntityCopyWith<ActiveExerciseEntity> get copyWith;
}

abstract class $ActiveExerciseEntityCopyWith<$Res> {
  factory $ActiveExerciseEntityCopyWith(ActiveExerciseEntity value,
          $Res Function(ActiveExerciseEntity) then) =
      _$ActiveExerciseEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: ActiveExerciseEntity.KEY_ID)
          UniqueId id,
      @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
          List<ExerciseSet> sets,
      @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
          int repsTempo,
      @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
          UniqueId exerciseId});
}

class _$ActiveExerciseEntityCopyWithImpl<$Res>
    implements $ActiveExerciseEntityCopyWith<$Res> {
  _$ActiveExerciseEntityCopyWithImpl(this._value, this._then);

  final ActiveExerciseEntity _value;
  // ignore: unused_field
  final $Res Function(ActiveExerciseEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object sets = freezed,
    Object repsTempo = freezed,
    Object exerciseId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      sets: sets == freezed ? _value.sets : sets as List<ExerciseSet>,
      repsTempo: repsTempo == freezed ? _value.repsTempo : repsTempo as int,
      exerciseId:
          exerciseId == freezed ? _value.exerciseId : exerciseId as UniqueId,
    ));
  }
}

abstract class _$ActiveExerciseEntityCopyWith<$Res>
    implements $ActiveExerciseEntityCopyWith<$Res> {
  factory _$ActiveExerciseEntityCopyWith(_ActiveExerciseEntity value,
          $Res Function(_ActiveExerciseEntity) then) =
      __$ActiveExerciseEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: ActiveExerciseEntity.KEY_ID)
          UniqueId id,
      @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
          List<ExerciseSet> sets,
      @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
          int repsTempo,
      @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
          UniqueId exerciseId});
}

class __$ActiveExerciseEntityCopyWithImpl<$Res>
    extends _$ActiveExerciseEntityCopyWithImpl<$Res>
    implements _$ActiveExerciseEntityCopyWith<$Res> {
  __$ActiveExerciseEntityCopyWithImpl(
      _ActiveExerciseEntity _value, $Res Function(_ActiveExerciseEntity) _then)
      : super(_value, (v) => _then(v as _ActiveExerciseEntity));

  @override
  _ActiveExerciseEntity get _value => super._value as _ActiveExerciseEntity;

  @override
  $Res call({
    Object id = freezed,
    Object sets = freezed,
    Object repsTempo = freezed,
    Object exerciseId = freezed,
  }) {
    return _then(_ActiveExerciseEntity(
      id: id == freezed ? _value.id : id as UniqueId,
      sets: sets == freezed ? _value.sets : sets as List<ExerciseSet>,
      repsTempo: repsTempo == freezed ? _value.repsTempo : repsTempo as int,
      exerciseId:
          exerciseId == freezed ? _value.exerciseId : exerciseId as UniqueId,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_ActiveExerciseEntity extends _ActiveExerciseEntity {
  const _$_ActiveExerciseEntity(
      {@required
      @JsonKey(name: ActiveExerciseEntity.KEY_ID)
          this.id,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
          this.sets,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
          this.repsTempo,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
          this.exerciseId})
      : assert(id != null),
        assert(sets != null),
        assert(repsTempo != null),
        assert(exerciseId != null),
        super._();

  factory _$_ActiveExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ActiveExerciseEntityFromJson(json);

  @override
  @JsonKey(name: ActiveExerciseEntity.KEY_ID)
  final UniqueId id;
  @override
  @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
  final List<ExerciseSet> sets;
  @override
  @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
  final int repsTempo;
  @override
  @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
  final UniqueId exerciseId;

  @override
  String toString() {
    return 'ActiveExerciseEntity(id: $id, sets: $sets, repsTempo: $repsTempo, exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveExerciseEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)) &&
            (identical(other.repsTempo, repsTempo) ||
                const DeepCollectionEquality()
                    .equals(other.repsTempo, repsTempo)) &&
            (identical(other.exerciseId, exerciseId) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseId, exerciseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(repsTempo) ^
      const DeepCollectionEquality().hash(exerciseId);

  @override
  _$ActiveExerciseEntityCopyWith<_ActiveExerciseEntity> get copyWith =>
      __$ActiveExerciseEntityCopyWithImpl<_ActiveExerciseEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActiveExerciseEntityToJson(this);
  }
}

abstract class _ActiveExerciseEntity extends ActiveExerciseEntity {
  const _ActiveExerciseEntity._() : super._();
  const factory _ActiveExerciseEntity(
      {@required
      @JsonKey(name: ActiveExerciseEntity.KEY_ID)
          UniqueId id,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
          List<ExerciseSet> sets,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
          int repsTempo,
      @required
      @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
          UniqueId exerciseId}) = _$_ActiveExerciseEntity;

  factory _ActiveExerciseEntity.fromJson(Map<String, dynamic> json) =
      _$_ActiveExerciseEntity.fromJson;

  @override
  @JsonKey(name: ActiveExerciseEntity.KEY_ID)
  UniqueId get id;
  @override
  @JsonKey(name: ActiveExerciseEntity.KEY_SETS)
  List<ExerciseSet> get sets;
  @override
  @JsonKey(name: ActiveExerciseEntity.KEY_REPS_TEMPO)
  int get repsTempo;
  @override
  @JsonKey(name: ActiveExerciseEntity.KEY_EXERCISE_ID)
  UniqueId get exerciseId;
  @override
  _$ActiveExerciseEntityCopyWith<_ActiveExerciseEntity> get copyWith;
}
