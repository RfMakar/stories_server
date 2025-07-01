import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';

class StoryCategoriesRepository {
  final DatabaseService _databaseService;
  StoryCategoriesRepository(this._databaseService);

  Future<void> create({
    required String storyId,
    required String categoryId,
  }) async {
    final values = {
      'story_id': storyId,
      'category_id': categoryId,
    };
    try {
      await _databaseService.db.insert(
        'story_categories',
        values,
        conflictAlgorithm: ConflictAlgorithm.abort,
      );
    } on DatabaseException catch (e) {
      if (e.isUniqueConstraintError()) {
        throw ConflictException('Связь история-категория уже существует');
      }
      throw DBaseException(
        'Ошибка при добавлении связи: ${e.toString()}',
      );
    }
  }

  Future<void> delete({
    required String storyId,
    required String categoryId,
  }) async {
    try {
      final count = await _databaseService.db.delete(
        'story_categories',
        where: 'story_id = ? AND category_id = ?',
        whereArgs: [storyId, categoryId],
      );

      if (count == 0) {
        throw NotFoundException('Связь история-категория не найдена');
      }
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при удалении связи: ${e.toString()}',
      );
    }
  }
}
