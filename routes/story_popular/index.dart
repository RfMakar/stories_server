import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/services/story_popular_service.dart';


Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context) async {
  final _storyPopularService = context.read<StoryPopularService>();

  final query = context.request.uri.queryParameters;
  final top = query['filter'];

  if (top == null ) {
    throw ValidationException("Нету queryParameters: filters");
  }

  if (top == 'day') {
    final _story = await _storyPopularService.getStoryTopToDay();
    return Response.json(body: _story);
  } else if (top == 'week') {
    final _stories = await _storyPopularService.getStoriesTopToWeek();
    return Response.json(body: _stories.map((e) => e).toList());
  } else if (top == 'month') {
    final _stories = await _storyPopularService.getStoriesTopToMonth();
    return Response.json(body: _stories.map((e) => e).toList());
  } else if (top == 'new') {
    final _stories = await _storyPopularService.getStoriesNew();
    return Response.json(body: _stories.map((e) => e).toList());
  }
  return Response();
}
