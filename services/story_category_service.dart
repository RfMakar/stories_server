import 'package:stories_server/core/exceptions/app_exceptions.dart';

import '../repositories/story_categories_repository.dart';

class StoryCategoryService {
  final StoryCategoriesRepository _storyCategoriesRepository;
  StoryCategoryService(this._storyCategoriesRepository);

  Future<void> createCategoryToStory({
    required String storyId,
    required String categoryId,
  }) async {
    try {
      await _storyCategoriesRepository.create(
        storyId: storyId,
        categoryId: categoryId,
      );
    } catch (e) {
      throw NotFoundException('Связь уже добавлена');
    }
  }

  Future<void> deleteCategoryToStory({
    required String storyId,
    required String categoryId,
  }) async {
    try {
      await _storyCategoriesRepository.delete(
        storyId: storyId,
        categoryId: categoryId,
      );
    } catch (e) {
     throw NotFoundException('Категория не удалена');
    }
  }
}
