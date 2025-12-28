import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stories_server/core/exceptions/app_exceptions.dart';
import 'package:stories_server/data/database_sevice.dart';

class StatsRepository {
  final DatabaseService _databaseService;

  StatsRepository(this._databaseService);

  /// Количество прочтений за период
  Future<int> countReads({
    DateTime? from,
    DateTime? to,
  }) async {
    try {
      String where = '';
      final args = <Object?>[];

      if (from != null) {
        where += 'read_at >= ?';
        args.add(from.toIso8601String());
      }

      if (to != null) {
        where += where.isEmpty ? '' : ' AND ';
        where += 'read_at < ?';
        args.add(to.toIso8601String());
      }

      final result = await _databaseService.db.rawQuery('''
        SELECT COUNT(*) AS count
        FROM story_reads
        ${where.isEmpty ? '' : 'WHERE $where'}
      ''', args);

      if (result.isNotEmpty && result.first.containsKey('count')) {
        return (result.first['count'] as int?) ?? 0;
      }

      return 0;
    } on DatabaseException catch (e) {
      throw DBaseException(
        'Ошибка при подсчёте прочтений: ${e.toString()}',
      );
    }
  }
}
