import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/repositories/category_repository.dart';
import 'package:stories_server/repositories/search_repository.dart';
import 'package:stories_server/repositories/story_categories_repository.dart';
import 'package:stories_server/repositories/story_popular_repository.dart';
import 'package:stories_server/repositories/story_repository.dart';
import 'package:stories_server/services/category_service.dart';
import 'package:stories_server/services/search_service.dart';
import 'package:stories_server/services/story_category_service.dart';
import 'package:stories_server/services/story_popular_service.dart';
import 'package:stories_server/services/story_service.dart';

var env = DotEnv(includePlatformEnvironment: true)..load();

final _databaseService = DatabaseService();
bool _initialized = false;

final _categoryRepository = CategoryRepository(_databaseService);
final _categoryService = CategoryService(_categoryRepository);

final _storyRepository = StoryRepository(_databaseService);
final _storeService = StoryService(_storyRepository);

final _storyCategoriesRepository = StoryCategoriesRepository(_databaseService);
final _storeCategoriesService = StoryCategoryService(_storyCategoriesRepository);

final _storyPopularRepository = StoryPopularRepository(_databaseService, _storyRepository);
final _storyPopularService = StoryPopularService(_storyPopularRepository);

final _searchRepository = SearchRepository(_databaseService, _storyRepository);
final _searchService = SearchService(_searchRepository);

Handler middleware(Handler handler) {
  if (!_initialized) {
    _initialized = true;
    _databaseService.init(); // Только один раз
  }
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
      ))
      .use(provider<StoryPopularService>(
        (_) => _storyPopularService,
      ))
      .use(provider<SearchService>(
        (_) => _searchService,
      ));
}

Middleware _apiKeyMiddleware() {
  return (Handler handler) {
    return (context) async {
      final path = context.request.uri.path;

      // Разрешаем доступ к /uploads без API ключа
      if (path.startsWith('/uploads/')) {
        return handler(context);
      }

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
          body: {
            'error': 'Internal server error',
            'mes': e.toString(),
          },
        );
      }
    };
  };
}
