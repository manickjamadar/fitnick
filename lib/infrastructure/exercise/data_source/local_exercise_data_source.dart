import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/infrastructure/exercise/data_source/i_exercise_data_source.dart';
import 'package:fitnick/infrastructure/exercise/entities/exercise_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqlite_api.dart';

class LocalExerciseDataSource extends IExerciseDataSource {
  final Database db;
  LocalExerciseDataSource({@required Database database}) : db = database;
  @override
  Future<void> addExercise(ExerciseEntity exerciseEntity) async {
    await db.insert(
        ExerciseEntity.collectionName, exerciseEntity.toLocalJson());
  }

  @override
  Future<List<ExerciseEntity>> finalAll() async {
    final rawExercises = await db.query(ExerciseEntity.collectionName);
    return rawExercises
        .map((json) => ExerciseEntity.fromLocalJson(json))
        .toList();
  }

  @override
  Future<void> deleteExercise(UniqueId exerciseId) async {
    await db.delete(ExerciseEntity.collectionName,
        where: "${ExerciseEntity.KEY_ID} = ?", whereArgs: [exerciseId.value]);
  }
}
