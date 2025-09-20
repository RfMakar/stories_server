import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/utils/file_service.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/repositories/category_repository.dart';

class CategoryService {
  final CategoryRepository _categoryRepository;
  CategoryService(this._categoryRepository);

  Future<List<CategoryModel>> getCategories() async {
    return await _categoryRepository.getAll();
  }

  Future<CategoryModel> getCategory({required String id}) async {
    final _category = await _categoryRepository.getById(
      id: id,
    );
    return _category;
  }

  Future<CategoryModel> createCategory({
    required String name,
    required String typeId,
    required UploadedFile icon,
  }) async {
    //сохранение картинки и получение пути к ней
    final iconPathSave = await FileService.saveIcon(icon);

    final _createCategory = await _categoryRepository.create(
      name: name,
      typeId: typeId,
      icon: iconPathSave,
    );
    return _createCategory;
  }

  Future<CategoryModel?> updateCategory({
    required String id,
    String? name,
    String? typeId,
    UploadedFile? icon,
  }) async {
    //Удаляет старую иконку с сервера
    if (icon != null) {
      final _categoryUnique = await _categoryRepository.getById(id: id);
      await FileService.delete(_categoryUnique.icon);
    }
    final iconPathSave = icon == null ? null : await FileService.saveIcon(icon);

    final _category = await _categoryRepository.update(
      id: id,
      name: name,
      typeId: typeId,
      icon: iconPathSave,
    );
    return _category;
  }

  Future<void> deleteCategory({required CategoryModel category}) async {
    await _categoryRepository.deleteById(
      id: category.id,
    );
    await FileService.delete(category.icon);
  }

  Future<void> deleteCategories() async {
    //удаление иконок не происходит
    await _categoryRepository.deleteAll();
  }
}
