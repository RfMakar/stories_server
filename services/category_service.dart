import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/models/category_model.dart';

import '../repositories/category_repository.dart';
import '../lib/core/utils/file_service.dart';

class CategoryService {
  final CategoryRepository _categoryRepository;
  CategoryService(this._categoryRepository);

  Future<List<CategoryModel>> getCategories() async {
    return await _categoryRepository.findMany();
  }

  Future<CategoryModel> getCategory({String? id, String? name}) async {
    final _category = await _categoryRepository.findUnique(
      id: id,
      name: name,
    );
    if (_category == null) {
      throw NotFoundException('Категория не найдена');
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
      throw ConflictException('Категория ${_categoryUnique.name} существует');
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

    //Проверка по имени
    if (name != null) {
      final _categoryUniqueName = await _categoryRepository.findUnique(
        name: name,
      );
      if (_categoryUniqueName != null) {
        throw ConflictException(
          'Категория ${_categoryUnique?.name} существует',
        );
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

    return _category;
  }

  Future<void> deleteCategory({required CategoryModel category}) async {
    try {
      await _categoryRepository.delete(
        id: category.id,
      );
      await FileService.delete(category.icon);
    } catch (e) {
      throw NotFoundException('Категории ${category.name} не удалилaсь');
    }
  }

  Future<void> deleteCategories() async {
    //удаление иконок не происходит
    try {
      await _categoryRepository.deleteMany();
    } catch (e) {
      throw NotFoundException('Категории не удалились');
    }
  }
}
