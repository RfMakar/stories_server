import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/models/story_model.dart';

import '../repositories/story_repository.dart';
import '../lib/core/utils/file_service.dart';

class StoryService {
  final StoryRepository _storyRepository;

  StoryService(this._storyRepository);

  Future<List<StoryModel>> getStories() async {
    return await _storyRepository.findMany();
  }

  Future<StoryModel> getStory({required String id}) async {
    try {
      final _story = await _storyRepository.findUnique(id: id);
      return _story!;
    } catch (e) {
      throw Exception([
        'Сказки не существует',
        e.toString(),
      ]);
    }
  }

  Future<StoryModel> createStory({
    required String title,
    required String content,
    required UploadedFile image,
  }) async {
    try {
      //сохранение картинки и получение пути к ней
      final imagePathSave = await FileService.saveImage(image);

      final _createStory = await _storyRepository.create(
        title: title,
        content: content,
        image: imagePathSave,
      );
      return StoryModel.fromJson(_createStory.toJson());
    } catch (e) {
      throw Exception([
        'Сказка не создалась',
        e.toString(),
      ]);
    }
  }

  Future<StoryModel?> updateStory({
    required String id,
    String? title,
    String? content,
    UploadedFile? image,
  }) async {
    try {
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

      return StoryModel.fromJson(_story!.toJson());
    } catch (e) {
      throw Exception([
        'Не удалось обновить категорию',
        e.toString(),
      ]);
    }
  }

  Future<void> deleteStory({required StoryModel story}) async {
    try {
      await _storyRepository.delete(
        story.id,
      );
      await FileService.delete(story.image);
    } catch (e) {
      throw Exception([
        'Сказка не удалена',
        e.toString(),
      ]);
    }
  }

  Future<void> deleteStories() async {
    //удаление картинок не происходит
    try {
      await _storyRepository.deleteMany();
    } catch (e) {
      throw Exception([
        'Сказки не удалены',
        e.toString(),
      ]);
    }
  }
}
