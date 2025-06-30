import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/core/utils/file_service.dart';
import 'package:stories_server/models/story_model.dart';
import 'package:stories_server/repositories/story_repository.dart';

class StoryService {
  final StoryRepository _storyRepository;

  StoryService(this._storyRepository);

  Future<List<StoryModel>> getStories({String? categoryId}) async {
    return await _storyRepository.findMany(
      categoryId: categoryId,
    );
  }

  Future<StoryModel> getStory({
    required String id,
    required bool isRecord,
  }) async {
    final _story = await _storyRepository.findUnique(
      id: id,
      isRecord: isRecord,
    );
    if (_story == null) {
      throw NotFoundException('Сказка с id $id не найдена');
    }
    return _story;
  }

  Future<StoryModel> createStory({
    required String title,
    required String description,
    required String content,
    required UploadedFile image,
  }) async {
    //сохранение картинки и получение пути к ней
    final imagePathSave = await FileService.saveImage(image);

    final _story = await _storyRepository.create(
      title: title,
      description: description,
      content: content,
      image: imagePathSave,
    );
    return _story;
  }

  Future<StoryModel?> updateStory({
    required String id,
    String? title,
    String? description,
    String? content,
    UploadedFile? image,
  }) async {
    //Удаляет старую картинку с сервера
    if (image != null) {
      final _story = await _storyRepository.findUnique(
        id: id,
        isRecord: false,
      );
      await FileService.delete(_story?.image);
    }
    final imagePathSave =
        image == null ? null : await FileService.saveImage(image);

    final _story = await _storyRepository.update(
      id: id,
      title: title,
      description: description,
      content: content,
      image: imagePathSave,
    );

    return _story;
  }

  Future<void> deleteStory({required StoryModel story}) async {
    try {
      await _storyRepository.delete(
        story.id,
      );
      await FileService.delete(story.image);
    } catch (e) {
      throw NotFoundException('Сказка ${story.title} не удалилaсь');
    }
  }

  Future<void> deleteStories() async {
    //удаление картинок не происходит
    try {
      await _storyRepository.deleteMany();
    } catch (e) {
      throw NotFoundException('Сказки не удалились');
    }
  }

 
}
