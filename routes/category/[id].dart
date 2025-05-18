import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../prisma/generated_dart_client/model.dart';
import '../../repositories/category_repository.dart';
import '../../service/file_service.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  final _categoryRepository = await context.read<CategoryRepository>();
  final _category = await _categoryRepository.readCategory(id: id);

  if (_category == null) {
    return Response(
      statusCode: HttpStatus.notFound,
      body: 'Категории не существует',
    );
  }
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context, _category);
    case HttpMethod.put:
      return _put(context, _category);
    case HttpMethod.delete:
      return _delete(context, _category);
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.post:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context, Category category) async {
  return Response.json(
    body: {
      "id": category.id,
      "name": category.name,
      "icon": category.icon,
    },
  );
}

Future<Response> _put(
  RequestContext context,
  Category category,
) async {
  final _categoryRepository = await context.read<CategoryRepository>();

  final formData = await context.request.formData();
  final name = formData.fields['name'];
  final icon = formData.files['icon'];

  //Проверка имени на уникальность
  final _categoryUnique = await _categoryRepository.readCategory(name: name);

  if (_categoryUnique != null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: {
        "error:": " Такая категория существует",
      },
    );
  }

  //Удаляет старую иконку с сервера
  if (icon != null) {
    final _readCategory =
        await _categoryRepository.readCategory(id: category.id!);
    await FileService.delete(_readCategory?.icon);
  }

  final updateCategory = await _categoryRepository.updateCategory(
    category.id!,
    name,
    icon == null ? null : await FileService.saveIcon(icon),
  );

  return Response.json(
    body: {
      "id": updateCategory?.id,
      "name": updateCategory?.name,
      "icon": updateCategory?.icon,
    },
  );
}

Future<Response> _delete(RequestContext context, Category category) async {
  final _categoryRepository = await context.read<CategoryRepository>();
  await _categoryRepository.deleteCategory(category.id!);
  await FileService.delete(category.icon);
  return Response.json(
    statusCode: HttpStatus.noContent,
    body: 'Категория удалена',
  );
}
