import 'package:stories_server/models/category_model.dart';
import 'package:stories_server/models/story_model.dart';
import 'package:stories_server/repositories/search_repository.dart';

class SearchService {
  final SearchRepository _searchRepository;
  SearchService(this._searchRepository);

  Future<List<CategoryModel>> searchCategories(String query) async {
    if (query.trim().isEmpty) {
      return [];
    }
    return await _searchRepository.searchCategories(query);
  }

   Future<List<StoryModel>> searchStories(String query) async {
    if (query.trim().isEmpty) {
      return [];
    }
    return await _searchRepository.searchStories(query);
  }
}