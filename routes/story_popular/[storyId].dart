import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/services/story_popular_service.dart';

Future<Response> onRequest(RequestContext context, String storyId) async {
  switch (context.request.method) {
    case HttpMethod.put:
      return _put(context, storyId);
    case HttpMethod.get:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.post:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _put(RequestContext context, String storyId) async {
  final _storyPopularService = context.read<StoryPopularService>();

  await _storyPopularService.updateStoryReads(storyId: storyId);

  return Response.json(statusCode: HttpStatus.ok);
}
