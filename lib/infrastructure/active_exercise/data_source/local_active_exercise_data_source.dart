import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/infrastructure/active_exercise/data_source/i_active_exercise_data_source.dart';
import 'package:fitnick/infrastructure/active_exercise/entities/active_exercise_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqlite_api.dart';

class LocalActiveExerciseDataSource extends IActiveExerciseDataSource {
  final Database database;

  LocalActiveExerciseDataSource({@required this.database});
  @override
  Future<void> add(ActiveExerciseEntity activeExerciseEntity) async {
    await database.insert(ActiveExerciseEntity.collectionName,
        activeExerciseEntity.toLocalJson());
  }

  @override
  Future<void> delete(UniqueId activeExerciseId) async {
    await database.delete(ActiveExerciseEntity.collectionName,
        where: "${ActiveExerciseEntity.KEY_ID}=?",
        whereArgs: [activeExerciseId.value]);
  }

  @override
  Future<List<ActiveExerciseEntity>> findAll() async {
    final List<Map<String, dynamic>> rawEntities =
        await database.query(ActiveExerciseEntity.collectionName);
    return rawEntities
        .map((json) => ActiveExerciseEntity.fromLocalJson(json))
        .toList();
  }

  @override
  Future<void> update(ActiveExerciseEntity activeExerciseEntity) async {
    await database.update(
        ActiveExerciseEntity.collectionName, activeExerciseEntity.toLocalJson(),
        where: "${ActiveExerciseEntity.KEY_ID}=?",
        whereArgs: [activeExerciseEntity.id.value]);
  }
}
