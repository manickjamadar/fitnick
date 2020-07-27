import 'package:fitnick/domain/core/unique_id.dart';
import 'package:fitnick/infrastructure/active_workout/data_source/i_active_workout_data_source.dart';
import 'package:fitnick/infrastructure/active_workout/entities/active_workout_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqlite_api.dart';

class LocalActiveWorkoutDataSource extends IActiveWorkoutDataSource {
  final Database database;

  LocalActiveWorkoutDataSource({@required this.database});
  @override
  Future<void> add(ActiveWorkoutEntity activeWorkoutEntity) async {
    await database.insert(
        ActiveWorkoutEntity.collectionName, activeWorkoutEntity.toLocalJson());
  }

  @override
  Future<List<ActiveWorkoutEntity>> findAll() async {
    final List<Map<String, dynamic>> rawEntities =
        await database.query(ActiveWorkoutEntity.collectionName);
    return rawEntities
        .map((json) => ActiveWorkoutEntity.fromLocalJson(json))
        .toList();
  }

  @override
  Future<void> update(ActiveWorkoutEntity activeWorkoutEntity) async {
    await database.update(
        ActiveWorkoutEntity.collectionName, activeWorkoutEntity.toLocalJson(),
        where: "${ActiveWorkoutEntity.KEY_ID}=?",
        whereArgs: [activeWorkoutEntity.id.value]);
  }

  @override
  Future<void> delete(UniqueId activeWorkoutId) async {
    await database.delete(ActiveWorkoutEntity.collectionName,
        where: "${ActiveWorkoutEntity.KEY_ID}=?",
        whereArgs: [activeWorkoutId.value]);
  }
}
