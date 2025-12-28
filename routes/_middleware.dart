import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/repositories/category_repository.dart';
import 'package:stories_server/repositories/category_type_repository.dart';
import 'package:stories_server/repositories/search_repository.dart';
import 'package:stories_server/repositories/stats_repository.dart';
import 'package:stories_server/repositories/story_categories_repository.dart';
import 'package:stories_server/repositories/story_popular_repository.dart';
import 'package:stories_server/repositories/story_repository.dart';
import 'package:stories_server/services/category_service.dart';
import 'package:stories_server/services/category_type_service.dart';
import 'package:stories_server/services/search_service.dart';
import 'package:stories_server/services/stats_service.dart';
import 'package:stories_server/services/story_category_service.dart';
import 'package:stories_server/services/story_popular_service.dart';
import 'package:stories_server/services/story_service.dart';

/// Загружаем переменные окружения (.env + системные)
var env = DotEnv(includePlatformEnvironment: true)..load();

/// Сервис работы с базой данных (один на всё приложение)
final _databaseService = DatabaseService();

/// Флаг для инициализации БД только один раз
bool _initialized = false;

/// Репозитории и сервисы
final _categoryRepository = CategoryRepository(_databaseService);
final _categoryService = CategoryService(_categoryRepository);

final _categoryTypeRepository = CategoryTypeRepository(_databaseService);
final _categoryTypeService = CategoryTypeService(_categoryTypeRepository);

final _storyRepository = StoryRepository(_databaseService);
final _storeService = StoryService(_storyRepository);

final _storyCategoriesRepository = StoryCategoriesRepository(_databaseService);
final _storeCategoriesService =
    StoryCategoryService(_storyCategoriesRepository);

final _storyPopularRepository =
    StoryPopularRepository(_databaseService, _storyRepository);
final _storyPopularService = StoryPopularService(_storyPopularRepository);

final _searchRepository = SearchRepository(_databaseService, _storyRepository);
final _searchService = SearchService(_searchRepository);

final _statsRepository = StatsRepository(_databaseService);
final _statsService = StatsService(_statsRepository);

/// Основной middleware приложения
Handler middleware(Handler handler) {
  // Инициализируем базу данных только один раз
  if (!_initialized) {
    _initialized = true;
    _databaseService.init();
  }
  return handler
      // Логирование всех запросов
      .use(requestLogger())
      // Проверка API ключа
      .use(_apiKeyMiddleware())
      // Глобальная обработка ошибок
      .use(_errorHandlingMiddleware())
      // Dependency Injection сервисов в context
      .use(provider<CategoryService>(
        (_) => _categoryService,
      ))
      .use(provider<CategoryTypeService>(
        (_) => _categoryTypeService,
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
      ))
      .use(provider<StatsService>(
        (_) => _statsService,
      ));
}

/// Middleware для проверки API ключа
Middleware _apiKeyMiddleware() {
  return (Handler handler) {
    return (context) async {
      final path = context.request.uri.path;

      // Разрешаем доступ к загруженным файлам без API ключа
      if (path.startsWith('/uploads/')) {
        return handler(context);
      }
      // Получаем API ключ из заголовка
      final apiKey = context.request.headers['x-api-key'];
      // Проверяем валидность ключа
      if (apiKey == null || apiKey != env['API_KEY']) {
        throw ApiKeyException('Не верный API KEY');
      }

      return handler(context);
    };
  };
}

/// Middleware для глобальной обработки ошибок
Middleware _errorHandlingMiddleware() {
  return (handler) {
    return (context) async {
      try {
        // Проброс запроса дальше по цепочке
        return await handler(context);
      } on AppException catch (e) {
        // Обработка кастомных ошибок приложения
        return Response.json(
          statusCode: e.statusCode,
          body: {
            'error': e.message,
          },
        );
      } catch (e) {
        // Обработка всех остальных ошибок
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
