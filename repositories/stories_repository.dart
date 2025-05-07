import 'package:orm/orm.dart';

import '../prisma/generated_dart_client/client.dart';
import '../prisma/generated_dart_client/model.dart';
import '../prisma/generated_dart_client/prisma.dart';

class StoriesRepository {
  final PrismaClient _prismaClient;

  StoriesRepository(this._prismaClient);

  Future<List<Stories>> readStories() async {
    final stories = await _prismaClient.stories.findMany();
    return stories.toList();
  }

  Future<Stories?> readStory({required int id}) async {
    final stories = await _prismaClient.stories.findUnique(
      where: StoriesWhereUniqueInput(id: id),
    );
    return stories;
  }

  Future<Stories> createStrory({
    required String title,
    required String text,
  }) async {
    final story = await _prismaClient.stories.create(
      data: PrismaUnion.$1(
        StoriesCreateInput(
          text: text,
          title: title,
        ),
      ),
    );

    return story;
  }

  Future<Stories?> updateStory(int id, String? text, String? title) async {
    final story = await _prismaClient.stories.update(
      data: PrismaUnion.$2(
        StoriesUncheckedUpdateInput(
          text: text != null ? PrismaUnion.$1(text) : null,
          title: title != null ? PrismaUnion.$1(title) : null,
        ),
      ),
      where: StoriesWhereUniqueInput(id: id),
    );
    return story;
  }

  Future<Stories?> deleteStory(int id) async {
    final story = await _prismaClient.stories.delete(
        where: StoriesWhereUniqueInput(
      id: id,
    ));
    return story;
  }
}
