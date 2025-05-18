import 'package:orm/orm.dart';

import '../prisma/generated_dart_client/client.dart';
import '../prisma/generated_dart_client/model.dart';
import '../prisma/generated_dart_client/prisma.dart';

class StoryRepository {
  final PrismaClient _prismaClient;

  StoryRepository(this._prismaClient);

  Future<List<Story>> readStories() async {
    final stories = await _prismaClient.story.findMany(
      include: StoryInclude(
        categories: PrismaUnion.$2(
          StoryCategoriesArgs(
            include: StoryCategoryInclude(
              category: PrismaUnion.$1(
                true,
              ),
            ),
          ),
        ),
      ),
    );
    return stories.toList();
  }

  Future<Story?> readStory({required String id}) async {
    final story = await _prismaClient.story.findUnique(
      where: StoryWhereUniqueInput(id: id),
    );
    return story;
  }

  Future<Story> createStory({
    required String title,
    required String content,
    required String image,
    required List<String> categoryIds,
  }) async {
    final _story = await _prismaClient.story.create(
      data: PrismaUnion.$1(
        StoryCreateInput(
          title: title,
          content: content,
          image: image,
          categories: StoryCategoryCreateNestedManyWithoutStoryInput(
            createMany: StoryCategoryCreateManyStoryInputEnvelope(
              data: PrismaUnion.$2(categoryIds
                  .map(
                    (e) => StoryCategoryCreateManyStoryInput(
                      categoryId: e,
                    ),
                  )
                  .toList()),
            ),
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
    return _story;
  }

  // Future<Story?> updateStory(int id, String? text, String? title) async {
  //   final story = await _prismaClient.story.update(
  //     data: PrismaUnion.$2(
  //       StoryUncheckedUpdateInput(
  //         text: text != null ? PrismaUnion.$1(text) : null,
  //         title: title != null ? PrismaUnion.$1(title) : null,
  //       ),
  //     ),
  //     where: StoryWhereUniqueInput(id: id),
  //   );
  //   return story;
  // }

  Future<void> deleteStory(String id) async {
    await _prismaClient.story.delete(
      where: StoryWhereUniqueInput(
        id: id,
      ),
    );
  }

  Future<void> deleteStories() async {
    await _prismaClient.story.deleteMany();
  }
}


/*
import 'package:orm/orm.dart';

import '../prisma/generated_dart_client/client.dart';
import '../prisma/generated_dart_client/model.dart';
import '../prisma/generated_dart_client/prisma.dart';

class StoriesRepository {
  final PrismaClient _prismaClient;

  StoriesRepository(this._prismaClient);

  Future<List<Story>> readStories() async {
    final stories = await _prismaClient.story.findMany(
      include: StoryInclude(
        image: PrismaUnion.$1(true),
      ),
      
    );
    return stories.toList();
  }

  Future<Story?> readStory({required int id}) async {
    final story = await _prismaClient.story.findUnique(
      where: StoryWhereUniqueInput(id: id),
      include: StoryInclude(
        image: PrismaUnion.$1(true),
      ),
    );
    return story;
  }

  Future<Story> createStrory({
    required String title,
    required String text,
    required String url,
  }) async {
    final story = await _prismaClient.story.create(
      data: PrismaUnion.$1(
        StoryCreateInput(
          text: text,
          title: title,
          image: ImageCreateNestedOneWithoutStoryInput(
            create: PrismaUnion.$1(
              ImageCreateWithoutStoryInput(url: url),
            ),
          ),
        ),
      ),
      include: StoryInclude(
        image: PrismaUnion.$1(true),
      ),
    );

    return story;
  }

  Future<Story?> updateStory(int id, String? text, String? title) async {
    final story = await _prismaClient.story.update(
      data: PrismaUnion.$2(
        StoryUncheckedUpdateInput(
          text: text != null ? PrismaUnion.$1(text) : null,
          title: title != null ? PrismaUnion.$1(title) : null,
        ),
      ),
      where: StoryWhereUniqueInput(id: id),
    );
    return story;
  }

  Future<Story?> deleteStory(int id) async {
    final story = await _prismaClient.story.delete(
        where: StoryWhereUniqueInput(
      id: id,
    ));
    return story;
  }
}

*/