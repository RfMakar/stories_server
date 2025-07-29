import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';
import 'package:uuid/uuid.dart';

class StoryRepository {
  final DatabaseService _databaseService;

  StoryRepository(this._databaseService);

  //Все сказки с категориями
  Future<List<StoryModel>> getAllStories() async {
    try {
      final result = await _databaseService.db.rawQuery('''
    SELECT s.id, s.title, s.description, s.content, s.image, s.audio, s.created_at, s.read_count, c.id AS category_id, c.name AS category_name, c.icon AS category_icon
    FROM stories s
    LEFT JOIN story_categories sc ON s.id = sc.story_id
    LEFT JOIN categories c ON c.id = sc.category_id
    ORDER BY s.created_at DESC
  ''');

      return _mapStoryRows(result);
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении сказок из базы данных: ${e.toString()}',
      );
    }
  }

  //Сказки с конкретной категорией
  Future<List<StoryModel>> getStoriesWithCategories({
    required String categoryId,
  }) async {
    try {
      // Шаг 1: Получаем ID всех сказок, у которых есть нужная категория
      final storyIdsResult = await _databaseService.db.rawQuery('''
      SELECT story_id
      FROM story_categories
      WHERE category_id = ?
    ''', [categoryId]);

      if (storyIdsResult.isEmpty) return [];

      final storyIds =
          storyIdsResult.map((e) => e['story_id'] as String).toList();

      // Формируем плейсхолдеры (?, ?, ?, ...)
      final placeholders = List.filled(storyIds.length, '?').join(', ');

      // Шаг 2: Получаем сами сказки и ВСЕ их категории
      final result = await _databaseService.db.rawQuery('''
      SELECT s.id, s.title, s.description, s.content, s.image, s.audio, s.created_at, s.read_count, c.id AS category_id, c.name AS category_name, c.icon AS category_icon
      FROM stories s
      LEFT JOIN story_categories sc ON s.id = sc.story_id
      LEFT JOIN categories c ON c.id = sc.category_id
      WHERE s.id IN ($placeholders)
      ORDER BY s.created_at DESC
    ''', storyIds);

      return _mapStoryRows(result);
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении сказок по категории: ${e.toString()}',
      );
    }
  }

  //Сказки со всеми категориями
  List<StoryModel> _mapStoryRows(List<Map<String, Object?>> result) {
    final Map<String, StoryModel> storiesMap = {};

    for (final row in result) {
      final storyId = row['id'] as String;

      storiesMap.putIfAbsent(storyId, () {
        return StoryModel(
          id: storyId,
          title: row['title'] as String,
          description: row['description'] as String,
          content: row['content'] as String,
          image: row['image'] as String,
          audio: row['audio'] as String?,
          createdAt: DateTime.parse(row['created_at'] as String),
          readCount: row['read_count'] as int,
          categories: [],
        );
      });

      if (row['category_id'] != null) {
        storiesMap[storyId]!.categories.add(
              CategoryModel(
                id: row['category_id'] as String,
                name: row['category_name'] as String,
                icon: row['category_icon'] as String,
              ),
            );
      }
    }

    return storiesMap.values.toList();
  }

  Future<StoryModel> getById({required String id}) async {
    try {
      final rows = await _databaseService.db.rawQuery(
        '''
      SELECT s.id, s.title, s.description, s.content, s.image, s.audio, s.created_at, s.read_count, c.id AS category_id, c.name AS category_name, c.icon AS category_icon
      FROM stories s
      LEFT JOIN story_categories sc ON s.id = sc.story_id
      LEFT JOIN categories c ON c.id = sc.category_id
      WHERE s.id = ?
      ''',
        [id],
      );

      if (rows.isEmpty) {
        throw NotFoundException('Сказка с id $id не найдена');
      }

      final stories = _mapStoryRows(rows);
      return stories.first; // т.к. это выборка по ID — всегда одна сказка
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении сказки из базы данных: ${e.toString()}',
      );
    }
  }

  Future<StoryModel> create({
    required String title,
    required String description,
    required String content,
    required String image,
    String? audio,
  }) async {
    final uuid = Uuid();
    final id = uuid.v4();
    final createdAt = DateTime.now();

    try {
      await _databaseService.db.insert('stories', {
        'id': id,
        'title': title,
        'title_lower': title.toLowerCase(),
        'description': description,
        'content': content,
        'image': image,
        'audio': audio,
        'created_at': createdAt.toIso8601String(),
        'read_count': 0,
      });

      return StoryModel(
        id: id,
        title: title,
        description: description,
        content: content,
        image: image,
        audio: audio,
        createdAt: createdAt,
        readCount: 0,
        categories: [],
      );
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при создании сказки: ${e.toString()}',
      );
    }
  }

  Future<StoryModel> update({
    required String id,
    String? title,
    String? description,
    String? content,
    String? image,
    String? audio,
  }) async {
    final values = <String, Object?>{};
    if (title != null) {
      values['title'] = title;
      values['title_lower'] = title.toLowerCase();
    }
    if (description != null) values['description'] = description;
    if (content != null) values['content'] = content;
    if (image != null) values['image'] = image;
    if (audio != null) values['audio'] = audio;

    try {
      final count = await _databaseService.db.update(
        'stories',
        values,
        where: 'id = ?',
        whereArgs: [id],
      );

      if (count == 0) {
        throw NotFoundException('Сказка с id $id не найдена');
      }

      // Возвращаем обновлённую запись с категориями
      return await getById(id: id);
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при обновлении сказки: ${e.toString()}',
      );
    }
  }

  Future<StoryModel> deleteAudio({required String id}) async {
    final values = <String, Object?>{};
    values['audio'] = null;

    try {
      final count = await _databaseService.db.update(
        'stories',
        values,
        where: 'id = ?',
        whereArgs: [id],
      );

      if (count == 0) {
        throw NotFoundException('Сказка с id $id не найдена');
      }

      // Возвращаем обновлённую запись с категориями
      return await getById(id: id);
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при удаление аудио у сказки: ${e.toString()}',
      );
    }
  }

  Future<void> deleteById(String id) async {
    try {
      final count = await _databaseService.db.delete(
        'stories',
        where: 'id = ?',
        whereArgs: [id],
      );
      if (count == 0) {
        throw NotFoundException('Сказка с id $id не найдена для удаления');
      }
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при удалении категории: ${e.toString()}',
      );
    }
  }

  Future<void> deleteAll() async {
    try {
      await _databaseService.db.delete('stories');
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при удалении всех сказок: ${e.toString()}',
      );
    }
  }

  Future<void> updateReadCount({required String id}) async {
    try {
      // Увеличиваем read_count у сказки
      await _databaseService.db.rawUpdate(
        '''
        UPDATE stories
        SET read_count = read_count + 1
        WHERE id = ?
        ''',
        [id],
      );
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при увеличение счеткика о прочтение сказки: ${e.toString()}',
      );
    }
  }
}
