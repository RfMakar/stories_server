import 'package:json_annotation/json_annotation.dart';

part 'story_model.g.dart';

@JsonSerializable()
class StoryModel {
  final String id;
  final String title;
  final String content;
  final String image;
  final DateTime createdAt;

  StoryModel({
    required this.id,
    required this.title,
    required this.content,
    required this.image,
    required this.createdAt,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoryModelToJson(this);
}
