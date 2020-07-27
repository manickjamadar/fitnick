import 'package:dartz/dartz.dart';
import 'package:fitnick/domain/active_workout/models/active_workout.dart';
import 'package:fitnick/domain/workout/failure/workout_failure.dart';
import 'package:fitnick/domain/workout/models/workout.dart';
import 'package:fitnick/infrastructure/active_exercise/data_source/local_active_exercise_data_source.dart';
import 'package:fitnick/infrastructure/active_exercise/entities/active_exercise_entity.dart';
import 'package:fitnick/infrastructure/active_exercise/facade/active_exercise_facade.dart';
import 'package:fitnick/infrastructure/active_workout/data_source/local_active_workout_data_source.dart';
import 'package:fitnick/infrastructure/active_workout/entities/active_workout_entity.dart';
import 'package:fitnick/infrastructure/active_workout/facade/active_workout_facade.dart';
import 'package:fitnick/infrastructure/exercise/data_source/local_exercise_data_source.dart';
import 'package:fitnick/infrastructure/exercise/entities/exercise_entity.dart';
import 'package:fitnick/infrastructure/exercise/facade/local_exercise_facade.dart';
import 'package:fitnick/infrastructure/workout/data_source/local_workout_data_source.dart';
import 'package:fitnick/infrastructure/workout/entities/workout_entity.dart';
import 'package:fitnick/infrastructure/workout/facade/local_workout_facade.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabaseProvider {
  static const String dbName = "fitnick.db";
  static const int dbVersion = 2;
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
    return await openDatabase(path,
        version: dbVersion, onCreate: _onCreate, onUpgrade: _onUpgrade);
  }

  static void _onCreate(Database db, _) async {
    await _createExerciseTable(db);
    await _createWorkoutTable(db);
    await _createActiveExerciseTable(db);
    await _createActiveWorkoutTable(db);
  }

  static void _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await _createActiveExerciseTable(db);
      await _createActiveWorkoutTable(db);
      await _moveAllWorkoutToActiveWorkout(db);
    }
  }

  static Future<void> _createExerciseTable(Database db) async {
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
  }

  static Future<void> _createWorkoutTable(Database db) async {
    await db.execute('''
        CREATE TABLE IF NOT EXISTS ${WorkoutEntity.collectionName}(
            ${WorkoutEntity.KEY_ID} TEXT PRIMARY KEY,
            ${WorkoutEntity.KEY_NAME} TEXT NOT NULL,
            ${WorkoutEntity.KEY_EXERCISE_IDS} TEXT NOT NULL
          );
      ''');
  }

  static Future<void> _createActiveExerciseTable(Database db) async {
    await db.execute('''
    CREATE TABLE IF NOT EXISTS ${ActiveExerciseEntity.collectionName}(
      ${ActiveExerciseEntity.KEY_ID} TEXT PRIMARY KEY,
      ${ActiveExerciseEntity.KEY_SETS} TEXT,
      ${ActiveExerciseEntity.KEY_REPS_TEMPO} INT,
      ${ActiveExerciseEntity.KEY_EXERCISE_ID} TEXT
    );
    ''');
  }

  static Future<void> _createActiveWorkoutTable(Database db) async {
    await db.execute('''
    CREATE TABLE IF NOT EXISTS ${ActiveWorkoutEntity.collectionName}(
      ${ActiveWorkoutEntity.KEY_ID} TEXT PRIMARY KEY,
      ${ActiveWorkoutEntity.KEY_NAME} TEXT NOT NULL,
      ${ActiveWorkoutEntity.KEY_COLOR} INT,
      ${ActiveWorkoutEntity.KEY_IMAGE_PATH} TEXT,
      ${ActiveWorkoutEntity.KEY_ACTIVE_EXERCISE_IDS} TEXT
    );
    ''');
  }

  static Future<void> _moveAllWorkoutToActiveWorkout(Database db) async {
    final exerciseFacade =
        LocalExerciseFacade(dataSource: LocalExerciseDataSource(database: db));
    final workoutFacade = LocalWorkoutFacade(
        exerciseFacade: exerciseFacade,
        workoutDataSource: LocalWorkoutDataSource(database: db));
    final activeWorkoutFacade = ActiveWorkoutFacade(
        dataSource: LocalActiveWorkoutDataSource(database: db),
        activeExerciseFacade: ActiveExerciseFacade(
            exerciseFacade: exerciseFacade,
            dataSource: LocalActiveExerciseDataSource(database: db)));
    final Either<WorkoutFailure, List<Workout>> workoutsFailureOrSuccess =
        await workoutFacade.findAll();
    await workoutsFailureOrSuccess.fold((_) async {},
        (List<Workout> workouts) async {
      final activeWorkouts = workouts
          .map((workout) => ActiveWorkout.fromWorkout(workout))
          .toList();
      activeWorkouts.forEach((activeWorkout) async {
        await activeWorkoutFacade.create(activeWorkout);
      });
    });
  }
}
