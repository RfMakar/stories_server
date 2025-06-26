import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/data/database_sevice.dart';

class StoryCategoriesRepository {
  final DatabaseService _databaseService;
  StoryCategoriesRepository(this._databaseService);

  Future<void> create({
    required String storyId,
    required String categoryId,
  }) async {
    final db = _databaseService.db;

    await db.insert(
      'story_categories',
      {
        'story_id': storyId,
        'category_id': categoryId,
      },
      conflictAlgorithm: ConflictAlgorithm
          .abort, // или ConflictAlgorithm.ignore, если хочешь игнорировать дубликаты
    );
  }

  Future<void> delete({
    required String storyId,
    required String categoryId,
  }) async {
    final db = _databaseService.db;

    await db.delete(
      'story_categories',
      where: 'story_id = ? AND category_id = ?',
      whereArgs: [storyId, categoryId],
    );
  }
}
