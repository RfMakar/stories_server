import 'package:json_annotation/json_annotation.dart';
import 'package:stories_server/models/category_type_model.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  final String id;
  final String name;
  final String icon;
  final CategoryTypeModel? categoryType;

  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    this.categoryType,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
