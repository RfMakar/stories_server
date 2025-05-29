import 'package:orm/orm.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';

import '../prisma/prisma_client/client.dart';
import '../prisma/prisma_client/prisma.dart';

class StoryPopularRepository {
  final PrismaClient _prismaClient;

  StoryPopularRepository(this._prismaClient);

  Future<StoryModel?> topToDay({
    required DateTime startOfDay,
    required DateTime endOfDay,
  }) async {
    final _story = await _prismaClient.story.findFirst(
      where: StoryWhereInput(
        reads: StoryReadListRelationFilter(
          some: StoryReadWhereInput(
            readAt: PrismaUnion.$1(
              DateTimeFilter(
                gt: PrismaUnion.$1(startOfDay),
                lt: PrismaUnion.$1(endOfDay),
              ),
            ),
          ),
        ),
      ),
      orderBy: PrismaUnion.$2(
        StoryOrderByWithRelationInput(
          reads: StoryReadOrderByRelationAggregateInput(
            $count: SortOrder.desc,
          ),
        ),
      ),
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

  Future<List<StoryModel>> topPeriod({
    required DateTime start,
    required DateTime end,
    required int take,
  }) async {
    final _stories = await _prismaClient.story.findMany(
      where: StoryWhereInput(
        reads: StoryReadListRelationFilter(
          some: StoryReadWhereInput(
            readAt: PrismaUnion.$1(
              DateTimeFilter(
                gt: PrismaUnion.$1(start),
                lt: PrismaUnion.$1(end),
              ),
            ),
          ),
        ),
      ),
      orderBy: PrismaUnion.$2(
        StoryOrderByWithRelationInput(
          reads: StoryReadOrderByRelationAggregateInput(
            $count: SortOrder.desc,
          ),
        ),
      ),
      take: take,
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

  Future<List<StoryModel>> newItems() async {
    final _stories = await _prismaClient.story.findMany(
      orderBy: PrismaUnion.$2(
        StoryOrderByWithRelationInput(
          createdAt: SortOrder.desc,
        ),
      ),
      take: 7,
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
}
