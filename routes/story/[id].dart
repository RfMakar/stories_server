import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../repositories/story_repository.dart';

FutureOr<Response> onRequest(RequestContext context, String id) async {
  final _storiesRepository = context.read<StoryRepository>();
  final story = await _storiesRepository.readStory(id: id);

  if (story == null) {
    return Response(statusCode: HttpStatus.notFound, body: 'Нет такой сказки');
  }

  switch (context.request.method) {
    case HttpMethod.get:
    // return _get(context, story);
    case HttpMethod.put:
    // return _put(context, storyId);
    case HttpMethod.delete:
      return _delete(context, id);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.post:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

// Future<Response> _get(RequestContext context, Story story) async {
//   return Response.json(body: story.toJson());
// }

// Future<Response> _put(RequestContext context, int id) async {
//   final _storiesRepository = context.read<StoriesRepository>();

//   final formData = await context.request.formData();

//   final title = formData.fields['title'];
//   final text = formData.fields['text'];
//   final image = formData.files['image'];

//   // final data = await context.request.json() as Map<String, dynamic>;
//   // final text = data['text'] as String?;
//   // final title = data['title'] as String?;

//   final story = await _storiesRepository.updateStory(id, text, title);
//   return Response.json(body: story);
// }

Future<Response> _delete(RequestContext context, String id) async {
  final _storiesRepository = context.read<StoryRepository>();
  await _storiesRepository.deleteStory(id);
  return Response.json(
    statusCode: HttpStatus.noContent,
    body: 'Сказка удалена',
  );
}
