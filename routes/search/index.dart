import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/services/search_service.dart';

FutureOr<Response> onRequest(RequestContext context) async {
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
  final _searchService = context.read<SearchService>();

  final queryParams = context.request.uri.queryParameters;
  final query = queryParams['query'];
  final type = queryParams['type'];

  if (query == null || query.trim().isEmpty) {
    throw ValidationException("Укажите строку поиска через ?query=...");
  }

  if (type == null || type.trim().isEmpty) {
    throw ValidationException("Укажите тип поиска через ?type=...");
  }
  if (type == 'story') {
    final stories = await _searchService.searchStories(query);
    return Response.json(body: stories.map((e) => e).toList());
  } else if (type == 'category') {
    final categories = await _searchService.searchCategories(query);
    return Response.json(body: categories.map((e) => e).toList());
  } else {
    throw ValidationException("Укажите верный type: 'story' or 'category'");
  }
}
