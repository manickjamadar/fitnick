import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/infrastructure/workout/data_source/i_workout_data_source.dart';
import 'package:fitnick/infrastructure/workout/entities/workout_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqlite_api.dart';

class LocalWorkoutDataSource extends IWorkoutDataSource {
  final Database db;

  LocalWorkoutDataSource({@required Database database}) : db = database;
  @override
  Future<void> addWorkout(WorkoutEntity workoutEntity) async {
    await db.insert(WorkoutEntity.collectionName, workoutEntity.toLocalJson());
  }

  @override
  Future<List<WorkoutEntity>> finalAll() async {
    final rawWorkoutEntities = await db.query(WorkoutEntity.collectionName);
    return rawWorkoutEntities
        .map((json) => WorkoutEntity.fromLocalJson(json))
        .toList();
  }

  @override
  Future<void> updateWorkout(WorkoutEntity workoutEntity) async {
    await db.update(WorkoutEntity.collectionName, workoutEntity.toLocalJson(),
        where: "${WorkoutEntity.KEY_ID} = ?",
        whereArgs: [workoutEntity.id.value]);
  }

  @override
  Future<void> deleteWorkout(UniqueId workoutId) async {
    await db.delete(WorkoutEntity.collectionName,
        where: "${WorkoutEntity.KEY_ID} = ?", whereArgs: [workoutId.value]);
  }
}
