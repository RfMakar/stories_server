import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DatabaseService {
  late final Database _db;

  Future<void> init() async {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;

    final dbPath = await _getDatabasePath();
    _db = await databaseFactory.openDatabase(dbPath);
    await _runMigrations();
  }

  Future<String> _getDatabasePath() async {
    final dir = Directory.current.path;
    return p.join(dir, 'stories.sqlite');
  }

  Future<void> _runMigrations() async {
    final result = await _db.rawQuery('PRAGMA user_version');
    final currentVersion = result.isNotEmpty && result.first.isNotEmpty
        ? result.first.values.first as int
        : 0;
    if (currentVersion == 0) {
      // Начальная миграция (создание таблиц)
      await _db.execute('''
      CREATE TABLE IF NOT EXISTS stories (
      id TEXT PRIMARY KEY,
      title TEXT NOT NULL,
      title_lower TEXT NOT NULL,
      description TEXT NOT NULL,
      content TEXT NOT NULL,
      image TEXT NOT NULL,
      audio TEXT,
      created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
      read_count INTEGER NOT NULL DEFAULT 0
      );
      ''');

      await _db.execute('''
      CREATE TABLE IF NOT EXISTS categories (
      id TEXT PRIMARY KEY,
      name TEXT NOT NULL UNIQUE,
      name_lower TEXT NOT NULL,
      icon TEXT NOT NULL
      );
      ''');

      await _db.execute('''
      CREATE TABLE IF NOT EXISTS story_categories (
      story_id TEXT NOT NULL,
      category_id TEXT NOT NULL,
      PRIMARY KEY (story_id, category_id),
      FOREIGN KEY (story_id) REFERENCES stories(id) ON DELETE CASCADE,
      FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
      );
      ''');

      await _db.execute('''
      CREATE TABLE IF NOT EXISTS story_reads (
      id TEXT PRIMARY KEY,
      story_id TEXT NOT NULL,
      read_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
      FOREIGN KEY (story_id) REFERENCES stories(id) ON DELETE CASCADE
      );
      ''');
      await _db.execute('PRAGMA user_version = 1');
    }

    if (currentVersion == 1) {
      // Добавляем колонку audio
      await _db.execute('ALTER TABLE stories ADD COLUMN audio TEXT;');
      await _db.execute('PRAGMA user_version = 2');
    }
  }

  Database get db => _db;
}
