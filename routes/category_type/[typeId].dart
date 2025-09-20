import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/models/category_type_model.dart';
import 'package:stories_server/services/category_type_service.dart';

Future<Response> onRequest(RequestContext context, String typeId) async {
  //Проверка существующего типа категории
  final _categoryTypeService = await context.read<CategoryTypeService>();
  final _categoryType = await _categoryTypeService.getCategoryType(id: typeId);

  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context, _categoryType);
    case HttpMethod.put:
      return _put(context, typeId);
    case HttpMethod.delete:
      return _delete(context, typeId);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.post:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(
    RequestContext context, CategoryTypeModel categoryType) async {
  return Response.json(body: categoryType.toJson());
}

Future<Response> _put(RequestContext context, String typeId) async {
  final _categoryTypeService = await context.read<CategoryTypeService>();

  final formData = await context.request.formData();
  final name = formData.fields['name'];

  final isValidateData = name == null || name.trim().isEmpty;

  if (isValidateData) {
    throw ValidationException("Нужно указать 'name' для обновления");
  }

  final _category = await _categoryTypeService.updateCategoryType(
    id: typeId,
    name: name,
  );

  return Response.json(
    statusCode: HttpStatus.ok,
    body: _category,
  );
}

Future<Response> _delete(RequestContext context, String typeId) async {
  final _categoryTypeService = await context.read<CategoryTypeService>();
  await _categoryTypeService.deleteCategoryType(
    id: typeId,
  );
  return Response.json(
    statusCode: HttpStatus.noContent,
  );
}
