// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

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

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
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

class StoriesWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.text,
  });

  final _i1.PrismaUnion<_i2.StoriesWhereInput, Iterable<_i2.StoriesWhereInput>>?
      AND;

  final Iterable<_i2.StoriesWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoriesWhereInput, Iterable<_i2.StoriesWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringFilter, String>? text;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.title,
    this.text,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.StoriesWhereInput, Iterable<_i2.StoriesWhereInput>>?
      AND;

  final Iterable<_i2.StoriesWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoriesWhereInput, Iterable<_i2.StoriesWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringFilter, String>? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'title': title,
        'text': text,
      };
}

class StoriesSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesSelect({
    this.id,
    this.title,
    this.text,
  });

  final bool? id;

  final bool? title;

  final bool? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class StoriesOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesOrderByWithRelationInput({
    this.id,
    this.title,
    this.text,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

enum StoriesScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Stories'),
  title<String>('title', 'Stories'),
  text<String>('text', 'Stories');

  const StoriesScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class StoriesCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesCreateInput({
    required this.title,
    required this.text,
  });

  final String title;

  final String text;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'text': text,
      };
}

class StoriesUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesUncheckedCreateInput({
    this.id,
    required this.title,
    required this.text,
  });

  final int? id;

  final String title;

  final String text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class StoriesCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesCreateManyInput({
    this.id,
    required this.title,
    required this.text,
  });

  final int? id;

  final String title;

  final String text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class CreateManyStoriesAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyStoriesAndReturnOutputTypeSelect({
    this.id,
    this.title,
    this.text,
  });

  final bool? id;

  final bool? title;

  final bool? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class StoriesUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesUpdateInput({
    this.title,
    this.text,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? text;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'text': text,
      };
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class StoriesUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesUncheckedUpdateInput({
    this.id,
    this.title,
    this.text,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesUpdateManyMutationInput({
    this.title,
    this.text,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? text;

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'text': text,
      };
}

class StoriesUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesUncheckedUpdateManyInput({
    this.id,
    this.title,
    this.text,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? title;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class UpdateManyStoriesAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyStoriesAndReturnOutputTypeSelect({
    this.id,
    this.title,
    this.text,
  });

  final bool? id;

  final bool? title;

  final bool? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesCountAggregateOutputType {
  const StoriesCountAggregateOutputType({
    this.id,
    this.title,
    this.text,
    this.$all,
  });

  factory StoriesCountAggregateOutputType.fromJson(Map json) =>
      StoriesCountAggregateOutputType(
        id: json['id'],
        title: json['title'],
        text: json['text'],
        $all: json['_all'],
      );

  final int? id;

  final int? title;

  final int? text;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
        '_all': $all,
      };
}

class StoriesAvgAggregateOutputType {
  const StoriesAvgAggregateOutputType({this.id});

  factory StoriesAvgAggregateOutputType.fromJson(Map json) =>
      StoriesAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class StoriesSumAggregateOutputType {
  const StoriesSumAggregateOutputType({this.id});

  factory StoriesSumAggregateOutputType.fromJson(Map json) =>
      StoriesSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class StoriesMinAggregateOutputType {
  const StoriesMinAggregateOutputType({
    this.id,
    this.title,
    this.text,
  });

  factory StoriesMinAggregateOutputType.fromJson(Map json) =>
      StoriesMinAggregateOutputType(
        id: json['id'],
        title: json['title'],
        text: json['text'],
      );

  final int? id;

  final String? title;

  final String? text;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesMaxAggregateOutputType {
  const StoriesMaxAggregateOutputType({
    this.id,
    this.title,
    this.text,
  });

  factory StoriesMaxAggregateOutputType.fromJson(Map json) =>
      StoriesMaxAggregateOutputType(
        id: json['id'],
        title: json['title'],
        text: json['text'],
      );

  final int? id;

  final String? title;

  final String? text;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesGroupByOutputType {
  const StoriesGroupByOutputType({
    this.id,
    this.title,
    this.text,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory StoriesGroupByOutputType.fromJson(Map json) =>
      StoriesGroupByOutputType(
        id: json['id'],
        title: json['title'],
        text: json['text'],
        $count: json['_count'] is Map
            ? _i2.StoriesCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.StoriesAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.StoriesSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.StoriesMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.StoriesMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? title;

  final String? text;

  final _i2.StoriesCountAggregateOutputType? $count;

  final _i2.StoriesAvgAggregateOutputType? $avg;

  final _i2.StoriesSumAggregateOutputType? $sum;

  final _i2.StoriesMinAggregateOutputType? $min;

  final _i2.StoriesMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class StoriesCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesCountOrderByAggregateInput({
    this.id,
    this.title,
    this.text,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class StoriesMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.text,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesMinOrderByAggregateInput({
    this.id,
    this.title,
    this.text,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class StoriesOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesOrderByWithAggregationInput({
    this.id,
    this.title,
    this.text,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? title;

  final _i2.SortOrder? text;

  final _i2.StoriesCountOrderByAggregateInput? $count;

  final _i2.StoriesAvgOrderByAggregateInput? $avg;

  final _i2.StoriesMaxOrderByAggregateInput? $max;

  final _i2.StoriesMinOrderByAggregateInput? $min;

  final _i2.StoriesSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

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

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

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
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

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
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
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

class StoriesScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.text,
  });

  final _i1.PrismaUnion<_i2.StoriesScalarWhereWithAggregatesInput,
      Iterable<_i2.StoriesScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.StoriesScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.StoriesScalarWhereWithAggregatesInput,
      Iterable<_i2.StoriesScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? title;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? text;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesCountAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.text,
    this.$all,
  });

  final bool? id;

  final bool? title;

  final bool? text;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
        '_all': $all,
      };
}

class StoriesGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesGroupByOutputTypeCountArgs({this.select});

  final _i2.StoriesCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoriesAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class StoriesGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesGroupByOutputTypeAvgArgs({this.select});

  final _i2.StoriesAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoriesSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class StoriesGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesGroupByOutputTypeSumArgs({this.select});

  final _i2.StoriesSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoriesMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesMinAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.text,
  });

  final bool? id;

  final bool? title;

  final bool? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesGroupByOutputTypeMinArgs({this.select});

  final _i2.StoriesMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoriesMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesMaxAggregateOutputTypeSelect({
    this.id,
    this.title,
    this.text,
  });

  final bool? id;

  final bool? title;

  final bool? text;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
      };
}

class StoriesGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesGroupByOutputTypeMaxArgs({this.select});

  final _i2.StoriesMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoriesGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoriesGroupByOutputTypeSelect({
    this.id,
    this.title,
    this.text,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? title;

  final bool? text;

  final _i1.PrismaUnion<bool, _i2.StoriesGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.StoriesGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.StoriesGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.StoriesGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.StoriesGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'text': text,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateStories {
  const AggregateStories({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateStories.fromJson(Map json) => AggregateStories(
        $count: json['_count'] is Map
            ? _i2.StoriesCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.StoriesAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.StoriesSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.StoriesMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.StoriesMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.StoriesCountAggregateOutputType? $count;

  final _i2.StoriesAvgAggregateOutputType? $avg;

  final _i2.StoriesSumAggregateOutputType? $sum;

  final _i2.StoriesMinAggregateOutputType? $min;

  final _i2.StoriesMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateStoriesCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoriesCountArgs({this.select});

  final _i2.StoriesCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoriesAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoriesAvgArgs({this.select});

  final _i2.StoriesAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoriesSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoriesSumArgs({this.select});

  final _i2.StoriesSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoriesMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoriesMinArgs({this.select});

  final _i2.StoriesMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoriesMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoriesMaxArgs({this.select});

  final _i2.StoriesMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoriesSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoriesSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateStoriesCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateStoriesAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateStoriesSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateStoriesMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateStoriesMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
