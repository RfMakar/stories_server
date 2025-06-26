import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';
import 'package:uuid/uuid.dart';

class StoryRepository {
  final DatabaseService _databaseService;

  StoryRepository(this._databaseService);

  Future<List<StoryModel>> findMany({String? categoryId}) async {
    final db = _databaseService.db;

    final result = await db.rawQuery('''
    SELECT s.id, s.title, s.description, s.content, s.image, s.created_at, s.read_count,
           c.id AS category_id, c.name AS category_name, c.icon AS category_icon
    FROM stories s
    LEFT JOIN story_categories sc ON s.id = sc.story_id
    LEFT JOIN categories c ON c.id = sc.category_id
    ${categoryId != null ? 'WHERE c.id = ?' : ''}
    ORDER BY s.created_at DESC
  ''', categoryId != null ? [categoryId] : []);

    // Временное хранилище для сгруппированных данных
    final Map<String, Map<String, dynamic>> storyDataMap = {};
    final Map<String, List<CategoryModel>> categoriesMap = {};

    for (final row in result) {
      final storyId = row['id'] as String;

      // Сохраняем основную информацию (один раз)
      storyDataMap.putIfAbsent(
          storyId,
          () => {
                'id': storyId,
                'title': row['title'],
                'description': row['description'],
                'content': row['content'],
                'image': row['image'],
                'createdAt': DateTime.parse(row['created_at'] as String),
                'readCount': row['read_count'],
              });

      // Сохраняем категории
      if (row['category_id'] != null) {
        categoriesMap.putIfAbsent(storyId, () => []);
        categoriesMap[storyId]!.add(
          CategoryModel(
            id: row['category_id'] as String,
            name: row['category_name'] as String,
            icon: row['category_icon'] as String,
          ),
        );
      }
    }

    // Собираем список StoryModel с final categories
    return storyDataMap.entries.map((entry) {
      final data = entry.value;
      final categories = categoriesMap[entry.key] ?? [];

      return StoryModel(
        id: data['id'] as String,
        title: data['title'] as String,
        description: data['description'] as String,
        content: data['content'] as String,
        image: data['image'] as String,
        createdAt: data['createdAt'] as DateTime,
        readCount: data['readCount'] as int,
        categories: categories,
      );
    }).toList();
  }

  Future<StoryModel?> findUnique(
      {required String id, bool isRecord = false}) async {
    final db = _databaseService.db;

    // Запись прочтения
    if (isRecord) {
      await _readRecord(id: id); // реализуй этот метод отдельно
    }

    // Получение истории и её категорий
    final result = await db.rawQuery('''
    SELECT s.id, s.title, s.description, s.content, s.image, s.created_at, s.read_count,
           c.id AS category_id, c.name AS category_name, c.icon AS category_icon
    FROM stories s
    LEFT JOIN story_categories sc ON s.id = sc.story_id
    LEFT JOIN categories c ON c.id = sc.category_id
    WHERE s.id = ?
  ''', [id]);

    if (result.isEmpty) return null;

    final first = result.first;

    final story = StoryModel(
      id: first['id'] as String,
      title: first['title'] as String,
      description: first['description'] as String,
      content: first['content'] as String,
      image: first['image'] as String,
      createdAt: DateTime.parse(first['created_at'] as String),
      readCount: first['read_count'] as int,
      categories: result
          .where((row) => row['category_id'] != null)
          .map((row) => CategoryModel(
                id: row['category_id'] as String,
                name: row['category_name'] as String,
                icon: row['category_icon'] as String,
              ))
          .toList(),
    );

    return story;
  }

  Future<StoryModel> create({
    required String title,
    required String description,
    required String content,
    required String image,
  }) async {
    final db = _databaseService.db;
    final uuid = Uuid();
    final id = uuid.v4();
    final createdAt = DateTime.now();

    await db.insert('stories', {
      'id': id,
      'title': title,
      'description': description,
      'content': content,
      'image': image,
      'created_at': createdAt.toIso8601String(),
      'read_count': 0,
    });

    // Так как новая сказка не содержит категорий при создании — пустой список
    return StoryModel(
      id: id,
      title: title,
      description: description,
      content: content,
      image: image,
      createdAt: createdAt,
      readCount: 0,
      categories: [],
    );
  }

  Future<StoryModel?> update({
    required String id,
    String? title,
    String? description,
    String? content,
    String? image,
  }) async {
    final db = _databaseService.db;

    // Если ничего не передано для обновления — просто вернуть текущую запись
    if (title == null &&
        description == null &&
        content == null &&
        image == null) {
      return await findUnique(id: id);
    }

    final values = <String, Object?>{};
    if (title != null) values['title'] = title;
    if (description != null) values['description'] = description;
    if (content != null) values['content'] = content;
    if (image != null) values['image'] = image;

    final count = await db.update(
      'stories',
      values,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (count == 0) {
      // Запись не найдена для обновления
      return null;
    }

    // Возвращаем обновлённую запись с категориями
    return await findUnique(id: id);
  }

  Future<void> delete(String id) async {
    final db = _databaseService.db;
    await db.delete(
      'stories',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteMany() async {
    final db = _databaseService.db;
    await db.delete('stories');
  }

  Future<void> _readRecord({required String id}) async {
    final db = _databaseService.db;
    final uuid = Uuid();

    // Увеличиваем read_count у сказки
    await db.rawUpdate('''
    UPDATE stories
    SET read_count = read_count + 1
    WHERE id = ?
  ''', [id]);

    // Создаём запись о прочтении сказки
    await db.insert('story_reads', {
      'id': uuid.v4(),
      'story_id': id,
      'read_at': DateTime.now().toIso8601String(),
    });
  }
}
