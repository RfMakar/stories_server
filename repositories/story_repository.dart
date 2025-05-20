import 'package:orm/orm.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';

import '../prisma/prisma_client/client.dart';
import '../prisma/prisma_client/prisma.dart';

class StoryRepository {
  final PrismaClient _prismaClient;

  StoryRepository(this._prismaClient);

  Future<List<StoryModel>> findMany() async {
    final _stories = await _prismaClient.story.findMany(
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
        content: story.content!,
        image: story.image!,
        createdAt: story.createdAt!,
        categories: categories,
      );
    }).toList();
  }

  Future<StoryModel?> findUnique({required String id}) async {
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
      content: _story.content!,
      image: _story.image!,
      createdAt: _story.createdAt!,
      categories: _categories,
    );
  }

  Future<StoryModel> create({
    required String title,
    required String content,
    required String image,
  }) async {
    final _story = await _prismaClient.story.create(
      data: PrismaUnion.$1(
        StoryCreateInput(
          title: title,
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
      content: _story.content!,
      image: _story.image!,
      createdAt: _story.createdAt!,
      categories: _categories,
    );
  }

  Future<StoryModel?> update({
    required String id,
    String? title,
    String? content,
    String? image,
  }) async {
    final _storyUpdate = StoryUpdateInput(
      title: title != null ? PrismaUnion.$1(title) : null,
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
      content: _story.content!,
      image: _story.image!,
      createdAt: _story.createdAt!,
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
}
