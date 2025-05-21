import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/models/category_model.dart';

import '../../services/category_service.dart';

Future<Response> onRequest(RequestContext context, String categoryId) async {
  //Проверка существующей категории
  final _categoryService = await context.read<CategoryService>();
  final _category = await _categoryService.getCategory(id: categoryId);

  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context, _category);
    case HttpMethod.put:
      return _put(context, categoryId);
    case HttpMethod.delete:
      return _delete(context, _category);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.post:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context, CategoryModel category) async {
  return Response.json(body: category.toJson());
}

Future<Response> _put(RequestContext context, String categoryId) async {
  final _categoryService = await context.read<CategoryService>();

  final formData = await context.request.formData();
  final name = formData.fields['name'];
  final icon = formData.files['icon'];

  final _category = await _categoryService.updateCategory(
    id: categoryId,
    name: name,
    icon: icon,
  );

  return Response.json(
    statusCode: HttpStatus.created,
    body: _category,
  );
}

Future<Response> _delete(RequestContext context, CategoryModel category) async {
  final _categoryService = await context.read<CategoryService>();
  await _categoryService.deleteCategory(
    category: category,
  );
  return Response.json(
    statusCode: HttpStatus.noContent,
  );
}
