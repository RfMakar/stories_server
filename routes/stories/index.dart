import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../repositories/stories_repository.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.delete:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context) async {
  final _storiesRepository = context.read<StoriesRepository>();
  final _stories = await _storiesRepository.readStories();
  return Response.json(body: _stories.map((s) => s).toList());
}

Future<Response> _post(RequestContext context) async {
  final _storiesRepository = context.read<StoriesRepository>();
  final data = await context.request.json() as Map<String, dynamic>;
  final _story = await _storiesRepository.createStrory(
    text: data['text'] as String,
    title: data['title'] as String,
  );
  return Response.json(body: _story);
}
