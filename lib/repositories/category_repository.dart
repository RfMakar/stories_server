import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:uuid/uuid.dart';

class CategoryRepository {
  final DatabaseService _databaseService;

  CategoryRepository(this._databaseService);

  Future<List<CategoryModel>> getAll() async {
    try {
      final result = await _databaseService.db.query('categories');
      return result.map((row) => CategoryModel.fromJson(row)).toList();
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении категорий из базы данных: ${e.toString()}',
      );
    }
  }

  Future<CategoryModel> getById({required String id}) async {
    try {
      final result = await _databaseService.db.query(
        'categories',
        where: 'id = ?',
        whereArgs: [id],
        limit: 1,
      );

      if (result.isEmpty) {
        throw NotFoundException('Категория не найдена');
      }

      return CategoryModel.fromJson(result.first);
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении категории из базы данных: ${e.toString()}',
      );
    }
  }

  Future<CategoryModel> create({
    required String name,
    required String icon,
  }) async {
    final uuid = Uuid();
    final id = uuid.v4();

    final values = {
      'id': id,
      'name': name,
      'name_lower': name.toLowerCase(),
      'icon': icon,
    };

    try {
      await _databaseService.db.insert(
        'categories',
        values,
        conflictAlgorithm: ConflictAlgorithm.abort,
      );

      final result = await getById(id: id);

      return CategoryModel.fromJson(result.toJson());
    } on DatabaseException catch (e) {
      if (e.isUniqueConstraintError()) {
        throw ConflictException('Категория с таким именем уже существует');
      }

      throw DBaseException(
        'Ошибка при создании категории: ${e.toString()}',
      );
    }
  }

  Future<CategoryModel> update({
    required String id,
    String? name,
    String? icon,
  }) async {
    final values = <String, Object?>{};

    if (name != null) {
      values['name'] = name;
      values['name_lower'] = name.toLowerCase();
    }
    if (icon != null) {
      values['icon'] = icon;
    }

    try {
      final count = await _databaseService.db.update(
        'categories',
        values,
        where: 'id = ?',
        whereArgs: [id],
      );

      if (count == 0) {
        throw NotFoundException('Категория с id $id не найдена');
      }
      final result = await getById(id: id);

      return CategoryModel.fromJson(result.toJson());
    } on DatabaseException catch (e) {
      if (e.isUniqueConstraintError()) {
        throw ConflictException(
          'Категория с таким именем уже существует',
        );
      }

      throw DBaseException(
        'Ошибка при обновлении категории: ${e.toString()}',
      );
    }
  }

  Future<void> deleteById({required String id}) async {
    try {
      final count = await _databaseService.db.delete(
        'categories',
        where: 'id = ?',
        whereArgs: [id],
      );

      if (count == 0) {
        throw NotFoundException('Категория с id $id не найдена для удаления');
      }
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при удалении категории: ${e.toString()}',
      );
    }
  }

  Future<void> deleteAll() async {
    try {
      await _databaseService.db.delete('categories');
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при удалении всех категорий: ${e.toString()}',
      );
    }
  }
}
