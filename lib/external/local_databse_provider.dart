import 'package:fitnick/infrastructure/exercise/entities/exercise_entity.dart';
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
    return await openDatabase(path, version: dbVersion,
        onCreate: (Database db, _) async {
      await db.execute('''
          CREATE TABLE IF NOT EXISTS ${ExerciseEntity.collectionName}(
            ${ExerciseEntity.KEY_ID} TEXT PRIMARY KEY,
            ${ExerciseEntity.KEY_NAME} TEXT NOT NULL,
            ${ExerciseEntity.KEY_LEVEL} TEXT NOT NULL,
            ${ExerciseEntity.KEY_TOOL} TEXT NOT NULL,
            ${ExerciseEntity.KEY_TYPE} TEXT NOT NULL,
            ${ExerciseEntity.KEY_TARGET} TEXT NOT NULL
          );
        ''');
    });
  }
}
