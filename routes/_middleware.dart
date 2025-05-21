import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';

import '../prisma/prisma_client/client.dart';
import '../repositories/category_repository.dart';
import '../repositories/story_categories_repository.dart';
import '../repositories/story_repository.dart';
import '../services/category_service.dart';
import '../services/story_category_service.dart';
import '../services/story_service.dart';

var env = DotEnv(includePlatformEnvironment: true)..load();

final _prismaClient = PrismaClient(datasourceUrl: 'file:./prisma/dev.sqlite')
  ..$connect();

final _categoryRepository = CategoryRepository(_prismaClient);
final _categoryService = CategoryService(_categoryRepository);

final _storyRepository = StoryRepository(_prismaClient);
final _storeService = StoryService(_storyRepository);

final _storyCategoriesRepository = StoryCategoriesRepository(_prismaClient);
final _storeCategoriesService =
    StoryCategoryService(_storyCategoriesRepository);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(_apiKeyMiddleware())
      .use(_errorHandlingMiddleware())
      .use(provider<CategoryService>(
        (_) => _categoryService,
      ))
      .use(provider<StoryService>(
        (_) => _storeService,
      ))
      .use(provider<StoryCategoryService>(
        (_) => _storeCategoriesService,
      ));
}

Middleware _apiKeyMiddleware() {
  return (Handler handler) {
    return (context) async {
      final apiKey = context.request.headers['x-api-key'];

      if (apiKey == null || apiKey != env['API_KEY']) {
        throw ApiKeyException('Не верный API KEY');
      }

      return handler(context);
    };
  };
}

Middleware _errorHandlingMiddleware() {
  return (handler) {
    return (context) async {
      try {
        // Проброс запроса дальше по цепочке
        return await handler(context);
      } on AppException catch (e) {
        return Response.json(
          statusCode: e.statusCode,
          body: {
            'error': e.message,
          },
        );
      } catch (e) {
        return Response.json(
          statusCode: HttpStatus.internalServerError,
          body: {'error': 'Internal server error'},
        );
      }
    };
  };
}
