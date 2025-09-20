import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/category_type_model.dart';
import 'package:uuid/uuid.dart';

class CategoryRepository {
  final DatabaseService _databaseService;

  CategoryRepository(this._databaseService);

  Future<List<CategoryModel>> getAll() async {
    try {
      final result = await _databaseService.db.rawQuery('''
        SELECT c.id, c.name, c.icon, ct.id as type_id, ct.name as type_name
        FROM categories c
        LEFT JOIN category_types ct ON c.type_id = ct.id
        ''');

      return result.map((row) {
        final typeId = row['type_id'] as String?;
        final typeName = row['type_name'] as String?;
        return CategoryModel(
          id: row['id'] as String,
          name: row['name'] as String,
          icon: row['icon'] as String,
          categoryType: (typeId != null && typeName != null)
              ? CategoryTypeModel(id: typeId, name: typeName)
              : null,
        );
      }).toList();
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении категорий: ${e.toString()}',
      );
    }
  }

  Future<CategoryModel> getById({required String id}) async {
    try {
      final result = await _databaseService.db.rawQuery('''
        SELECT c.id, c.name, c.icon, ct.id as type_id, ct.name as type_name
        FROM categories c
        LEFT JOIN category_types ct ON c.type_id = ct.id
        WHERE c.id = ?
        LIMIT 1
      ''', [id]);

      if (result.isEmpty) {
        throw NotFoundException('Категория не найдена');
      }

      final row = result.first;
      final typeId = row['type_id'] as String?;
      final typeName = row['type_name'] as String?;

      return CategoryModel(
        id: row['id'] as String,
        name: row['name'] as String,
        icon: row['icon'] as String,
        categoryType: (typeId != null && typeName != null)
            ? CategoryTypeModel(id: typeId, name: typeName)
            : null,
      );
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении категории: ${e.toString()}',
      );
    }
  }

  Future<CategoryModel> create({
    required String name,
    required String typeId,
    required String icon,
  }) async {
    final uuid = Uuid();
    final id = uuid.v4();

    final values = {
      'id': id,
      'name': name,
      'name_lower': name.toLowerCase(),
      'icon': icon,
      'type_id': typeId,
    };

    try {
      await _databaseService.db.insert(
        'categories',
        values,
        conflictAlgorithm: ConflictAlgorithm.abort,
      );

      return getById(id: id);
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
    String? typeId,
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
    if (typeId != null) {
      values['type_id'] = typeId;
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

      return getById(id: id);
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
