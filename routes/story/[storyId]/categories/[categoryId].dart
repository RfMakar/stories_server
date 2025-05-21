import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../../../services/category_service.dart';
import '../../../../services/story_category_service.dart';
import '../../../../services/story_service.dart';

Future<Response> onRequest(
  RequestContext context,
  String storyId,
  String categoryId,
) async {
  //Проверка наличии сказки
  final _storyService = context.read<StoryService>();
  await _storyService.getStory(id: storyId);

  //Проверка наличие категории
  final _categoryService = await context.read<CategoryService>();
  await _categoryService.getCategory(id: categoryId);

  switch (context.request.method) {
    case HttpMethod.post:
      return _post(
        context,
        storyId,
        categoryId,
      );
    case HttpMethod.delete:
      return _delete(
        context,
        storyId,
        categoryId,
      );
    case HttpMethod.get:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(
        statusCode: HttpStatus.methodNotAllowed,
      );
  }
}

Future<Response> _post(
  RequestContext context,
  String storyId,
  String categoryId,
) async {
  final _storyCategoriesService = context.read<StoryCategoryService>();

  await _storyCategoriesService.createCategoryToStory(
    storyId: storyId,
    categoryId: categoryId,
  );

  return Response(
    statusCode: HttpStatus.created,
  );
}

Future<Response> _delete(
  RequestContext context,
  String storyId,
  String categoryId,
) async {
  final _storyCategoriesService = context.read<StoryCategoryService>();

  await _storyCategoriesService.deleteCategoryToStory(
    storyId: storyId,
    categoryId: categoryId,
  );

  return Response.json(
    statusCode: HttpStatus.noContent,
  );
}
