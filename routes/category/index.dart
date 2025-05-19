import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../services/category_service.dart';

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
      return Response(
        statusCode: HttpStatus.methodNotAllowed,
      );
  }
}

Future<Response> _get(RequestContext context) async {
  final _categoryRepository = await context.read<CategoryService>();
  final _categories = await _categoryRepository.getCategories();
  return Response.json(body: _categories.map((e) => e).toList());
}

Future<Response> _post(RequestContext context) async {
  try {
    final _categoryService = await context.read<CategoryService>();

    final formData = await context.request.formData();
    final name = formData.fields['name'];
    final icon = formData.files['icon'];

    if (name == null || icon == null) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: {
          "error:": "Обязательные поля: 'name', 'icon'",
        },
      );
    }

    final _category = await _categoryService.createCategory(
      name: name,
      icon: icon,
    );

    return Response.json(body: _category);
  } catch (e) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": e.toString(),
      },
    );
  }
}

Future<Response> _delete(RequestContext context) async {
  final _categoryService = await context.read<CategoryService>();
  await _categoryService.deleteCategories();

  return Response.json(
    statusCode: HttpStatus.noContent,
    body: 'Категории удалены',
  );
}
