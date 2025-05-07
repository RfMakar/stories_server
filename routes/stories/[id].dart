import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../prisma/generated_dart_client/model.dart';
import '../../repositories/stories_repository.dart';

FutureOr<Response> onRequest(RequestContext context, String id) async {
  final _storiesRepository = context.read<StoriesRepository>();
  final storyId = int.parse(id);
  final story = await _storiesRepository.readStory(id: storyId);

  if (story == null) {
    return Response(statusCode: HttpStatus.notFound, body: 'Not found');
  }

  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context, story);
    case HttpMethod.put:
      return _put(context, storyId);
    case HttpMethod.delete:
      return _delete(context, storyId);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.post:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context, Stories story) async {
  return Response.json(body: story);
}

Future<Response> _put(RequestContext context, int id) async {
  final _storiesRepository = context.read<StoriesRepository>();
  final data = await context.request.json() as Map<String, dynamic>;
  final text = data['text'] as String?;
  final title = data['title'] as String?;

  final story = await _storiesRepository.updateStory(id, text, title);
  return Response.json(body: story);
}

Future<Response> _delete(RequestContext context, int id) async {
  final _storiesRepository = context.read<StoriesRepository>();
  final story = await _storiesRepository.deleteStory(id);
  return Response.json(body: story, statusCode: HttpStatus.noContent);
}
