import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../repositories/category_repository.dart';
import '../../repositories/story_repository.dart';
import '../../services/file_service.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
      return _delete(context);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context) async {
  final _storyRepository = context.read<StoryRepository>();
  final _stories = await _storyRepository.readStories();
  return Response.json(
    body: _stories
        .map(
          (story) => {
            'id': story.id,
            'title': story.title,
            'content': story.content,
            'image': story.image,
            'createdAt': story.createdAt?.toIso8601String(),
            'categories': story.categories
                ?.map((storyCategory) => {
                      'id': storyCategory.category?.id,
                      'name': storyCategory.category?.name,
                      'icon': storyCategory.category?.icon,
                    })
                .toList(),
          },
        )
        .toList(),
  );
}

Future<Response> _post(RequestContext context) async {
  final _storyRepository = context.read<StoryRepository>();

  final formData = await context.request.formData();

  final title = formData.fields['title'];
  final content = formData.fields['content'];
  final image = formData.files['image'];
  final categoryIds = formData.fields['categoryIds'];

  if (title == null || title.trim().isEmpty) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": " Введите поле title",
      },
    );
  }
  if (content == null || content.trim().isEmpty) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": " Введите поле content",
      },
    );
  }
  if (image == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": " Введите поле image",
      },
    );
  }

  if (categoryIds == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": " Введите категории",
      },
    );
  }

  //CategoryId to List<String>
  final categoryJson = jsonDecode(categoryIds) as List<dynamic>;
  final categoriesIds = categoryJson.map((e) => e.toString()).toList();

  //проверка на наличие категорий
  final _categoryRepository = await context.read<CategoryRepository>();
  for (var categoryId in categoriesIds) {
    final category = await _categoryRepository.findUnique(id: categoryId);
    if (category == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          "error:": "Категории не существует",
        },
      );
    }
  }

  final story = await _storyRepository.createStory(
    title: title,
    content: content,
    image: await FileService.saveImage(image),
    categoryIds: categoriesIds,
  );

  return Response.json(
    body: {
      'id': story.id,
      'title': story.title,
      'content': story.content,
      'image': story.image,
      'createdAt': story.createdAt?.toIso8601String(),
      'categories': story.categories
          ?.map(
            (storyCategory) => {
              'id': storyCategory.category?.id,
              'name': storyCategory.category?.name,
              'icon': storyCategory.category?.icon, 
            },
          )
          .toList(),
    },
  );
}

Future<Response> _delete(RequestContext context) async {
  final _storiesRepository = context.read<StoryRepository>();
  await _storiesRepository.deleteStories();
  return Response.json(
    statusCode: HttpStatus.noContent,
    body: 'Все истории удалены',
  );
}
