import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/models/story_model.dart';

import '../repositories/story_repository.dart';
import '../lib/utils/file_service.dart';

class StoryService {
  final StoryRepository _storyRepository;

  StoryService(this._storyRepository);

  Future<List<StoryModel>> getStories() async {
    return await _storyRepository.findMany();
  }

  Future<StoryModel> getStory({required String id}) async {
    final _story = await _storyRepository.findUnique(id: id);
    if (_story == null) {
      throw Exception('Сказки не существует');
    }
    return _story;
  }

  Future<StoryModel> createStory({
    required String title,
    required String content,
    required UploadedFile image,
  }) async {
    //сохранение картинки и получение пути к ней
    final imagePathSave = await FileService.saveImage(image);

    final _createStory = await _storyRepository.create(
      title: title,
      content: content,
      image: imagePathSave,
    );
    return StoryModel.fromJson(_createStory.toJson());
  }

  Future<StoryModel?> updateStory({
    required String id,
    String? title,
    String? content,
    UploadedFile? image,
  }) async {
    //Удаляет старую картинку с сервера
    if (image != null) {
      final _story = await _storyRepository.findUnique(id: id);
      await FileService.delete(_story?.image);
    }
    final imagePathSave =
        image == null ? null : await FileService.saveImage(image);

    final _story = await _storyRepository.update(
      id: id,
      title: title,
      content: content,
      image: imagePathSave,
    );
    if (_story == null) {
      throw Exception('Не удалось обновить категорию');
    }
    return StoryModel.fromJson(_story.toJson());
  }

  Future<void> deleteStory({required StoryModel story}) async {
    await _storyRepository.delete(
      story.id,
    );
    await FileService.delete(story.image);
  }

  Future<void> deleteStories() async {
    await _storyRepository.deleteMany();
    //удаление картинок не происходит
  }
}
