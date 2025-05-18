// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class CategoryCountOutputType {
  const CategoryCountOutputType({this.stories});

  factory CategoryCountOutputType.fromJson(Map json) =>
      CategoryCountOutputType(stories: json['stories']);

  final int? stories;

  Map<String, dynamic> toJson() => {'stories': stories};
}

class StoryCountOutputType {
  const StoryCountOutputType({this.categories});

  factory StoryCountOutputType.fromJson(Map json) =>
      StoryCountOutputType(categories: json['categories']);

  final int? categories;

  Map<String, dynamic> toJson() => {'categories': categories};
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class StoryScalarRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryScalarRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.StoryWhereInput? $is;

  final _i2.StoryWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class CategoryWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.icon,
    this.stories,
  });

  final _i1
      .PrismaUnion<_i2.CategoryWhereInput, Iterable<_i2.CategoryWhereInput>>?
      AND;

  final Iterable<_i2.CategoryWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.CategoryWhereInput, Iterable<_i2.CategoryWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? icon;

  final _i2.StoryCategoryListRelationFilter? stories;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'icon': icon,
        'stories': stories,
      };
}

class CategoryScalarRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryScalarRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.CategoryWhereInput? $is;

  final _i2.CategoryWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class StoryCategoryWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  final _i1.PrismaUnion<_i2.StoryCategoryWhereInput,
      Iterable<_i2.StoryCategoryWhereInput>>? AND;

  final Iterable<_i2.StoryCategoryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereInput,
      Iterable<_i2.StoryCategoryWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? storyId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  final _i1.PrismaUnion<_i2.StoryScalarRelationFilter, _i2.StoryWhereInput>?
      story;

  final _i1
      .PrismaUnion<_i2.CategoryScalarRelationFilter, _i2.CategoryWhereInput>?
      category;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story,
        'category': category,
      };
}

class StoryCategoryListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.StoryCategoryWhereInput? every;

  final _i2.StoryCategoryWhereInput? some;

  final _i2.StoryCategoryWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class StoryWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.categories,
  });

  final _i1.PrismaUnion<_i2.StoryWhereInput, Iterable<_i2.StoryWhereInput>>?
      AND;

  final Iterable<_i2.StoryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoryWhereInput, Iterable<_i2.StoryWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringFilter, String>? content;

  final _i1.PrismaUnion<_i2.StringFilter, String>? image;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i2.StoryCategoryListRelationFilter? categories;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        'categories': categories,
      };
}

class StoryWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.categories,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.StoryWhereInput, Iterable<_i2.StoryWhereInput>>?
      AND;

  final Iterable<_i2.StoryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoryWhereInput, Iterable<_i2.StoryWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringFilter, String>? content;

  final _i1.PrismaUnion<_i2.StringFilter, String>? image;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createdAt;

  final _i2.StoryCategoryListRelationFilter? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        'categories': categories,
      };
}

class StoryCategoryStoryArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryStoryArgs({
    this.select,
    this.include,
  });

  final _i2.StorySelect? select;

  final _i2.StoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class StoryCategoryOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class StoryOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryOrderByWithRelationInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.categories,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? content;

  final _i2.SortOrder? image;

  final _i2.SortOrder? createdAt;

  final _i2.StoryCategoryOrderByRelationAggregateInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        'categories': categories,
      };
}

class CategoryOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryOrderByWithRelationInput({
    this.id,
    this.name,
    this.icon,
    this.stories,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? icon;

  final _i2.StoryCategoryOrderByRelationAggregateInput? stories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        'stories': stories,
      };
}

class StoryCategoryOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryOrderByWithRelationInput({
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  final _i2.SortOrder? storyId;

  final _i2.SortOrder? categoryId;

  final _i2.StoryOrderByWithRelationInput? story;

  final _i2.CategoryOrderByWithRelationInput? category;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story,
        'category': category,
      };
}

class StoryCategoryStoryIdCategoryIdCompoundUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryStoryIdCategoryIdCompoundUniqueInput({
    required this.storyId,
    required this.categoryId,
  });

  final String storyId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryWhereUniqueInput({
    this.storyIdCategoryId,
    this.AND,
    this.OR,
    this.NOT,
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  final _i2.StoryCategoryStoryIdCategoryIdCompoundUniqueInput?
      storyIdCategoryId;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereInput,
      Iterable<_i2.StoryCategoryWhereInput>>? AND;

  final Iterable<_i2.StoryCategoryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereInput,
      Iterable<_i2.StoryCategoryWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? storyId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  final _i1.PrismaUnion<_i2.StoryScalarRelationFilter, _i2.StoryWhereInput>?
      story;

  final _i1
      .PrismaUnion<_i2.CategoryScalarRelationFilter, _i2.CategoryWhereInput>?
      category;

  @override
  Map<String, dynamic> toJson() => {
        'storyId_categoryId': storyIdCategoryId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story,
        'category': category,
      };
}

enum StoryCategoryScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  storyId<String>('storyId', 'StoryCategory'),
  categoryId<String>('categoryId', 'StoryCategory');

  const StoryCategoryScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CategoryStoriesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryStoriesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.StoryCategoryWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.StoryCategoryOrderByWithRelationInput>,
      _i2.StoryCategoryOrderByWithRelationInput>? orderBy;

  final _i2.StoryCategoryWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1
      .PrismaUnion<_i2.StoryCategoryScalar, Iterable<_i2.StoryCategoryScalar>>?
      distinct;

  final _i2.StoryCategorySelect? select;

  final _i2.StoryCategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class CategoryCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCountOutputTypeSelect({this.stories});

  final bool? stories;

  @override
  Map<String, dynamic> toJson() => {'stories': stories};
}

class CategoryCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCountArgs({this.select});

  final _i2.CategoryCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CategorySelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategorySelect({
    this.id,
    this.name,
    this.icon,
    this.stories,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? icon;

  final _i1.PrismaUnion<bool, _i2.CategoryStoriesArgs>? stories;

  final _i1.PrismaUnion<bool, _i2.CategoryCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        'stories': stories,
        '_count': $count,
      };
}

class CategoryInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryInclude({
    this.stories,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.CategoryStoriesArgs>? stories;

  final _i1.PrismaUnion<bool, _i2.CategoryCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'stories': stories,
        '_count': $count,
      };
}

class StoryCategoryCategoryArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCategoryArgs({
    this.select,
    this.include,
  });

  final _i2.CategorySelect? select;

  final _i2.CategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class StoryCategoryInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryInclude({
    this.story,
    this.category,
  });

  final _i1.PrismaUnion<bool, _i2.StoryCategoryStoryArgs>? story;

  final _i1.PrismaUnion<bool, _i2.StoryCategoryCategoryArgs>? category;

  @override
  Map<String, dynamic> toJson() => {
        'story': story,
        'category': category,
      };
}

class StoryCategoriesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoriesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.StoryCategoryWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.StoryCategoryOrderByWithRelationInput>,
      _i2.StoryCategoryOrderByWithRelationInput>? orderBy;

  final _i2.StoryCategoryWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1
      .PrismaUnion<_i2.StoryCategoryScalar, Iterable<_i2.StoryCategoryScalar>>?
      distinct;

  final _i2.StoryCategorySelect? select;

  final _i2.StoryCategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class StoryCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCountOutputTypeSelect({this.categories});

  final bool? categories;

  @override
  Map<String, dynamic> toJson() => {'categories': categories};
}

class StoryCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCountArgs({this.select});

  final _i2.StoryCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoryInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryInclude({
    this.categories,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.StoryCategoriesArgs>? categories;

  final _i1.PrismaUnion<bool, _i2.StoryCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'categories': categories,
        '_count': $count,
      };
}

class StoryCategorySelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategorySelect({
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  final bool? storyId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool, _i2.StoryCategoryStoryArgs>? story;

  final _i1.PrismaUnion<bool, _i2.StoryCategoryCategoryArgs>? category;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story,
        'category': category,
      };
}

class StorySelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StorySelect({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.categories,
    this.$count,
  });

  final bool? id;

  final bool? title;

  final bool? content;

  final bool? image;

  final bool? createdAt;

  final _i1.PrismaUnion<bool, _i2.StoryCategoriesArgs>? categories;

  final _i1.PrismaUnion<bool, _i2.StoryCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        'categories': categories,
        '_count': $count,
      };
}

enum StoryScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Story'),
  title<String>('title', 'Story'),
  content<String>('content', 'Story'),
  image<String>('image', 'Story'),
  createdAt<DateTime>('createdAt', 'Story');

  const StoryScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CategoryCreateWithoutStoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCreateWithoutStoriesInput({
    this.id,
    required this.name,
    required this.icon,
  });

  final String? id;

  final String name;

  final String icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryUncheckedCreateWithoutStoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUncheckedCreateWithoutStoriesInput({
    this.id,
    required this.name,
    required this.icon,
  });

  final String? id;

  final String name;

  final String icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryWhereUniqueInput({
    this.id,
    this.name,
    this.AND,
    this.OR,
    this.NOT,
    this.icon,
    this.stories,
  });

  final String? id;

  final String? name;

  final _i1
      .PrismaUnion<_i2.CategoryWhereInput, Iterable<_i2.CategoryWhereInput>>?
      AND;

  final Iterable<_i2.CategoryWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.CategoryWhereInput, Iterable<_i2.CategoryWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? icon;

  final _i2.StoryCategoryListRelationFilter? stories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'icon': icon,
        'stories': stories,
      };
}

class CategoryCreateOrConnectWithoutStoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCreateOrConnectWithoutStoriesInput({
    required this.where,
    required this.create,
  });

  final _i2.CategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CategoryCreateWithoutStoriesInput,
      _i2.CategoryUncheckedCreateWithoutStoriesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CategoryCreateNestedOneWithoutStoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCreateNestedOneWithoutStoriesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CategoryCreateWithoutStoriesInput,
      _i2.CategoryUncheckedCreateWithoutStoriesInput>? create;

  final _i2.CategoryCreateOrConnectWithoutStoriesInput? connectOrCreate;

  final _i2.CategoryWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class StoryCategoryCreateWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateWithoutStoryInput({required this.category});

  final _i2.CategoryCreateNestedOneWithoutStoriesInput category;

  @override
  Map<String, dynamic> toJson() => {'category': category};
}

class StoryCategoryUncheckedCreateWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedCreateWithoutStoryInput(
      {required this.categoryId});

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class StoryCategoryCreateOrConnectWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateOrConnectWithoutStoryInput({
    required this.where,
    required this.create,
  });

  final _i2.StoryCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateWithoutStoryInput,
      _i2.StoryCategoryUncheckedCreateWithoutStoryInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class StoryCategoryCreateManyStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateManyStoryInput({required this.categoryId});

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class StoryCategoryCreateManyStoryInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateManyStoryInputEnvelope({required this.data});

  final _i1.PrismaUnion<_i2.StoryCategoryCreateManyStoryInput,
      Iterable<_i2.StoryCategoryCreateManyStoryInput>> data;

  @override
  Map<String, dynamic> toJson() => {'data': data};
}

class StoryCategoryCreateNestedManyWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateNestedManyWithoutStoryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.StoryCategoryCreateWithoutStoryInput,
      _i1.PrismaUnion<
          Iterable<_i2.StoryCategoryCreateWithoutStoryInput>,
          _i1.PrismaUnion<
              _i2.StoryCategoryUncheckedCreateWithoutStoryInput,
              Iterable<
                  _i2.StoryCategoryUncheckedCreateWithoutStoryInput>>>>? create;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateOrConnectWithoutStoryInput,
          Iterable<_i2.StoryCategoryCreateOrConnectWithoutStoryInput>>?
      connectOrCreate;

  final _i2.StoryCategoryCreateManyStoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class StoryCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCreateInput({
    this.id,
    required this.title,
    required this.content,
    required this.image,
    this.createdAt,
    this.categories,
  });

  final String? id;

  final String title;

  final String content;

  final String image;

  final DateTime? createdAt;

  final _i2.StoryCategoryCreateNestedManyWithoutStoryInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        'categories': categories,
      };
}

