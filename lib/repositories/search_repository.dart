import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';
import 'package:stories_server/repositories/story_repository.dart';

class SearchRepository {
  final DatabaseService _databaseService;
  final StoryRepository _storyRepository;

  SearchRepository(this._databaseService, this._storyRepository);

  Future<List<CategoryModel>> searchCategories(String query) async {
    final loweredQuery = query.toLowerCase();
    try {
      final result = await _databaseService.db.query(
        'categories',
        where: 'name_lower LIKE ?',
        whereArgs: ['%$loweredQuery%'],
      );

      return result.map((row) => CategoryModel.fromJson(row)).toList();
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка поиска категорий: ${e.toString()}',
      );
    }
  }

  Future<List<StoryModel>> searchStories(String query) async {
    final loweredQuery = query.toLowerCase();
    try {
      //Список id сказок
      final results = await _databaseService.db.rawQuery(
        '''
    SELECT * FROM stories
    WHERE title_lower LIKE ?
    ORDER BY created_at DESC
  ''',
        ['%$loweredQuery%'],
      );

      final stories = <StoryModel>[];

      for (final row in results) {
        final storyId = row['id'] as String;
        final story = await _storyRepository.getById(id: storyId);

        stories.add(story);
      }

      return stories;
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка поиска сказок: ${e.toString()}',
      );
    }
  }
}
