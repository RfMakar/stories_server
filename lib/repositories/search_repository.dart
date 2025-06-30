import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';

class SearchRepository {
  final DatabaseService _databaseService;

  SearchRepository(this._databaseService);

  Future<List<CategoryModel>> searchCategories(String query) async {
    final result = await _databaseService.db.query(
      'categories',
      where: 'name LIKE ?',
      whereArgs: ['%$query%'],
    );

    return result.map((row) => CategoryModel.fromJson(row)).toList();
  }

  Future<List<StoryModel>> searchStories(String query) async {
    final db = _databaseService.db;
    final results = await db.rawQuery('''
    SELECT * FROM stories
    WHERE title LIKE ? OR description LIKE ?
    ORDER BY created_at DESC
  ''', ['%$query%', '%$query%']);

    final stories = <StoryModel>[];

    for (final row in results) {
      final storyId = row['id'] as String;

      // Получаем категории
      final categoryResults = await db.rawQuery('''
      SELECT c.id, c.name, c.icon
      FROM story_categories sc
      JOIN categories c ON sc.category_id = c.id
      WHERE sc.story_id = ?
    ''', [storyId]);

      final categories = categoryResults.map((cat) {
        return CategoryModel(
          id: cat['id'] as String,
          name: cat['name'] as String,
          icon: cat['icon'] as String,
        );
      }).toList();

      stories.add(
        StoryModel(
          id: storyId,
          title: row['title'] as String,
          description: row['description'] as String,
          content: row['content'] as String,
          image: row['image'] as String,
          createdAt: DateTime.parse(row['created_at'] as String),
          readCount: row['read_count'] as int,
          categories: categories,
        ),
      );
    }

    return stories;
  }
}
