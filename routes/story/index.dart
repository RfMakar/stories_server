import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';

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

  final query = context.request.uri.queryParameters;
  final categoryId = query['categoryId'];

  final _stories = await _storyService.getStories(
    categoryId: categoryId,
  );
  return Response.json(body: _stories.map((e) => e).toList());
}

Future<Response> _post(RequestContext context) async {
  final _storyService = context.read<StoryService>();

  final formData = await context.request.formData();

  final title = formData.fields['title'];
  final content = formData.fields['content'];
  final image = formData.files['image'];

  if (title == null ||
      title.trim().isEmpty ||
      content == null ||
      content.trim().isEmpty ||
      image == null) {
    throw ValidationException("Обязательные поля: 'title', 'content', 'image'");
  }
  final _story = await _storyService.createStory(
    title: title,
    content: content,
    image: image,
  );

  return Response.json(
    statusCode: HttpStatus.created,
    body: _story,
  );
}

Future<Response> _delete(RequestContext context) async {
  final _storyService = context.read<StoryService>();
  await _storyService.deleteStories();

  return Response.json(
    statusCode: HttpStatus.noContent,
  );
}
