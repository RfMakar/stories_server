import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/models/category_model.dart';

import '../repositories/category_repository.dart';
import '../lib/utils/file_service.dart';

class CategoryService {
  final CategoryRepository _categoryRepository;

  CategoryService(this._categoryRepository);

  Future<List<CategoryModel>> getCategories() async {
    return await _categoryRepository.findMany();
  }

  Future<CategoryModel> getCategory({String? id, String? name}) async {
    final _category = await _categoryRepository.findUnique(id: id, name: name);
    if (_category == null) {
      throw Exception('Категории не существует');
    }
    return _category;
  }

  Future<CategoryModel> createCategory({
    required String name,
    required UploadedFile icon,
  }) async {
    //Проверка уникальности категории
    final _categoryUnique = await _categoryRepository.findUnique(name: name);

    if (_categoryUnique != null) {
      throw Exception('Такая категория существует');
    }
    //сохранение картинки и получение пути к ней
    final iconPathSave = await FileService.saveIcon(icon);

    final _createCategory = await _categoryRepository.create(
      name: name,
      icon: iconPathSave,
    );
    return _createCategory;
  }

  Future<CategoryModel?> updateCategory({
    required String id,
    String? name,
    UploadedFile? icon,
  }) async {
    //Проверка уникальности категории
    final _categoryUnique = await _categoryRepository.findUnique(id: id);
    if (name != null) {
      if (_categoryUnique?.name == name) {
        throw Exception('Имя категории должно быть уникальным');
      }
    }

    //Удаляет старую иконку с сервера
    if (icon != null) {
      await FileService.delete(_categoryUnique?.icon);
    }
    final iconPathSave = icon == null ? null : await FileService.saveIcon(icon);

    final _category = await _categoryRepository.update(
      id: id,
      name: name,
      icon: iconPathSave,
    );

    if (_category == null) {
      throw Exception('Не удалось обновить категорию');
    }
    return _category;
  }

  Future<void> deleteCategory({required CategoryModel category}) async {
    await _categoryRepository.delete(
      id: category.id,
    );
    await FileService.delete(category.icon);
  }

  Future<void> deleteCategories() async {
    await _categoryRepository.deleteMany();
    //удаление иконок не происходит
  }
}
