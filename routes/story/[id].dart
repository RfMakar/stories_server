import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/models/story_model.dart';

import '../../services/story_service.dart';

FutureOr<Response> onRequest(RequestContext context, String id) async {
  try {
    final _storyService = context.read<StoryService>();
    final _story = await _storyService.getStory(id: id);

    switch (context.request.method) {
      case HttpMethod.get:
        return _get(context, _story);
      case HttpMethod.put:
        return _put(context, id);
      case HttpMethod.delete:
        return _delete(context, _story);
      case HttpMethod.head:
      case HttpMethod.options:
      case HttpMethod.patch:
      case HttpMethod.post:
        return Response(statusCode: HttpStatus.methodNotAllowed);
    }
  } catch (e) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {
        "error:": e.toString(),
      },
    );
  }
}

Future<Response> _get(RequestContext context, StoryModel story) async {
  return Response.json(body: story);
}

Future<Response> _put(RequestContext context, String id) async {
  try {
    final _storyService = context.read<StoryService>();

    final formData = await context.request.formData();
    final title = formData.fields['title'];
    final content = formData.fields['content'];
    final image = formData.files['image'];
    final _story = await _storyService.updateStory(
      id: id,
      title: title,
      content: content,
      image: image,
    );
    return Response.json(body: _story);
  } catch (e) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: {
        "error:": e.toString(),
      },
    );
  }
}

Future<Response> _delete(RequestContext context, StoryModel story) async {
  final _storyService = context.read<StoryService>();
  await _storyService.deleteStory(
    story: story,
  );
  return Response.json(
    statusCode: HttpStatus.noContent,
    body: 'Сказка удалена',
  );
}



// Future<Response> _get(RequestContext context, Story story) async {
//   return Response.json(
//     body: {
//       'id': story.id,
//       'title': story.title,
//       'content': story.content,
//       'image': story.image,
//       'createdAt': story.createdAt?.toIso8601String(),
//       'categories': story.categories
//           ?.map((storyCategory) => {
//                 'id': storyCategory.category?.id,
//                 'name': storyCategory.category?.name,
//                 'icon': storyCategory.category?.icon,
//               })
//           .toList(),
//     },
//   );
// }