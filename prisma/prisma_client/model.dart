// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class Category {
  const Category({
    this.id,
    this.name,
    this.icon,
    this.stories,
    this.$count,
  });

  factory Category.fromJson(Map json) => Category(
        id: json['id'],
        name: json['name'],
        icon: json['icon'],
        stories: (json['stories'] as Iterable?)
            ?.map((json) => _i1.StoryCategory.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.CategoryCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? name;

  final String? icon;

  final Iterable<_i1.StoryCategory>? stories;

  final _i2.CategoryCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        'stories': stories?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class StoryCategory {
  const StoryCategory({
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  factory StoryCategory.fromJson(Map json) => StoryCategory(
        storyId: json['storyId'],
        categoryId: json['categoryId'],
        story: json['story'] is Map ? _i1.Story.fromJson(json['story']) : null,
        category: json['category'] is Map
            ? _i1.Category.fromJson(json['category'])
            : null,
      );

  final String? storyId;

  final String? categoryId;

  final _i1.Story? story;

  final _i1.Category? category;

  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story?.toJson(),
        'category': category?.toJson(),
      };
}

class Story {
  const Story({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.categories,
    this.$count,
  });

  factory Story.fromJson(Map json) => Story(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        image: json['image'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        categories: (json['categories'] as Iterable?)
            ?.map((json) => _i1.StoryCategory.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.StoryCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? title;

  final String? content;

  final String? image;

  final DateTime? createdAt;

  final Iterable<_i1.StoryCategory>? categories;

  final _i2.StoryCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt?.toIso8601String(),
        'categories': categories?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class CreateManyStoryAndReturnOutputType {
  const CreateManyStoryAndReturnOutputType({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  factory CreateManyStoryAndReturnOutputType.fromJson(Map json) =>
      CreateManyStoryAndReturnOutputType(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        image: json['image'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
      );

  final String? id;

  final String? title;

  final String? content;

  final String? image;

  final DateTime? createdAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt?.toIso8601String(),
      };
}

class UpdateManyStoryAndReturnOutputType {
  const UpdateManyStoryAndReturnOutputType({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  factory UpdateManyStoryAndReturnOutputType.fromJson(Map json) =>
      UpdateManyStoryAndReturnOutputType(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        image: json['image'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
      );

  final String? id;

  final String? title;

  final String? content;

  final String? image;

  final DateTime? createdAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt?.toIso8601String(),
      };
}

class CreateManyCategoryAndReturnOutputType {
  const CreateManyCategoryAndReturnOutputType({
    this.id,
    this.name,
    this.icon,
  });

  factory CreateManyCategoryAndReturnOutputType.fromJson(Map json) =>
      CreateManyCategoryAndReturnOutputType(
        id: json['id'],
        name: json['name'],
        icon: json['icon'],
      );

  final String? id;

  final String? name;

  final String? icon;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class UpdateManyCategoryAndReturnOutputType {
  const UpdateManyCategoryAndReturnOutputType({
    this.id,
    this.name,
    this.icon,
  });

  factory UpdateManyCategoryAndReturnOutputType.fromJson(Map json) =>
      UpdateManyCategoryAndReturnOutputType(
        id: json['id'],
        name: json['name'],
        icon: json['icon'],
      );

  final String? id;

  final String? name;

  final String? icon;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CreateManyStoryCategoryAndReturnOutputType {
  const CreateManyStoryCategoryAndReturnOutputType({
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  factory CreateManyStoryCategoryAndReturnOutputType.fromJson(Map json) =>
      CreateManyStoryCategoryAndReturnOutputType(
        storyId: json['storyId'],
        categoryId: json['categoryId'],
        story: json['story'] is Map ? _i1.Story.fromJson(json['story']) : null,
        category: json['category'] is Map
            ? _i1.Category.fromJson(json['category'])
            : null,
      );

  final String? storyId;

  final String? categoryId;

  final _i1.Story? story;

  final _i1.Category? category;

  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story?.toJson(),
        'category': category?.toJson(),
      };
}

class UpdateManyStoryCategoryAndReturnOutputType {
  const UpdateManyStoryCategoryAndReturnOutputType({
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  factory UpdateManyStoryCategoryAndReturnOutputType.fromJson(Map json) =>
      UpdateManyStoryCategoryAndReturnOutputType(
        storyId: json['storyId'],
        categoryId: json['categoryId'],
        story: json['story'] is Map ? _i1.Story.fromJson(json['story']) : null,
        category: json['category'] is Map
            ? _i1.Category.fromJson(json['category'])
            : null,
      );

  final String? storyId;

  final String? categoryId;

  final _i1.Story? story;

  final _i1.Category? category;

  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story?.toJson(),
        'category': category?.toJson(),
      };
}
