import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../repositories/category_repository.dart';
import '../../service/file_service.dart';

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
  final _categoryRepository = await context.read<CategoryRepository>();
  final _categories = await _categoryRepository.readCategories();
  return Response.json(
    body: _categories
        .map(
          (category) => {
            "id": category.id,
            "name": category.name,
            "icon": category.icon,
          },
        )
        .toList(),
  );
}

Future<Response> _post(RequestContext context) async {
  final _categoryRepository = await context.read<CategoryRepository>();

  final formData = await context.request.formData();
  final name = formData.fields['name'];
  final icon = formData.files['icon'];

  if (name == null || name.trim().isEmpty) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": "Введите поле name",
      },
    );
  }
  if (icon == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": "Введите поле icon",
      },
    );
  }

  //Проверка уникальности категории
  final _categoryUnique = await _categoryRepository.readCategory(name: name);

  if (_categoryUnique != null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": " Такая категория существует",
      },
    );
  }

  final _category = await _categoryRepository.createCategory(
    name: name,
    icon: await FileService.saveIcon(icon),
  );

  return Response.json(
    body: {
      "id": _category.id,
      "name": _category.name,
      "icon": _category.icon,
    },
  );
}

Future<Response> _delete(RequestContext context) async {
  final _categoryRepository = await context.read<CategoryRepository>();
  await _categoryRepository.deleteCategories();

  return Response.json(
    statusCode: HttpStatus.noContent,
    body: 'Категории удалены',
  );
}
