import 'package:dart_frog/dart_frog.dart';

import '../../prisma/prisma_client/client.dart';
import '../../repositories/category_repository.dart';

import '../../repositories/story_repository.dart';

final _prismaClient = PrismaClient()..$connect();
final _storyRepository = StoryRepository(_prismaClient);
final _categoryRepository = CategoryRepository(_prismaClient);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<CategoryRepository>((_) => _categoryRepository))
      .use(provider<StoryRepository>((_) => _storyRepository));
}
