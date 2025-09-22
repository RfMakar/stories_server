import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/category_type_model.dart';
import 'package:uuid/uuid.dart';

class CategoryTypeRepository {
  final DatabaseService _databaseService;

  CategoryTypeRepository(this._databaseService);

  Future<List<CategoryTypeModel>> getAll() async {
    try {
      final result = await _databaseService.db.query('category_types');
      return result.map((row) => CategoryTypeModel.fromJson(row)).toList();
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении типов категорий: ${e.toString()}',
      );
    }
  }

  Future<CategoryTypeModel> getById({required String id}) async {
    try {
      final result = await _databaseService.db.query(
        'category_types',
        where: 'id = ?',
        whereArgs: [id],
        limit: 1,
      );

      if (result.isEmpty) {
        throw NotFoundException('Тип категории не найден');
      }

      return CategoryTypeModel.fromJson(result.first);
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при получении типа категории: ${e.toString()}',
      );
    }
  }

  Future<List<CategoryTypeModel>> getAllWithCategories() async {
  try {
    final result = await _databaseService.db.rawQuery('''
      SELECT 
        ct.id   AS type_id,
        ct.name AS type_name,
        c.id    AS category_id,
        c.name  AS category_name,
        c.icon  AS category_icon
      FROM category_types ct
      LEFT JOIN categories c ON c.type_id = ct.id
      ORDER BY ct.name, c.name;
    ''');

    final Map<String, CategoryTypeModel> typeMap = {};

    for (final row in result) {
      final typeId = row['type_id'] as String;

      if (!typeMap.containsKey(typeId)) {
        typeMap[typeId] = CategoryTypeModel(
          id: typeId,
          name: row['type_name'] as String,
          categories: [],
        );
      }

      if (row['category_id'] != null) {
        typeMap[typeId]!.categories?.add(
          CategoryModel(
            id: row['category_id'] as String,
            name: row['category_name'] as String,
            icon: row['category_icon'] as String,
          ),
        );
      }
    }

    return typeMap.values.toList();
  } on DatabaseException catch (e) {
    throw DBaseException(
      'Ошибка при получении типов категорий с категориями: ${e.toString()}',
    );
  }
}


  Future<CategoryTypeModel> create({required String name}) async {
    final uuid = Uuid();
    final id = uuid.v4();

    final values = {
      'id': id,
      'name': name,
    };

    try {
      await _databaseService.db.insert(
        'category_types',
        values,
        conflictAlgorithm: ConflictAlgorithm.abort,
      );

      return getById(id: id);
    } on DatabaseException catch (e) {
      if (e.isUniqueConstraintError()) {
        throw ConflictException('Тип категории с таким именем уже существует');
      }
      throw DBaseException(
        'Ошибка при создании типа категории: ${e.toString()}',
      );
    }
  }

  Future<CategoryTypeModel> update({
    required String id,
    required String name,
  }) async {
    try {
      final count = await _databaseService.db.update(
        'category_types',
        {'name': name},
        where: 'id = ?',
        whereArgs: [id],
      );

      if (count == 0) {
        throw NotFoundException('Тип категории с id $id не найден');
      }

      return getById(id: id);
    } on DatabaseException catch (e) {
      if (e.isUniqueConstraintError()) {
        throw ConflictException('Тип категории с таким именем уже существует');
      }
      throw DBaseException(
        'Ошибка при обновлении типа категории: ${e.toString()}',
      );
    }
  }

  Future<void> deleteById({required String id}) async {
    try {
      final count = await _databaseService.db.delete(
        'category_types',
        where: 'id = ?',
        whereArgs: [id],
      );

      if (count == 0) {
        throw NotFoundException(
            'Тип категории с id $id не найден для удаления');
      }
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при удалении типа категории: ${e.toString()}',
      );
    }
  }

   Future<void> deleteAll() async {
    try {
      await _databaseService.db.delete('category_types');
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при удалении всех типов категорий: ${e.toString()}',
      );
    }
  }
}
