import 'package:orm/orm.dart';
import 'package:stories_server/models/story_model.dart';

import '../prisma/prisma_client/client.dart';
// import '../prisma/prisma_client/model.dart';
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
              category: PrismaUnion.$1(
                true,
              ),
            ),
          ),
        ),
      ),
    );
    return _stories
        .map(
          (e) => StoryModel.fromJson(
            e.toJson(),
          ),
        )
        .toList();
  }

  Future<StoryModel?> findUnique({required String id}) async {
    final _story = await _prismaClient.story.findUnique(
      where: StoryWhereUniqueInput(id: id),
    );
    return _story != null ? StoryModel.fromJson(_story.toJson()) : null;
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
    return StoryModel.fromJson(_story.toJson());
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
    return StoryModel.fromJson(_story!.toJson());
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

  // Future<Story> create({
  //   required String title,
  //   required String content,
  //   required String image,
  //   required List<String> categoryIds,
  // }) async {
  //   final _story = await _prismaClient.story.create(
  //     data: PrismaUnion.$1(
  //       StoryCreateInput(
  //         title: title,
  //         content: content,
  //         image: image,
  //         categories: StoryCategoryCreateNestedManyWithoutStoryInput(
  //           createMany: StoryCategoryCreateManyStoryInputEnvelope(
  //             data: PrismaUnion.$2(categoryIds
  //                 .map(
  //                   (e) => StoryCategoryCreateManyStoryInput(
  //                     categoryId: e,
  //                   ),
  //                 )
  //                 .toList()),
  //           ),
  //         ),
  //       ),
  //     ),
  //     include: StoryInclude(
  //       categories: PrismaUnion.$2(
  //         StoryCategoriesArgs(
  //           include: StoryCategoryInclude(
  //             category: PrismaUnion.$1(true),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  //   return _story;
  // }

  // Future<Story?> update(int id, String? text, String? title) async {
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
}


// Future<Story?> findUnique({required String id}) async {
  //   final story = await _prismaClient.story.findUnique(
  //     where: StoryWhereUniqueInput(id: id),
  //     include: StoryInclude(
  //       categories: PrismaUnion.$2(
  //         StoryCategoriesArgs(
  //           include: StoryCategoryInclude(
  //             category: PrismaUnion.$1(
  //               true,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  //   return story;
  // }