import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../services/story_service.dart';

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
  final _storyService = context.read<StoryService>();
  final _stories = await _storyService.getStories();
  return Response.json(body: _stories.map((e) => e).toList());
}

Future<Response> _post(RequestContext context) async {
  final _storyService = context.read<StoryService>();

  final formData = await context.request.formData();

  final title = formData.fields['title'];
  final content = formData.fields['content'];
  final image = formData.files['image'];

  if (title == null || content == null || image == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": "Обязательные поля: 'title', 'content', 'image'",
      },
    );
  }
  final _story = await _storyService.createStory(
    title: title,
    content: content,
    image: image,
  );

  return Response.json(body: _story);
}

Future<Response> _delete(RequestContext context) async {
  final _storyService = context.read<StoryService>();
  await _storyService.deleteStories();
  
  return Response.json(
    statusCode: HttpStatus.noContent,
    body: 'Сказки удалены',
  );
}


/*
Future<Response> _post(RequestContext context) async {
   final _storyAService = context.read<StoryService>();

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
*/