import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/story_model.dart';
import 'package:stories_server/repositories/story_repository.dart';
import 'package:uuid/uuid.dart';

class StoryPopularRepository {
  final DatabaseService _databaseService;
  final StoryRepository _storyRepository;

  StoryPopularRepository(this._databaseService, this._storyRepository);

  Future<void> updateStoryReads({required String storyId}) async {
    final uuid = Uuid();
    try {
      // Увеличиваем read_count у сказки
      await _storyRepository.updateReadCount(id: storyId);

      // Создаём запись о прочтении сказки
      await _databaseService.db.insert('story_reads', {
        'id': uuid.v4(),
        'story_id': storyId,
        'read_at': DateTime.now().toIso8601String(),
      });
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при создание записи о прочтение сказки: ${e.toString()}',
      );
    }
  }

  Future<StoryModel> topToDay({
    required DateTime startOfDay,
    required DateTime endOfDay,
  }) async {
    try {
      // Получаем id истории с максимальным числом прочтений за указанный период
      final result = await _databaseService.db.rawQuery(
        '''
    SELECT s.*, COUNT(sr.id) AS read_count_in_period
    FROM stories s
    LEFT JOIN story_reads sr ON s.id = sr.story_id AND sr.read_at > ? AND sr.read_at < ?
    GROUP BY s.id
    ORDER BY read_count_in_period DESC
    LIMIT 1
  ''',
        [startOfDay.toIso8601String(), endOfDay.toIso8601String()],
      );

      if (result.isEmpty) {
        throw NotFoundException('Сказка не найдена');
      }

      final storyId = result.first['id'] as String;

      return await _storyRepository.getById(id: storyId);
    } on DatabaseException catch (e) {
      throw DBaseException(
          'Ошибка при получение популярных сказок: ${e.toString()}');
    }
  }

  Future<List<StoryModel>> topPeriod({
    required DateTime start,
    required DateTime end,
    required int take,
  }) async {
    try {
      // Получаем top сказок с подсчётом прочтений за период и сортировкой по убыванию
      final result = await _databaseService.db.rawQuery(
        '''
    SELECT s.*, COUNT(sr.id) AS read_count_in_period
    FROM stories s
    LEFT JOIN story_reads sr ON s.id = sr.story_id
      AND sr.read_at > ? AND sr.read_at < ?
    GROUP BY s.id
    ORDER BY read_count_in_period DESC
    LIMIT ?
  ''',
        [start.toIso8601String(), end.toIso8601String(), take],
      );

      // Для каждой сказки получаем категории
      List<StoryModel> stories = [];

      for (final row in result) {
        final storyId = row['id'] as String;
        final story = await _storyRepository.getById(id: storyId);

        stories.add(story);
      }

      return stories;
    } on DatabaseException catch (e) {
      throw DBaseException(
          'Ошибка при получение популярных сказок: ${e.toString()}');
    }
  }

  Future<List<StoryModel>> newItems() async {
    try {
      // Получаем 7 последних сказок по created_at
      final result = await _databaseService.db.query(
        'stories',
        orderBy: 'created_at DESC',
        limit: 7,
      );

      List<StoryModel> stories = [];

      for (final row in result) {
        final storyId = row['id'] as String;
        final story = await _storyRepository.getById(id: storyId);

        stories.add(story);
      }

      return stories;
    } on DatabaseException catch (e) {
      throw DBaseException(
          'Ошибка при получение популярных сказок: ${e.toString()}');
    }
  }
}
