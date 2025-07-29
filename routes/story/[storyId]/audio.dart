import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/services/story_service.dart';

FutureOr<Response> onRequest(RequestContext context, String storyId) async {
  final _storyService = context.read<StoryService>();
  final _story = await _storyService.getStory(id: storyId);

  switch (context.request.method) {
    case HttpMethod.delete:
      return _delete(context, _story.id);
    case HttpMethod.get:
    case HttpMethod.put:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.post:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _delete(RequestContext context, String id) async {
  final _storyService = context.read<StoryService>();
  final _story = await _storyService.deleteAudioStory(id: id);

  return Response.json(
    statusCode: HttpStatus.ok,
    body: _story,
  );
}
