import 'package:stories_server/models/story_model.dart';

import '../repositories/story_popular_repository.dart';

class StoryPopularService {
  final StoryPopularRepository _storyPopularRepository;

  StoryPopularService(this._storyPopularRepository);

  Future<void> updateStoryReads({required String storyId})async{
    await _storyPopularRepository.updateStoryReads(storyId: storyId);
  }

  Future<StoryModel> getStoryTopToDay() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));

    final _story = await _storyPopularRepository.topToDay(
      startOfDay: startOfDay,
      endOfDay: endOfDay,
    );
    return _story;
  }

  Future<List<StoryModel>> getStoriesTopToWeek() async {
    final now = DateTime.now();
    final startOfWeek = now.subtract(const Duration(days: 7));

    final _stories = await _storyPopularRepository.topPeriod(
      start: startOfWeek,
      end: now,
      take: 7,
    );

    return _stories;
  }

  Future<List<StoryModel>> getStoriesTopToMonth() async {
    final now = DateTime.now();
    final startOfMonth = now.subtract(const Duration(days: 30));

    final _stories = await _storyPopularRepository.topPeriod(
      start: startOfMonth,
      end: now,
      take: 7,
    );

    return _stories;
  }

  Future<List<StoryModel>> getStoriesNew() async {
    final _stories = await _storyPopularRepository.newItems();
    return _stories;
  }
}
