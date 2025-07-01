import 'package:stories_server/repositories/story_categories_repository.dart';

class StoryCategoryService {
  final StoryCategoriesRepository _storyCategoriesRepository;
  StoryCategoryService(this._storyCategoriesRepository);

  Future<void> createCategoryToStory({
    required String storyId,
    required String categoryId,
  }) async {
    await _storyCategoriesRepository.create(
      storyId: storyId,
      categoryId: categoryId,
    );
  }

  Future<void> deleteCategoryToStory({
    required String storyId,
    required String categoryId,
  }) async {
    await _storyCategoriesRepository.delete(
      storyId: storyId,
      categoryId: categoryId,
    );
  }
}
