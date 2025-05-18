import 'package:orm/orm.dart';

import '../prisma/generated_dart_client/client.dart';
import '../prisma/generated_dart_client/model.dart';
import '../prisma/generated_dart_client/prisma.dart';

class CategoryRepository {
  final PrismaClient _prismaClient;

  CategoryRepository(this._prismaClient);

  Future<List<Category>> readCategories() async {
    final _categories = await _prismaClient.category.findMany();
    return _categories.toList();
  }

  Future<Category?> readCategory({String? id, String? name}) async {
    final _category = await _prismaClient.category.findUnique(
      where: CategoryWhereUniqueInput(
        id: id,
        name: name,
      ),
    );
    return _category;
  }

  Future<Category> createCategory({
    required String name,
    required String icon,
  }) async {
    final _categoryCreate = CategoryCreateInput(
      name: name,
      icon: icon,
    );
    final category = await _prismaClient.category.create(
      data: PrismaUnion.$1(_categoryCreate),
    );
    return category;
  }

  Future<Category?> updateCategory(
    String id,
    String? name,
    String? icon,
  ) async {
    final _categoryUpdate = CategoryUpdateInput(
      name: name != null ? PrismaUnion.$1(name) : null,
      icon: icon != null ? PrismaUnion.$1(icon) : null,
    );
    final _category = await _prismaClient.category.update(
      data: PrismaUnion.$1(_categoryUpdate),
      where: CategoryWhereUniqueInput(id: id),
    );
    return _category;
  }

  Future<void> deleteCategory(String id) async {
    await _prismaClient.category.delete(
      where: CategoryWhereUniqueInput(
        id: id,
      ),
    );
  }

  Future<void> deleteCategories() async {
    await _prismaClient.category.deleteMany();
  }
}
