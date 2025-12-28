import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/services/stats_service.dart';

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
  final _statsService = context.read<StatsService>();
  final _stats = await _statsService.getReadsStats();

  return Response.json(body: _stats.toJson());
}
