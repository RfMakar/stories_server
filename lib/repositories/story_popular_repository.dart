import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';

class StoryPopularRepository {
  final DatabaseService _databaseService;

  StoryPopularRepository(this._databaseService);

  Future<StoryModel?> topToDay({
    required DateTime startOfDay,
    required DateTime endOfDay,
  }) async {
    final db = _databaseService.db;

    // Получаем id истории с максимальным числом прочтений за указанный период
    final result = await db.rawQuery('''
    SELECT s.*, COUNT(sr.id) AS read_count_in_period
    FROM stories s
    LEFT JOIN story_reads sr ON s.id = sr.story_id
      AND sr.read_at > ? AND sr.read_at < ?
    GROUP BY s.id
    ORDER BY read_count_in_period DESC
    LIMIT 1
  ''', [startOfDay.toIso8601String(), endOfDay.toIso8601String()]);

    if (result.isEmpty) {
      return null;
    }

    final row = result.first;

    // Получаем категории для этой истории
    final categoriesResult = await db.rawQuery('''
    SELECT c.id, c.name, c.icon
    FROM categories c
    INNER JOIN story_categories sc ON c.id = sc.category_id
    WHERE sc.story_id = ?
  ''', [row['id']]);

    final categories = categoriesResult
        .map((catRow) => CategoryModel(
              id: catRow['id'] as String,
              name: catRow['name'] as String,
              icon: catRow['icon'] as String,
            ))
        .toList();

    return StoryModel(
      id: row['id'] as String,
      title: row['title'] as String,
      description: row['description'] as String,
      content: row['content'] as String,
      image: row['image'] as String,
      createdAt: DateTime.parse(row['created_at'] as String),
      readCount: row['read_count'] as int,
      categories: categories,
    );
  }

  Future<List<StoryModel>> topPeriod({
    required DateTime start,
    required DateTime end,
    required int take,
  }) async {
    final db = _databaseService.db;

    // Получаем top сказок с подсчётом прочтений за период и сортировкой по убыванию
    final result = await db.rawQuery('''
    SELECT s.*, COUNT(sr.id) AS read_count_in_period
    FROM stories s
    LEFT JOIN story_reads sr ON s.id = sr.story_id
      AND sr.read_at > ? AND sr.read_at < ?
    GROUP BY s.id
    ORDER BY read_count_in_period DESC
    LIMIT ?
  ''', [start.toIso8601String(), end.toIso8601String(), take]);

    // Для каждой сказки получаем категории
    List<StoryModel> stories = [];
    for (final row in result) {
      final categoriesResult = await db.rawQuery('''
      SELECT c.id, c.name, c.icon
      FROM categories c
      INNER JOIN story_categories sc ON c.id = sc.category_id
      WHERE sc.story_id = ?
    ''', [row['id']]);

      final categories = categoriesResult
          .map((catRow) => CategoryModel(
                id: catRow['id'] as String,
                name: catRow['name'] as String,
                icon: catRow['icon'] as String,
              ))
          .toList();

      stories.add(StoryModel(
        id: row['id'] as String,
        title: row['title'] as String,
        description: row['description'] as String,
        content: row['content'] as String,
        image: row['image'] as String,
        createdAt: DateTime.parse(row['created_at'] as String),
        readCount: row['read_count'] as int,
        categories: categories,
      ));
    }

    return stories;
  }

  Future<List<StoryModel>> newItems() async {
    final db = _databaseService.db;

    // Получаем 7 последних сказок по created_at
    final storiesResult = await db.query(
      'stories',
      orderBy: 'created_at DESC',
      limit: 7,
    );

    List<StoryModel> stories = [];

    for (final row in storiesResult) {
      // Получаем категории для каждой сказки
      final categoriesResult = await db.rawQuery('''
      SELECT c.id, c.name, c.icon
      FROM categories c
      INNER JOIN story_categories sc ON c.id = sc.category_id
      WHERE sc.story_id = ?
    ''', [row['id']]);

      final categories = categoriesResult
          .map((catRow) => CategoryModel(
                id: catRow['id'] as String,
                name: catRow['name'] as String,
                icon: catRow['icon'] as String,
              ))
          .toList();

      stories.add(StoryModel(
        id: row['id'] as String,
        title: row['title'] as String,
        description: row['description'] as String,
        content: row['content'] as String,
        image: row['image'] as String,
        createdAt: DateTime.parse(row['created_at'] as String),
        readCount: row['read_count'] as int,
        categories: categories,
      ));
    }

    return stories;
  }
}
