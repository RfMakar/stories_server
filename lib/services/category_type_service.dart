import 'package:stories_server/models/category_type_model.dart';
import 'package:stories_server/repositories/category_type_repository.dart';

class CategoryTypeService {
  final CategoryTypeRepository _categoryTypeRepository;

  CategoryTypeService(this._categoryTypeRepository);

  Future<List<CategoryTypeModel>> getCategoriesTypes() async {
    final _categoriesTypes = await _categoryTypeRepository.getAll();
    return _categoriesTypes;
  }

  Future<CategoryTypeModel> getCategoryType({required String id}) async {
    final _categoryType = await _categoryTypeRepository.getById(id: id);
    return _categoryType;
  }

  Future<List<CategoryTypeModel>> getCategoryTypesWithCategories() {
    return _categoryTypeRepository.getAllWithCategories();
  }

  Future<CategoryTypeModel> createCategoryType({required String name}) async {
    final _createCategoryType =
        await _categoryTypeRepository.create(name: name);
    return _createCategoryType;
  }

  Future<CategoryTypeModel> updateCategoryType({
    required String id,
    required String name,
  }) async {
    final _updateCategoryType =
        await _categoryTypeRepository.update(id: id, name: name);
    return _updateCategoryType;
  }

  Future<void> deleteCategoryType({required String id}) async {
    await _categoryTypeRepository.deleteById(id: id);
  }

  Future<void> deleteCategoriesTypes() async {
    await _categoryTypeRepository.deleteAll();
  }
}
