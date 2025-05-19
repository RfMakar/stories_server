import 'package:orm/orm.dart';
import 'package:stories_server/models/category_model.dart';
import '../prisma/prisma_client/client.dart';
import '../prisma/prisma_client/model.dart';
import '../prisma/prisma_client/prisma.dart';

class CategoryRepository {
  final PrismaClient _prismaClient;

  CategoryRepository(this._prismaClient);

  Future<List<CategoryModel>> findMany() async {
    final _categories = await _prismaClient.category.findMany();
    return _categories
        .map(
          (e) => CategoryModel.fromJson(e.toJson()),
        )
        .toList();
  }

  Future<CategoryModel?> findUnique({String? id, String? name}) async {
    final _category = await _prismaClient.category.findUnique(
      where: CategoryWhereUniqueInput(
        id: id,
        name: name,
      ),
    );
    return _category != null
        ? CategoryModel.fromJson(_category.toJson())
        : null;
  }

  Future<CategoryModel> create({
    required String name,
    required String icon,
  }) async {
    final _categoryCreate = CategoryCreateInput(
      name: name,
      icon: icon,
    );
    final _category = await _prismaClient.category.create(
      data: PrismaUnion.$1(_categoryCreate),
    );
    return CategoryModel.fromJson(_category.toJson());
  }

  Future<Category?> update({
    required String id,
    String? name,
    String? icon,
  }) async {
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

  Future<void> delete({required String id}) async {
    await _prismaClient.category.delete(
      where: CategoryWhereUniqueInput(
        id: id,
      ),
    );
  }

  Future<void> deleteMany() async {
    await _prismaClient.category.deleteMany();
  }
}