class StoryCategoryUncheckedCreateNestedManyWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedCreateNestedManyWithoutStoryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.StoryCategoryCreateWithoutStoryInput,
      _i1.PrismaUnion<
          Iterable<_i2.StoryCategoryCreateWithoutStoryInput>,
          _i1.PrismaUnion<
              _i2.StoryCategoryUncheckedCreateWithoutStoryInput,
              Iterable<
                  _i2.StoryCategoryUncheckedCreateWithoutStoryInput>>>>? create;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateOrConnectWithoutStoryInput,
          Iterable<_i2.StoryCategoryCreateOrConnectWithoutStoryInput>>?
      connectOrCreate;

  final _i2.StoryCategoryCreateManyStoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class StoryUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUncheckedCreateInput({
    this.id,
    required this.title,
    required this.content,
    required this.image,
    this.createdAt,
    this.categories,
  });

  final String? id;

  final String title;

  final String content;

  final String image;

  final DateTime? createdAt;

  final _i2.StoryCategoryUncheckedCreateNestedManyWithoutStoryInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        'categories': categories,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class StoryCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCreateManyInput({
    this.id,
    required this.title,
    required this.content,
    required this.image,
    this.createdAt,
  });

  final String? id;

  final String title;

  final String content;

  final String image;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class CreateManyStoryAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyStoryAndReturnOutputTypeSelect({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final bool? id;

  final bool? title;

  final bool? content;

  final bool? image;

  final bool? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class CategoryUpdateWithoutStoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUpdateWithoutStoriesInput({
    this.id,
    this.name,
    this.icon,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryUncheckedUpdateWithoutStoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUncheckedUpdateWithoutStoriesInput({
    this.id,
    this.name,
    this.icon,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryUpsertWithoutStoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUpsertWithoutStoriesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.CategoryUpdateWithoutStoriesInput,
      _i2.CategoryUncheckedUpdateWithoutStoriesInput> update;

  final _i1.PrismaUnion<_i2.CategoryCreateWithoutStoriesInput,
      _i2.CategoryUncheckedCreateWithoutStoriesInput> create;

  final _i2.CategoryWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class CategoryUpdateToOneWithWhereWithoutStoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUpdateToOneWithWhereWithoutStoriesInput({
    this.where,
    required this.data,
  });

  final _i2.CategoryWhereInput? where;

  final _i1.PrismaUnion<_i2.CategoryUpdateWithoutStoriesInput,
      _i2.CategoryUncheckedUpdateWithoutStoriesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CategoryUpdateOneRequiredWithoutStoriesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUpdateOneRequiredWithoutStoriesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CategoryCreateWithoutStoriesInput,
      _i2.CategoryUncheckedCreateWithoutStoriesInput>? create;

  final _i2.CategoryCreateOrConnectWithoutStoriesInput? connectOrCreate;

  final _i2.CategoryUpsertWithoutStoriesInput? upsert;

  final _i2.CategoryWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CategoryUpdateToOneWithWhereWithoutStoriesInput,
      _i1.PrismaUnion<_i2.CategoryUpdateWithoutStoriesInput,
          _i2.CategoryUncheckedUpdateWithoutStoriesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class StoryCategoryUpdateWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateWithoutStoryInput({this.category});

  final _i2.CategoryUpdateOneRequiredWithoutStoriesNestedInput? category;

  @override
  Map<String, dynamic> toJson() => {'category': category};
}

class StoryCategoryUncheckedUpdateWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedUpdateWithoutStoryInput({this.categoryId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class StoryCategoryUpsertWithWhereUniqueWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpsertWithWhereUniqueWithoutStoryInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.StoryCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateWithoutStoryInput,
      _i2.StoryCategoryUncheckedUpdateWithoutStoryInput> update;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateWithoutStoryInput,
      _i2.StoryCategoryUncheckedCreateWithoutStoryInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class StoryCategoryUpdateWithWhereUniqueWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateWithWhereUniqueWithoutStoryInput({
    required this.where,
    required this.data,
  });

  final _i2.StoryCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateWithoutStoryInput,
      _i2.StoryCategoryUncheckedUpdateWithoutStoryInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class StoryCategoryScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.storyId,
    this.categoryId,
  });

  final _i1.PrismaUnion<_i2.StoryCategoryScalarWhereInput,
      Iterable<_i2.StoryCategoryScalarWhereInput>>? AND;

  final Iterable<_i2.StoryCategoryScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoryCategoryScalarWhereInput,
      Iterable<_i2.StoryCategoryScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? storyId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateManyMutationInput();

  @override
  Map<String, dynamic> toJson() => {};
}

class StoryCategoryUncheckedUpdateManyWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedUpdateManyWithoutStoryInput({this.categoryId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {'categoryId': categoryId};
}

class StoryCategoryUpdateManyWithWhereWithoutStoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateManyWithWhereWithoutStoryInput({
    required this.where,
    required this.data,
  });

  final _i2.StoryCategoryScalarWhereInput where;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateManyMutationInput,
      _i2.StoryCategoryUncheckedUpdateManyWithoutStoryInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class StoryCategoryUpdateManyWithoutStoryNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateManyWithoutStoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.StoryCategoryCreateWithoutStoryInput,
      _i1.PrismaUnion<
          Iterable<_i2.StoryCategoryCreateWithoutStoryInput>,
          _i1.PrismaUnion<
              _i2.StoryCategoryUncheckedCreateWithoutStoryInput,
              Iterable<
                  _i2.StoryCategoryUncheckedCreateWithoutStoryInput>>>>? create;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateOrConnectWithoutStoryInput,
          Iterable<_i2.StoryCategoryCreateOrConnectWithoutStoryInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.StoryCategoryUpsertWithWhereUniqueWithoutStoryInput,
          Iterable<_i2.StoryCategoryUpsertWithWhereUniqueWithoutStoryInput>>?
      upsert;

  final _i2.StoryCategoryCreateManyStoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateWithWhereUniqueWithoutStoryInput,
          Iterable<_i2.StoryCategoryUpdateWithWhereUniqueWithoutStoryInput>>?
      update;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateManyWithWhereWithoutStoryInput,
          Iterable<_i2.StoryCategoryUpdateManyWithWhereWithoutStoryInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.StoryCategoryScalarWhereInput,
      Iterable<_i2.StoryCategoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class StoryUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUpdateInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? content;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i2.StoryCategoryUpdateManyWithoutStoryNestedInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        'categories': categories,
      };
}

class StoryCategoryUncheckedUpdateManyWithoutStoryNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedUpdateManyWithoutStoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.StoryCategoryCreateWithoutStoryInput,
      _i1.PrismaUnion<
          Iterable<_i2.StoryCategoryCreateWithoutStoryInput>,
          _i1.PrismaUnion<
              _i2.StoryCategoryUncheckedCreateWithoutStoryInput,
              Iterable<
                  _i2.StoryCategoryUncheckedCreateWithoutStoryInput>>>>? create;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateOrConnectWithoutStoryInput,
          Iterable<_i2.StoryCategoryCreateOrConnectWithoutStoryInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.StoryCategoryUpsertWithWhereUniqueWithoutStoryInput,
          Iterable<_i2.StoryCategoryUpsertWithWhereUniqueWithoutStoryInput>>?
      upsert;

  final _i2.StoryCategoryCreateManyStoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateWithWhereUniqueWithoutStoryInput,
          Iterable<_i2.StoryCategoryUpdateWithWhereUniqueWithoutStoryInput>>?
      update;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateManyWithWhereWithoutStoryInput,
          Iterable<_i2.StoryCategoryUpdateManyWithWhereWithoutStoryInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.StoryCategoryScalarWhereInput,
      Iterable<_i2.StoryCategoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class StoryUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUncheckedUpdateInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? content;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  final _i2.StoryCategoryUncheckedUpdateManyWithoutStoryNestedInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        'categories': categories,
      };
}

class StoryUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUpdateManyMutationInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? content;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUncheckedUpdateManyInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? content;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class UpdateManyStoryAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyStoryAndReturnOutputTypeSelect({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final bool? id;

  final bool? title;

  final bool? content;

  final bool? image;

  final bool? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryCountAggregateOutputType {
  const StoryCountAggregateOutputType({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.$all,
  });

  factory StoryCountAggregateOutputType.fromJson(Map json) =>
      StoryCountAggregateOutputType(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        image: json['image'],
        createdAt: json['createdAt'],
        $all: json['_all'],
      );

  final int? id;

  final int? title;

  final int? content;

  final int? image;

  final int? createdAt;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        '_all': $all,
      };
}

class StoryMinAggregateOutputType {
  const StoryMinAggregateOutputType({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  factory StoryMinAggregateOutputType.fromJson(Map json) =>
      StoryMinAggregateOutputType(
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

class StoryMaxAggregateOutputType {
  const StoryMaxAggregateOutputType({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  factory StoryMaxAggregateOutputType.fromJson(Map json) =>
      StoryMaxAggregateOutputType(
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

class StoryGroupByOutputType {
  const StoryGroupByOutputType({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StoryGroupByOutputType.fromJson(Map json) => StoryGroupByOutputType(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        image: json['image'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        $count: json['_count'] is Map
            ? _i2.StoryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.StoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.StoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? title;

  final String? content;

  final String? image;

  final DateTime? createdAt;

  final _i2.StoryCountAggregateOutputType? $count;

  final _i2.StoryMinAggregateOutputType? $min;

  final _i2.StoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt?.toIso8601String(),
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class StoryCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCountOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? content;

  final _i2.SortOrder? image;

  final _i2.SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? content;

  final _i2.SortOrder? image;

  final _i2.SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryMinOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? content;

  final _i2.SortOrder? image;

  final _i2.SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryOrderByWithAggregationInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? content;

  final _i2.SortOrder? image;

  final _i2.SortOrder? createdAt;

  final _i2.StoryCountOrderByAggregateInput? $count;

  final _i2.StoryMaxOrderByAggregateInput? $max;

  final _i2.StoryMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StoryScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final _i1.PrismaUnion<_i2.StoryScalarWhereWithAggregatesInput,
      Iterable<_i2.StoryScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.StoryScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.StoryScalarWhereWithAggregatesInput,
      Iterable<_i2.StoryScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? content;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? image;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCountAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.$all,
  });

  final bool? id;

  final bool? title;

  final bool? content;

  final bool? image;

  final bool? createdAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        '_all': $all,
      };
}

class StoryGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryGroupByOutputTypeCountArgs({this.select});

  final _i2.StoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoryMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryMinAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final bool? id;

  final bool? title;

  final bool? content;

  final bool? image;

  final bool? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryGroupByOutputTypeMinArgs({this.select});

  final _i2.StoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoryMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryMaxAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final bool? id;

  final bool? title;

  final bool? content;

  final bool? image;

  final bool? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryGroupByOutputTypeMaxArgs({this.select});

  final _i2.StoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoryGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryGroupByOutputTypeSelect({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? title;

  final bool? content;

  final bool? image;

  final bool? createdAt;

  final _i1.PrismaUnion<bool, _i2.StoryGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.StoryGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.StoryGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateStory {
  const AggregateStory({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateStory.fromJson(Map json) => AggregateStory(
        $count: json['_count'] is Map
            ? _i2.StoryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.StoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.StoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.StoryCountAggregateOutputType? $count;

  final _i2.StoryMinAggregateOutputType? $min;

  final _i2.StoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateStoryCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoryCountArgs({this.select});

  final _i2.StoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoryMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoryMinArgs({this.select});

  final _i2.StoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoryMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoryMaxArgs({this.select});

  final _i2.StoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStorySelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStorySelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateStoryCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateStoryMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateStoryMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum CategoryScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Category'),
  name$<String>('name', 'Category'),
  icon<String>('icon', 'Category');

  const CategoryScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class StoryCreateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCreateWithoutCategoriesInput({
    this.id,
    required this.title,
    required this.content,
    required this.image,
    this.createdAt,
  });

  final String? id;

  final String title;

  final String content;

  final String image;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryUncheckedCreateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUncheckedCreateWithoutCategoriesInput({
    this.id,
    required this.title,
    required this.content,
    required this.image,
    this.createdAt,
  });

  final String? id;

  final String title;

  final String content;

  final String image;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryCreateOrConnectWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCreateOrConnectWithoutCategoriesInput({
    required this.where,
    required this.create,
  });

  final _i2.StoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.StoryCreateWithoutCategoriesInput,
      _i2.StoryUncheckedCreateWithoutCategoriesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class StoryCreateNestedOneWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCreateNestedOneWithoutCategoriesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.StoryCreateWithoutCategoriesInput,
      _i2.StoryUncheckedCreateWithoutCategoriesInput>? create;

  final _i2.StoryCreateOrConnectWithoutCategoriesInput? connectOrCreate;

  final _i2.StoryWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class StoryCategoryCreateWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateWithoutCategoryInput({required this.story});

  final _i2.StoryCreateNestedOneWithoutCategoriesInput story;

  @override
  Map<String, dynamic> toJson() => {'story': story};
}

class StoryCategoryUncheckedCreateWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedCreateWithoutCategoryInput(
      {required this.storyId});

  final String storyId;

  @override
  Map<String, dynamic> toJson() => {'storyId': storyId};
}

class StoryCategoryCreateOrConnectWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateOrConnectWithoutCategoryInput({
    required this.where,
    required this.create,
  });

  final _i2.StoryCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateWithoutCategoryInput,
      _i2.StoryCategoryUncheckedCreateWithoutCategoryInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class StoryCategoryCreateManyCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateManyCategoryInput({required this.storyId});

  final String storyId;

  @override
  Map<String, dynamic> toJson() => {'storyId': storyId};
}

class StoryCategoryCreateManyCategoryInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateManyCategoryInputEnvelope({required this.data});

  final _i1.PrismaUnion<_i2.StoryCategoryCreateManyCategoryInput,
      Iterable<_i2.StoryCategoryCreateManyCategoryInput>> data;

  @override
  Map<String, dynamic> toJson() => {'data': data};
}

class StoryCategoryCreateNestedManyWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateNestedManyWithoutCategoryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.StoryCategoryCreateWithoutCategoryInput,
          _i1.PrismaUnion<
              Iterable<_i2.StoryCategoryCreateWithoutCategoryInput>,
              _i1.PrismaUnion<
                  _i2.StoryCategoryUncheckedCreateWithoutCategoryInput,
                  Iterable<
                      _i2.StoryCategoryUncheckedCreateWithoutCategoryInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateOrConnectWithoutCategoryInput,
          Iterable<_i2.StoryCategoryCreateOrConnectWithoutCategoryInput>>?
      connectOrCreate;

  final _i2.StoryCategoryCreateManyCategoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CategoryCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCreateInput({
    this.id,
    required this.name,
    required this.icon,
    this.stories,
  });

  final String? id;

  final String name;

  final String icon;

  final _i2.StoryCategoryCreateNestedManyWithoutCategoryInput? stories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        'stories': stories,
      };
}

class StoryCategoryUncheckedCreateNestedManyWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedCreateNestedManyWithoutCategoryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.StoryCategoryCreateWithoutCategoryInput,
          _i1.PrismaUnion<
              Iterable<_i2.StoryCategoryCreateWithoutCategoryInput>,
              _i1.PrismaUnion<
                  _i2.StoryCategoryUncheckedCreateWithoutCategoryInput,
                  Iterable<
                      _i2.StoryCategoryUncheckedCreateWithoutCategoryInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateOrConnectWithoutCategoryInput,
          Iterable<_i2.StoryCategoryCreateOrConnectWithoutCategoryInput>>?
      connectOrCreate;

  final _i2.StoryCategoryCreateManyCategoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class CategoryUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUncheckedCreateInput({
    this.id,
    required this.name,
    required this.icon,
    this.stories,
  });

  final String? id;

  final String name;

  final String icon;

  final _i2.StoryCategoryUncheckedCreateNestedManyWithoutCategoryInput? stories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        'stories': stories,
      };
}

class CategoryCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCreateManyInput({
    this.id,
    required this.name,
    required this.icon,
  });

  final String? id;

  final String name;

  final String icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CreateManyCategoryAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyCategoryAndReturnOutputTypeSelect({
    this.id,
    this.name,
    this.icon,
  });

  final bool? id;

  final bool? name;

  final bool? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class StoryUpdateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUpdateWithoutCategoriesInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? content;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryUncheckedUpdateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUncheckedUpdateWithoutCategoriesInput({
    this.id,
    this.title,
    this.content,
    this.image,
    this.createdAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? content;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createdAt;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'image': image,
        'createdAt': createdAt,
      };
}

class StoryUpsertWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUpsertWithoutCategoriesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.StoryUpdateWithoutCategoriesInput,
      _i2.StoryUncheckedUpdateWithoutCategoriesInput> update;

  final _i1.PrismaUnion<_i2.StoryCreateWithoutCategoriesInput,
      _i2.StoryUncheckedCreateWithoutCategoriesInput> create;

  final _i2.StoryWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class StoryUpdateToOneWithWhereWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUpdateToOneWithWhereWithoutCategoriesInput({
    this.where,
    required this.data,
  });

  final _i2.StoryWhereInput? where;

  final _i1.PrismaUnion<_i2.StoryUpdateWithoutCategoriesInput,
      _i2.StoryUncheckedUpdateWithoutCategoriesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class StoryUpdateOneRequiredWithoutCategoriesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryUpdateOneRequiredWithoutCategoriesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.StoryCreateWithoutCategoriesInput,
      _i2.StoryUncheckedCreateWithoutCategoriesInput>? create;

  final _i2.StoryCreateOrConnectWithoutCategoriesInput? connectOrCreate;

  final _i2.StoryUpsertWithoutCategoriesInput? upsert;

  final _i2.StoryWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.StoryUpdateToOneWithWhereWithoutCategoriesInput,
      _i1.PrismaUnion<_i2.StoryUpdateWithoutCategoriesInput,
          _i2.StoryUncheckedUpdateWithoutCategoriesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class StoryCategoryUpdateWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateWithoutCategoryInput({this.story});

  final _i2.StoryUpdateOneRequiredWithoutCategoriesNestedInput? story;

  @override
  Map<String, dynamic> toJson() => {'story': story};
}

class StoryCategoryUncheckedUpdateWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedUpdateWithoutCategoryInput({this.storyId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? storyId;

  @override
  Map<String, dynamic> toJson() => {'storyId': storyId};
}

class StoryCategoryUpsertWithWhereUniqueWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpsertWithWhereUniqueWithoutCategoryInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.StoryCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateWithoutCategoryInput,
      _i2.StoryCategoryUncheckedUpdateWithoutCategoryInput> update;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateWithoutCategoryInput,
      _i2.StoryCategoryUncheckedCreateWithoutCategoryInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class StoryCategoryUpdateWithWhereUniqueWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateWithWhereUniqueWithoutCategoryInput({
    required this.where,
    required this.data,
  });

  final _i2.StoryCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateWithoutCategoryInput,
      _i2.StoryCategoryUncheckedUpdateWithoutCategoryInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class StoryCategoryUncheckedUpdateManyWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedUpdateManyWithoutCategoryInput({this.storyId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? storyId;

  @override
  Map<String, dynamic> toJson() => {'storyId': storyId};
}

class StoryCategoryUpdateManyWithWhereWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateManyWithWhereWithoutCategoryInput({
    required this.where,
    required this.data,
  });

  final _i2.StoryCategoryScalarWhereInput where;

  final _i1.PrismaUnion<_i2.StoryCategoryUpdateManyMutationInput,
      _i2.StoryCategoryUncheckedUpdateManyWithoutCategoryInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class StoryCategoryUpdateManyWithoutCategoryNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateManyWithoutCategoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.StoryCategoryCreateWithoutCategoryInput,
          _i1.PrismaUnion<
              Iterable<_i2.StoryCategoryCreateWithoutCategoryInput>,
              _i1.PrismaUnion<
                  _i2.StoryCategoryUncheckedCreateWithoutCategoryInput,
                  Iterable<
                      _i2.StoryCategoryUncheckedCreateWithoutCategoryInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateOrConnectWithoutCategoryInput,
          Iterable<_i2.StoryCategoryCreateOrConnectWithoutCategoryInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.StoryCategoryUpsertWithWhereUniqueWithoutCategoryInput,
          Iterable<_i2.StoryCategoryUpsertWithWhereUniqueWithoutCategoryInput>>?
      upsert;

  final _i2.StoryCategoryCreateManyCategoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.StoryCategoryUpdateWithWhereUniqueWithoutCategoryInput,
          Iterable<_i2.StoryCategoryUpdateWithWhereUniqueWithoutCategoryInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.StoryCategoryUpdateManyWithWhereWithoutCategoryInput,
          Iterable<_i2.StoryCategoryUpdateManyWithWhereWithoutCategoryInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.StoryCategoryScalarWhereInput,
      Iterable<_i2.StoryCategoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CategoryUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUpdateInput({
    this.id,
    this.name,
    this.icon,
    this.stories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? icon;

  final _i2.StoryCategoryUpdateManyWithoutCategoryNestedInput? stories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        'stories': stories,
      };
}

class StoryCategoryUncheckedUpdateManyWithoutCategoryNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedUpdateManyWithoutCategoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.StoryCategoryCreateWithoutCategoryInput,
          _i1.PrismaUnion<
              Iterable<_i2.StoryCategoryCreateWithoutCategoryInput>,
              _i1.PrismaUnion<
                  _i2.StoryCategoryUncheckedCreateWithoutCategoryInput,
                  Iterable<
                      _i2.StoryCategoryUncheckedCreateWithoutCategoryInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.StoryCategoryCreateOrConnectWithoutCategoryInput,
          Iterable<_i2.StoryCategoryCreateOrConnectWithoutCategoryInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.StoryCategoryUpsertWithWhereUniqueWithoutCategoryInput,
          Iterable<_i2.StoryCategoryUpsertWithWhereUniqueWithoutCategoryInput>>?
      upsert;

  final _i2.StoryCategoryCreateManyCategoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.StoryCategoryWhereUniqueInput,
      Iterable<_i2.StoryCategoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.StoryCategoryUpdateWithWhereUniqueWithoutCategoryInput,
          Iterable<_i2.StoryCategoryUpdateWithWhereUniqueWithoutCategoryInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.StoryCategoryUpdateManyWithWhereWithoutCategoryInput,
          Iterable<_i2.StoryCategoryUpdateManyWithWhereWithoutCategoryInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.StoryCategoryScalarWhereInput,
      Iterable<_i2.StoryCategoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class CategoryUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUncheckedUpdateInput({
    this.id,
    this.name,
    this.icon,
    this.stories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? icon;

  final _i2.StoryCategoryUncheckedUpdateManyWithoutCategoryNestedInput? stories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        'stories': stories,
      };
}

class CategoryUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUpdateManyMutationInput({
    this.id,
    this.name,
    this.icon,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.icon,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class UpdateManyCategoryAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyCategoryAndReturnOutputTypeSelect({
    this.id,
    this.name,
    this.icon,
  });

  final bool? id;

  final bool? name;

  final bool? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryCountAggregateOutputType {
  const CategoryCountAggregateOutputType({
    this.id,
    this.name,
    this.icon,
    this.$all,
  });

  factory CategoryCountAggregateOutputType.fromJson(Map json) =>
      CategoryCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        icon: json['icon'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? icon;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        '_all': $all,
      };
}

class CategoryMinAggregateOutputType {
  const CategoryMinAggregateOutputType({
    this.id,
    this.name,
    this.icon,
  });

  factory CategoryMinAggregateOutputType.fromJson(Map json) =>
      CategoryMinAggregateOutputType(
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

class CategoryMaxAggregateOutputType {
  const CategoryMaxAggregateOutputType({
    this.id,
    this.name,
    this.icon,
  });

  factory CategoryMaxAggregateOutputType.fromJson(Map json) =>
      CategoryMaxAggregateOutputType(
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

class CategoryGroupByOutputType {
  const CategoryGroupByOutputType({
    this.id,
    this.name,
    this.icon,
    this.$count,
    this.$min,
    this.$max,
  });

  factory CategoryGroupByOutputType.fromJson(Map json) =>
      CategoryGroupByOutputType(
        id: json['id'],
        name: json['name'],
        icon: json['icon'],
        $count: json['_count'] is Map
            ? _i2.CategoryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CategoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CategoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? name;

  final String? icon;

  final _i2.CategoryCountAggregateOutputType? $count;

  final _i2.CategoryMinAggregateOutputType? $min;

  final _i2.CategoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class CategoryCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCountOrderByAggregateInput({
    this.id,
    this.name,
    this.icon,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.icon,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryMinOrderByAggregateInput({
    this.id,
    this.name,
    this.icon,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryOrderByWithAggregationInput({
    this.id,
    this.name,
    this.icon,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? icon;

  final _i2.CategoryCountOrderByAggregateInput? $count;

  final _i2.CategoryMaxOrderByAggregateInput? $max;

  final _i2.CategoryMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class CategoryScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.icon,
  });

  final _i1.PrismaUnion<_i2.CategoryScalarWhereWithAggregatesInput,
      Iterable<_i2.CategoryScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.CategoryScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.CategoryScalarWhereWithAggregatesInput,
      Iterable<_i2.CategoryScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? icon;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.icon,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? icon;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        '_all': $all,
      };
}

class CategoryGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryGroupByOutputTypeCountArgs({this.select});

  final _i2.CategoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CategoryMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.icon,
  });

  final bool? id;

  final bool? name;

  final bool? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryGroupByOutputTypeMinArgs({this.select});

  final _i2.CategoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CategoryMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.icon,
  });

  final bool? id;

  final bool? name;

  final bool? icon;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
      };
}

class CategoryGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryGroupByOutputTypeMaxArgs({this.select});

  final _i2.CategoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CategoryGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CategoryGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.icon,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? icon;

  final _i1.PrismaUnion<bool, _i2.CategoryGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.CategoryGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.CategoryGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'icon': icon,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateCategory {
  const AggregateCategory({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateCategory.fromJson(Map json) => AggregateCategory(
        $count: json['_count'] is Map
            ? _i2.CategoryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CategoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CategoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.CategoryCountAggregateOutputType? $count;

  final _i2.CategoryMinAggregateOutputType? $min;

  final _i2.CategoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateCategoryCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCategoryCountArgs({this.select});

  final _i2.CategoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCategoryMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCategoryMinArgs({this.select});

  final _i2.CategoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCategoryMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCategoryMaxArgs({this.select});

  final _i2.CategoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCategorySelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCategorySelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateCategoryCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateCategoryMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateCategoryMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StoryCategoryCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateInput({
    required this.story,
    required this.category,
  });

  final _i2.StoryCreateNestedOneWithoutCategoriesInput story;

  final _i2.CategoryCreateNestedOneWithoutStoriesInput category;

  @override
  Map<String, dynamic> toJson() => {
        'story': story,
        'category': category,
      };
}

class StoryCategoryUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedCreateInput({
    required this.storyId,
    required this.categoryId,
  });

  final String storyId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCreateManyInput({
    required this.storyId,
    required this.categoryId,
  });

  final String storyId;

  final String categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class CreateManyStoryCategoryAndReturnOutputTypeStoryArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyStoryCategoryAndReturnOutputTypeStoryArgs({
    this.select,
    this.include,
  });

  final _i2.StorySelect? select;

  final _i2.StoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyStoryCategoryAndReturnOutputTypeCategoryArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyStoryCategoryAndReturnOutputTypeCategoryArgs({
    this.select,
    this.include,
  });

  final _i2.CategorySelect? select;

  final _i2.CategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyStoryCategoryAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyStoryCategoryAndReturnOutputTypeSelect({
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  final bool? storyId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyStoryCategoryAndReturnOutputTypeStoryArgs>? story;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyStoryCategoryAndReturnOutputTypeCategoryArgs>? category;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story,
        'category': category,
      };
}

class CreateManyStoryCategoryAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyStoryCategoryAndReturnOutputTypeInclude({
    this.story,
    this.category,
  });

  final _i1.PrismaUnion<bool,
      _i2.CreateManyStoryCategoryAndReturnOutputTypeStoryArgs>? story;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyStoryCategoryAndReturnOutputTypeCategoryArgs>? category;

  @override
  Map<String, dynamic> toJson() => {
        'story': story,
        'category': category,
      };
}

class StoryCategoryUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUpdateInput({
    this.story,
    this.category,
  });

  final _i2.StoryUpdateOneRequiredWithoutCategoriesNestedInput? story;

  final _i2.CategoryUpdateOneRequiredWithoutStoriesNestedInput? category;

  @override
  Map<String, dynamic> toJson() => {
        'story': story,
        'category': category,
      };
}

class StoryCategoryUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedUpdateInput({
    this.storyId,
    this.categoryId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? storyId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryUncheckedUpdateManyInput({
    this.storyId,
    this.categoryId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? storyId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class UpdateManyStoryCategoryAndReturnOutputTypeStoryArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyStoryCategoryAndReturnOutputTypeStoryArgs({
    this.select,
    this.include,
  });

  final _i2.StorySelect? select;

  final _i2.StoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class UpdateManyStoryCategoryAndReturnOutputTypeCategoryArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyStoryCategoryAndReturnOutputTypeCategoryArgs({
    this.select,
    this.include,
  });

  final _i2.CategorySelect? select;

  final _i2.CategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class UpdateManyStoryCategoryAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyStoryCategoryAndReturnOutputTypeSelect({
    this.storyId,
    this.categoryId,
    this.story,
    this.category,
  });

  final bool? storyId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool,
      _i2.UpdateManyStoryCategoryAndReturnOutputTypeStoryArgs>? story;

  final _i1.PrismaUnion<bool,
      _i2.UpdateManyStoryCategoryAndReturnOutputTypeCategoryArgs>? category;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        'story': story,
        'category': category,
      };
}

class UpdateManyStoryCategoryAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyStoryCategoryAndReturnOutputTypeInclude({
    this.story,
    this.category,
  });

  final _i1.PrismaUnion<bool,
      _i2.UpdateManyStoryCategoryAndReturnOutputTypeStoryArgs>? story;

  final _i1.PrismaUnion<bool,
      _i2.UpdateManyStoryCategoryAndReturnOutputTypeCategoryArgs>? category;

  @override
  Map<String, dynamic> toJson() => {
        'story': story,
        'category': category,
      };
}

class StoryCategoryCountAggregateOutputType {
  const StoryCategoryCountAggregateOutputType({
    this.storyId,
    this.categoryId,
    this.$all,
  });

  factory StoryCategoryCountAggregateOutputType.fromJson(Map json) =>
      StoryCategoryCountAggregateOutputType(
        storyId: json['storyId'],
        categoryId: json['categoryId'],
        $all: json['_all'],
      );

  final int? storyId;

  final int? categoryId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        '_all': $all,
      };
}

class StoryCategoryMinAggregateOutputType {
  const StoryCategoryMinAggregateOutputType({
    this.storyId,
    this.categoryId,
  });

  factory StoryCategoryMinAggregateOutputType.fromJson(Map json) =>
      StoryCategoryMinAggregateOutputType(
        storyId: json['storyId'],
        categoryId: json['categoryId'],
      );

  final String? storyId;

  final String? categoryId;

  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryMaxAggregateOutputType {
  const StoryCategoryMaxAggregateOutputType({
    this.storyId,
    this.categoryId,
  });

  factory StoryCategoryMaxAggregateOutputType.fromJson(Map json) =>
      StoryCategoryMaxAggregateOutputType(
        storyId: json['storyId'],
        categoryId: json['categoryId'],
      );

  final String? storyId;

  final String? categoryId;

  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryGroupByOutputType {
  const StoryCategoryGroupByOutputType({
    this.storyId,
    this.categoryId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StoryCategoryGroupByOutputType.fromJson(Map json) =>
      StoryCategoryGroupByOutputType(
        storyId: json['storyId'],
        categoryId: json['categoryId'],
        $count: json['_count'] is Map
            ? _i2.StoryCategoryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.StoryCategoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.StoryCategoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? storyId;

  final String? categoryId;

  final _i2.StoryCategoryCountAggregateOutputType? $count;

  final _i2.StoryCategoryMinAggregateOutputType? $min;

  final _i2.StoryCategoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class StoryCategoryCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCountOrderByAggregateInput({
    this.storyId,
    this.categoryId,
  });

  final _i2.SortOrder? storyId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryMaxOrderByAggregateInput({
    this.storyId,
    this.categoryId,
  });

  final _i2.SortOrder? storyId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryMinOrderByAggregateInput({
    this.storyId,
    this.categoryId,
  });

  final _i2.SortOrder? storyId;

  final _i2.SortOrder? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryOrderByWithAggregationInput({
    this.storyId,
    this.categoryId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? storyId;

  final _i2.SortOrder? categoryId;

  final _i2.StoryCategoryCountOrderByAggregateInput? $count;

  final _i2.StoryCategoryMaxOrderByAggregateInput? $max;

  final _i2.StoryCategoryMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class StoryCategoryScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.storyId,
    this.categoryId,
  });

  final _i1.PrismaUnion<_i2.StoryCategoryScalarWhereWithAggregatesInput,
      Iterable<_i2.StoryCategoryScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.StoryCategoryScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.StoryCategoryScalarWhereWithAggregatesInput,
      Iterable<_i2.StoryCategoryScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? storyId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryCountAggregateOutputTypeSelect({
    this.storyId,
    this.categoryId,
    this.$all,
  });

  final bool? storyId;

  final bool? categoryId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        '_all': $all,
      };
}

class StoryCategoryGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryGroupByOutputTypeCountArgs({this.select});

  final _i2.StoryCategoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoryCategoryMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryMinAggregateOutputTypeSelect({
    this.storyId,
    this.categoryId,
  });

  final bool? storyId;

  final bool? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryGroupByOutputTypeMinArgs({this.select});

  final _i2.StoryCategoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoryCategoryMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryMaxAggregateOutputTypeSelect({
    this.storyId,
    this.categoryId,
  });

  final bool? storyId;

  final bool? categoryId;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
      };
}

class StoryCategoryGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryGroupByOutputTypeMaxArgs({this.select});

  final _i2.StoryCategoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoryCategoryGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoryCategoryGroupByOutputTypeSelect({
    this.storyId,
    this.categoryId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? storyId;

  final bool? categoryId;

  final _i1.PrismaUnion<bool, _i2.StoryCategoryGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.StoryCategoryGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.StoryCategoryGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'storyId': storyId,
        'categoryId': categoryId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateStoryCategory {
  const AggregateStoryCategory({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateStoryCategory.fromJson(Map json) => AggregateStoryCategory(
        $count: json['_count'] is Map
            ? _i2.StoryCategoryCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.StoryCategoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.StoryCategoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.StoryCategoryCountAggregateOutputType? $count;

  final _i2.StoryCategoryMinAggregateOutputType? $min;

  final _i2.StoryCategoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateStoryCategoryCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoryCategoryCountArgs({this.select});

  final _i2.StoryCategoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoryCategoryMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoryCategoryMinArgs({this.select});

  final _i2.StoryCategoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoryCategoryMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoryCategoryMaxArgs({this.select});

  final _i2.StoryCategoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoryCategorySelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoryCategorySelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateStoryCategoryCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateStoryCategoryMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateStoryCategoryMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
