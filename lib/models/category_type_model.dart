import 'package:json_annotation/json_annotation.dart';
import 'package:stories_server/models/category_model.dart';

part 'category_type_model.g.dart';

@JsonSerializable()
class CategoryTypeModel {
  final String id;
  final String name;
  final List<CategoryModel>? categories;

  CategoryTypeModel({
    required this.id,
    required this.name,
    this.categories,
  });

  factory CategoryTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryTypeModelToJson(this);
}
