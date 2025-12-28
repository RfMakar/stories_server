import 'package:stories_server/models/stats_model.dart';
import 'package:stories_server/repositories/stats_repository.dart';

class StatsService {
  final StatsRepository _statsRepository;

  StatsService(this._statsRepository);

  Future<ReadsStatsModel> getReadsStats() async {
    final now = DateTime.now();

    final startOfToday = _startOfDay(now);
    final startOfWeek = startOfToday.subtract(const Duration(days: 7));
    final startOfMonth = startOfToday.subtract(const Duration(days: 30));

    final total = await _statsRepository.countReads();
    final today = await _statsRepository.countReads(from: startOfToday);
    final week = await _statsRepository.countReads(from: startOfWeek);
    final month = await _statsRepository.countReads(from: startOfMonth);

    return ReadsStatsModel(
      total: total,
      today: today,
      week: week,
      month: month,
    );
  }

  DateTime _startOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }
}
