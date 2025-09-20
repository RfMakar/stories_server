import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/services/category_type_service.dart';

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
  final _categoryTypeService = await context.read<CategoryTypeService>();
  final _categoriesTypes = await _categoryTypeService.getCategoriesTypes();

  return Response.json(
    body: _categoriesTypes.map((e) => e).toList(),
  );
}

Future<Response> _post(RequestContext context) async {
  final _categoryTypeService = await context.read<CategoryTypeService>();

  final formData = await context.request.formData();
  final name = formData.fields['name'];

  final isValidateData = name == null || name.trim().isEmpty;

  if (isValidateData) {
    throw ValidationException("Обязательные поля: 'name' ");
  }

  final _categoryType = await _categoryTypeService.createCategoryType(
    name: name,
  );

  return Response.json(
    statusCode: HttpStatus.created,
    body: _categoryType,
  );
}

Future<Response> _delete(RequestContext context) async {
  final _categoryTypeService = await context.read<CategoryTypeService>();
  await _categoryTypeService.deleteCategoriesTypes();

  return Response.json(
    statusCode: HttpStatus.noContent,
  );
}
