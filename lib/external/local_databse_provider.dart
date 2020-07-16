import 'package:fitnick/infrastructure/exercise/entities/exercise_entity.dart';
import 'package:fitnick/infrastructure/workout/entities/workout_entity.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabaseProvider {
  static const String dbName = "fitnick.db";
  static const int dbVersion = 1;
  Future<Database> get database async {
    if (_database == null) {
      _database = await _init();
    }
    return _database;
  }

  static Database _database;
  static Future<Database> _init() async {
    final documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, dbName);
    return await openDatabase(path, version: dbVersion, onCreate: _onCreate);
  }

  static void _onCreate(Database db, _) async {
    {
      await db.execute('''
          CREATE TABLE IF NOT EXISTS ${ExerciseEntity.collectionName}(
            ${ExerciseEntity.KEY_ID} TEXT PRIMARY KEY,
            ${ExerciseEntity.KEY_NAME} TEXT NOT NULL,
            ${ExerciseEntity.KEY_VIDEO_PATH} TEXT,
            ${ExerciseEntity.KEY_THUMBNAIL_PATH} TEXT,
            ${ExerciseEntity.KEY_LEVELS} TEXT NOT NULL,
            ${ExerciseEntity.KEY_TOOLS} TEXT NOT NULL,
            ${ExerciseEntity.KEY_TYPES} TEXT NOT NULL,
            ${ExerciseEntity.KEY_PRIMARY_TARGETS} TEXT NOT NULL,
            ${ExerciseEntity.KEY_SECONDARY_TARGETS} TEXT NOT NULL
          );
        ''');
      await db.execute('''
        CREATE TABLE IF NOT EXISTS ${WorkoutEntity.collectionName}(
            ${WorkoutEntity.KEY_ID} TEXT PRIMARY KEY,
            ${WorkoutEntity.KEY_NAME} TEXT NOT NULL,
            ${WorkoutEntity.KEY_EXERCISE_IDS} TEXT NOT NULL
          );
      ''');
    }
  }
}
