import 'package:dart_frog/dart_frog.dart';

import '../prisma/prisma_client/client.dart';
import '../repositories/category_repository.dart';
import '../repositories/story_repository.dart';
import '../services/category_service.dart';
import '../services/story_service.dart';

final _prismaClient = PrismaClient()..$connect();

final _categoryRepository = CategoryRepository(_prismaClient);
final _categoryService = CategoryService(_categoryRepository);

final _storyRepository = StoryRepository(_prismaClient);
final _storeService = StoryService(_storyRepository);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<CategoryService>(
        (_) => _categoryService,
      ))
      .use(provider<StoryService>(
        (_) => _storeService,
      ));
}
