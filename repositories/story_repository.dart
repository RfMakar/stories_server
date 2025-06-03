import 'package:orm/orm.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';

import '../prisma/prisma_client/client.dart';
import '../prisma/prisma_client/prisma.dart';

class StoryRepository {
  final PrismaClient _prismaClient;

  StoryRepository(this._prismaClient);

  Future<List<StoryModel>> findMany({String? categoryId}) async {
    final _stories = await _prismaClient.story.findMany(
      where: StoryWhereInput(
          categories: categoryId != null
              ? StoryCategoryListRelationFilter(
                  some: StoryCategoryWhereInput(
                    categoryId: PrismaUnion.$2(categoryId),
                  ),
                )
              : null),
      include: StoryInclude(
        categories: PrismaUnion.$2(
          StoryCategoriesArgs(
            include: StoryCategoryInclude(
              category: PrismaUnion.$1(true),
            ),
          ),
        ),
      ),
    );

    return _stories.map((story) {
      final categories = story.categories?.map(
            (storyCategory) {
              final category = storyCategory.category!;
              return CategoryModel(
                id: category.id!,
                name: category.name!,
                icon: category.icon!,
              );
            },
          ).toList() ??
          [];

      return StoryModel(
        id: story.id!,
        title: story.title!,
        description: story.description!,
        content: story.content!,
        image: story.image!,
        createdAt: story.createdAt!,
        readCount: story.readCount!,
        categories: categories,
      );
    }).toList();
  }

  Future<StoryModel?> findUnique({
    required String id,
    required bool isRecord,
  }) async {
    //Запись о чтение сказки
    if (isRecord) {
      await _readRecord(id: id);
    }

    //Возращает сказку
    final _story = await _prismaClient.story.findUnique(
      where: StoryWhereUniqueInput(id: id),
      include: StoryInclude(
        categories: PrismaUnion.$2(
          StoryCategoriesArgs(
            include: StoryCategoryInclude(
              category: PrismaUnion.$1(true),
            ),
          ),
        ),
      ),
    );
    if (_story == null) {
      return null;
    }

    final _categories = _story.categories?.map(
          (storyCategory) {
            final category = storyCategory.category!;
            return CategoryModel(
              id: category.id!,
              name: category.name!,
              icon: category.icon!,
            );
          },
        ).toList() ??
        [];

    return StoryModel(
      id: _story.id!,
      title: _story.title!,
      description: _story.description!,
      content: _story.content!,
      image: _story.image!,
      createdAt: _story.createdAt!,
      readCount: _story.readCount!,
      categories: _categories,
    );
  }

  Future<StoryModel> create({
    required String title,
    required String description,
    required String content,
    required String image,
  }) async {
    final _story = await _prismaClient.story.create(
      data: PrismaUnion.$1(
        StoryCreateInput(
          title: title,
          description: description,
          content: content,
          image: image,
        ),
      ),
    );
    final _categories = _story.categories?.map(
          (storyCategory) {
            final category = storyCategory.category!;
            return CategoryModel(
              id: category.id!,
              name: category.name!,
              icon: category.icon!,
            );
          },
        ).toList() ??
        [];

    return StoryModel(
      id: _story.id!,
      title: _story.title!,
      description: _story.description!,
      content: _story.content!,
      image: _story.image!,
      createdAt: _story.createdAt!,
      readCount: _story.readCount!,
      categories: _categories,
    );
  }

  Future<StoryModel?> update({
    required String id,
    String? title,
    String? description,
    String? content,
    String? image,
  }) async {
    final _storyUpdate = StoryUpdateInput(
      title: title != null ? PrismaUnion.$1(title) : null,
      description: description != null ? PrismaUnion.$1(description) : null,
      content: content != null ? PrismaUnion.$1(content) : null,
      image: image != null ? PrismaUnion.$1(image) : null,
    );

    final _story = await _prismaClient.story.update(
      data: PrismaUnion.$1(_storyUpdate),
      where: StoryWhereUniqueInput(id: id),
    );
    if (_story == null) {
      return null;
    }
    final _categories = _story.categories?.map(
          (storyCategory) {
            final category = storyCategory.category!;
            return CategoryModel(
              id: category.id!,
              name: category.name!,
              icon: category.icon!,
            );
          },
        ).toList() ??
        [];

    return StoryModel(
      id: _story.id!,
      title: _story.title!,
      description: _story.description!,
      content: _story.content!,
      image: _story.image!,
      createdAt: _story.createdAt!,
      readCount: _story.readCount!,
      categories: _categories,
    );
  }

  Future<void> delete(String id) async {
    await _prismaClient.story.delete(
      where: StoryWhereUniqueInput(
        id: id,
      ),
    );
  }

  Future<void> deleteMany() async {
    await _prismaClient.story.deleteMany();
  }

  Future<void> _readRecord({required String id}) async {
    //Увеличивает счетчик прочтения сказки на 1
    await _prismaClient.story.update(
      data: PrismaUnion.$1(StoryUpdateInput(
        readCount: PrismaUnion.$2(
          IntFieldUpdateOperationsInput(
            increment: 1,
          ),
        ),
      )),
      where: StoryWhereUniqueInput(id: id),
    );
    //Создает запись о чтение сказки
    await _prismaClient.storyRead.create(
      data: PrismaUnion.$1(
        StoryReadCreateInput(
          story: StoryCreateNestedOneWithoutReadsInput(
            connect: StoryWhereUniqueInput(
              id: id,
            ),
          ),
        ),
      ),
    );
  }
}
