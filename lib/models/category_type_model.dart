import 'package:json_annotation/json_annotation.dart';

part 'category_type_model.g.dart';

@JsonSerializable()
class CategoryTypeModel {
  final String id;
  final String name;

  CategoryTypeModel({
    required this.id,
    required this.name,
  });

  factory CategoryTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryTypeModelToJson(this);
}
