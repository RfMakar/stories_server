import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/data/database_sevice.dart';
import 'package:stories_server/models/category_model.dart';
import 'package:uuid/uuid.dart';

class CategoryRepository {
  final DatabaseService _databaseService;

  CategoryRepository(this._databaseService);

  Future<List<CategoryModel>> findMany() async {
    final result = await _databaseService.db.query('categories');
    return result.map((row) => CategoryModel.fromJson(row)).toList();
  }

  Future<CategoryModel?> findUnique({String? id, String? name}) async {
    // Формируем условие WHERE и аргументы для запроса
    String whereClause;
    List<Object?> whereArgs;

    if (id != null && name != null) {
      whereClause = 'id = ? AND name = ?';
      whereArgs = [id, name];
    } else if (id != null) {
      whereClause = 'id = ?';
      whereArgs = [id];
    } else {
      whereClause = 'name = ?';
      whereArgs = [name!];
    }

    final result = await _databaseService.db.query(
      'categories',
      where: whereClause,
      whereArgs: whereArgs,
      limit: 1,
    );

    if (result.isEmpty) return null;

    // Важно: result.first — это Map<String, Object?>
    return CategoryModel.fromJson(result.first);
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
      'icon': icon,
    };

    await _databaseService.db.insert(
      'categories',
      values,
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
    final result = await findUnique(id: id);

    if (result == null) {
      throw Exception('Ошибка: категория не найдена после создания');
    }

    return CategoryModel.fromJson(result.toJson());
  }

  Future<CategoryModel?> update({
    required String id,
    String? name,
    String? icon,
  }) async {
    if (name == null && icon == null) {
      // Нечего обновлять
      return await findUnique(id: id);
    }

    final values = <String, Object?>{};
    if (name != null) values['name'] = name;
    if (icon != null) values['icon'] = icon;

    final count = await _databaseService.db.update(
      'categories',
      values,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (count == 0) {
      return null; // Не найдено
    }

    final result = await findUnique(id: id);

    if (result == null) {
      throw Exception('Ошибка: категория не обновилась');
    }

    return CategoryModel.fromJson(result.toJson());
  }

  Future<void> delete({required String id}) async {
    await _databaseService.db.delete(
      'categories',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteMany() async {
    await _databaseService.db.delete('categories');
  }

  Future<List<CategoryModel>> searchCategories(String query) async {
    final result = await _databaseService.db.query(
      'categories',
      where: 'name LIKE ?',
      whereArgs: ['%$query%'],
    );

    return result.map((row) => CategoryModel.fromJson(row)).toList();
  }
}
