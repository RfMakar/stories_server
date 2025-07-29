import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/utils/file_service.dart';
import 'package:stories_server/models/story_model.dart';
import 'package:stories_server/repositories/story_repository.dart';

class StoryService {
  final StoryRepository _storyRepository;

  StoryService(this._storyRepository);

  Future<List<StoryModel>> getAllStories() async {
    return await _storyRepository.getAllStories();
  }

  Future<List<StoryModel>> getStoriesWithCategories(
      {required String categoryId}) async {
    return await _storyRepository.getStoriesWithCategories(
      categoryId: categoryId,
    );
  }

  Future<StoryModel> getStory({required String id}) async {
    final _story = await _storyRepository.getById(id: id);
    return _story;
  }

  Future<StoryModel> createStory({
    required String title,
    required String description,
    required String content,
    required UploadedFile image,
    UploadedFile? audio,
  }) async {
    //сохранение картинки и получение пути к ней
    final imagePathSave = await FileService.saveImage(image);

    //Сохранение аудио
    String? audioPathSave;
    if (audio != null) {
      audioPathSave = await FileService.saveAudio(audio);
    }

    final _story = await _storyRepository.create(
      title: title,
      description: description,
      content: content,
      image: imagePathSave,
      audio: audioPathSave,
    );
    return _story;
  }

  Future<StoryModel?> updateStory({
    required String id,
    String? title,
    String? description,
    String? content,
    UploadedFile? image,
    UploadedFile? audio,
  }) async {
    final _currentStory = await _storyRepository.getById(id: id);

    //Удаляет старую картинку с сервера
    if (image != null) {
      await FileService.delete(_currentStory.image);
    }

    //Создание новой картинки если пришло обновление
    final imagePathSave =
        image == null ? null : await FileService.saveImage(image);

    //Удаляет старую аудио
    if (audio != null) {
      //Проверка наличия audio
      if (_currentStory.audio != null) {
        await FileService.delete(_currentStory.audio);
      }
    }

    //Создание новой аудио если пришло обновление
    final audioPathSave =
        audio == null ? null : await FileService.saveAudio(audio);
    //Обновление сказки
    final _story = await _storyRepository.update(
      id: id,
      title: title,
      description: description,
      content: content,
      image: imagePathSave,
      audio: audioPathSave,
    );

    return _story;
  }

  Future<StoryModel?> deleteAudioStory({
    required String id,
  }) async {
    final _currentStory = await _storyRepository.getById(id: id);
    if (_currentStory.audio != null) {
      await FileService.delete(_currentStory.audio!);
    }
    final _story = await _storyRepository.deleteAudio(id: id);
    return _story;
  }

  Future<void> deleteStory({required StoryModel story}) async {
    await _storyRepository.deleteById(
      story.id,
    );
    //Удаление картинки
    await FileService.delete(story.image);
    //Удаление аудио
    if (story.audio != null) {
      await FileService.delete(story.audio);
    }
  }

  Future<void> deleteStories() async {
    //удаление картинок не происходит
    await _storyRepository.deleteAll();
  }
}
