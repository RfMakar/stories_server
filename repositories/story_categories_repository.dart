import 'package:orm/orm.dart';

import '../prisma/prisma_client/client.dart';
import '../prisma/prisma_client/prisma.dart';

class StoryCategoriesRepository {
  final PrismaClient _prismaClient;
  StoryCategoriesRepository(this._prismaClient);

  Future<void> create({
    required String storyId,
    required String categoryId,
  }) async {
    final _storyCategoryCreate = StoryCategoryCreateInput(
      story: StoryCreateNestedOneWithoutCategoriesInput(
        connect: StoryWhereUniqueInput(
          id: storyId,
        ),
      ),
      category: CategoryCreateNestedOneWithoutStoriesInput(
          connect: CategoryWhereUniqueInput(
        id: categoryId,
      )),
    );

    await _prismaClient.storyCategory.create(
      data: PrismaUnion.$1(_storyCategoryCreate),
    );
  }

  Future<void> delete({
    required String storyId,
    required String categoryId,
  }) async {
    await _prismaClient.storyCategory.delete(
      where: StoryCategoryWhereUniqueInput(
        storyIdCategoryId: StoryCategoryStoryIdCategoryIdCompoundUniqueInput(
          storyId: storyId,
          categoryId: categoryId,
        ),
      ),
    );
  }
}
