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
      throw Exception([
        'Связь не добавлена',
        e.toString(),
      ]);
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
      throw Exception([
        'Категория не удалена',
        e.toString(),
      ]);
    }
  }
}
