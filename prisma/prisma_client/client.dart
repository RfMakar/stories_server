// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class StoryDelegate {
  const StoryDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Story?> findUnique({
    required _i3.StoryWhereUniqueInput where,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Story?>(
      action: 'findUniqueStory',
      result: result,
      factory: (e) => e != null ? _i2.Story.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Story> findUniqueOrThrow({
    required _i3.StoryWhereUniqueInput where,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Story>(
      action: 'findUniqueStoryOrThrow',
      result: result,
      factory: (e) => _i2.Story.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Story?> findFirst({
    _i3.StoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryOrderByWithRelationInput>,
            _i3.StoryOrderByWithRelationInput>?
        orderBy,
    _i3.StoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoryScalar, Iterable<_i3.StoryScalar>>? distinct,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Story?>(
      action: 'findFirstStory',
      result: result,
      factory: (e) => e != null ? _i2.Story.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Story> findFirstOrThrow({
    _i3.StoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryOrderByWithRelationInput>,
            _i3.StoryOrderByWithRelationInput>?
        orderBy,
    _i3.StoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoryScalar, Iterable<_i3.StoryScalar>>? distinct,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Story>(
      action: 'findFirstStoryOrThrow',
      result: result,
      factory: (e) => _i2.Story.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Story>> findMany({
    _i3.StoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryOrderByWithRelationInput>,
            _i3.StoryOrderByWithRelationInput>?
        orderBy,
    _i3.StoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoryScalar, Iterable<_i3.StoryScalar>>? distinct,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Story>>(
      action: 'findManyStory',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Story.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Story> create({
    required _i1
        .PrismaUnion<_i3.StoryCreateInput, _i3.StoryUncheckedCreateInput>
        data,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Story>(
      action: 'createOneStory',
      result: result,
      factory: (e) => _i2.Story.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.StoryCreateManyInput,
              Iterable<_i3.StoryCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyStory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyStoryAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.StoryCreateManyInput,
            Iterable<_i3.StoryCreateManyInput>>
        data,
    _i3.CreateManyStoryAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyStoryAndReturnOutputType>>(
      action: 'createManyStoryAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyStoryAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Story?> update({
    required _i1
        .PrismaUnion<_i3.StoryUpdateInput, _i3.StoryUncheckedUpdateInput>
        data,
    required _i3.StoryWhereUniqueInput where,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Story?>(
      action: 'updateOneStory',
      result: result,
      factory: (e) => e != null ? _i2.Story.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.StoryUpdateManyMutationInput,
            _i3.StoryUncheckedUpdateManyInput>
        data,
    _i3.StoryWhereInput? where,
    int? limit,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyStory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.UpdateManyStoryAndReturnOutputType>>
      updateManyAndReturn({
    required _i1.PrismaUnion<_i3.StoryUpdateManyMutationInput,
            _i3.StoryUncheckedUpdateManyInput>
        data,
    _i3.StoryWhereInput? where,
    int? limit,
    _i3.UpdateManyStoryAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.updateManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.UpdateManyStoryAndReturnOutputType>>(
      action: 'updateManyStoryAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.UpdateManyStoryAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Story> upsert({
    required _i3.StoryWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.StoryCreateInput, _i3.StoryUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.StoryUpdateInput, _i3.StoryUncheckedUpdateInput>
        update,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Story>(
      action: 'upsertOneStory',
      result: result,
      factory: (e) => _i2.Story.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Story?> delete({
    required _i3.StoryWhereUniqueInput where,
    _i3.StorySelect? select,
    _i3.StoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Story?>(
      action: 'deleteOneStory',
      result: result,
      factory: (e) => e != null ? _i2.Story.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.StoryWhereInput? where,
    int? limit,
  }) {
    final args = {
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyStory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.StoryGroupByOutputType>> groupBy({
    _i3.StoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryOrderByWithAggregationInput>,
            _i3.StoryOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.StoryScalar>, _i3.StoryScalar> by,
    _i3.StoryScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.StoryGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.StoryGroupByOutputType>>(
      action: 'groupByStory',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.StoryGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateStory> aggregate({
    _i3.StoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryOrderByWithRelationInput>,
            _i3.StoryOrderByWithRelationInput>?
        orderBy,
    _i3.StoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateStorySelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Story',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateStory>(
      action: 'aggregateStory',
      result: result,
      factory: (e) => _i3.AggregateStory.fromJson(e),
    );
  }
}

class CategoryDelegate {
  const CategoryDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Category?> findUnique({
    required _i3.CategoryWhereUniqueInput where,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Category?>(
      action: 'findUniqueCategory',
      result: result,
      factory: (e) => e != null ? _i2.Category.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Category> findUniqueOrThrow({
    required _i3.CategoryWhereUniqueInput where,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Category>(
      action: 'findUniqueCategoryOrThrow',
      result: result,
      factory: (e) => _i2.Category.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Category?> findFirst({
    _i3.CategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryOrderByWithRelationInput>,
            _i3.CategoryOrderByWithRelationInput>?
        orderBy,
    _i3.CategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CategoryScalar, Iterable<_i3.CategoryScalar>>? distinct,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Category?>(
      action: 'findFirstCategory',
      result: result,
      factory: (e) => e != null ? _i2.Category.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Category> findFirstOrThrow({
    _i3.CategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryOrderByWithRelationInput>,
            _i3.CategoryOrderByWithRelationInput>?
        orderBy,
    _i3.CategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CategoryScalar, Iterable<_i3.CategoryScalar>>? distinct,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Category>(
      action: 'findFirstCategoryOrThrow',
      result: result,
      factory: (e) => _i2.Category.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Category>> findMany({
    _i3.CategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryOrderByWithRelationInput>,
            _i3.CategoryOrderByWithRelationInput>?
        orderBy,
    _i3.CategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CategoryScalar, Iterable<_i3.CategoryScalar>>? distinct,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Category>>(
      action: 'findManyCategory',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Category.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Category> create({
    required _i1
        .PrismaUnion<_i3.CategoryCreateInput, _i3.CategoryUncheckedCreateInput>
        data,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Category>(
      action: 'createOneCategory',
      result: result,
      factory: (e) => _i2.Category.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.CategoryCreateManyInput,
              Iterable<_i3.CategoryCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyCategoryAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.CategoryCreateManyInput,
            Iterable<_i3.CategoryCreateManyInput>>
        data,
    _i3.CreateManyCategoryAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyCategoryAndReturnOutputType>>(
      action: 'createManyCategoryAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyCategoryAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Category?> update({
    required _i1
        .PrismaUnion<_i3.CategoryUpdateInput, _i3.CategoryUncheckedUpdateInput>
        data,
    required _i3.CategoryWhereUniqueInput where,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Category?>(
      action: 'updateOneCategory',
      result: result,
      factory: (e) => e != null ? _i2.Category.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.CategoryUpdateManyMutationInput,
            _i3.CategoryUncheckedUpdateManyInput>
        data,
    _i3.CategoryWhereInput? where,
    int? limit,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.UpdateManyCategoryAndReturnOutputType>>
      updateManyAndReturn({
    required _i1.PrismaUnion<_i3.CategoryUpdateManyMutationInput,
            _i3.CategoryUncheckedUpdateManyInput>
        data,
    _i3.CategoryWhereInput? where,
    int? limit,
    _i3.UpdateManyCategoryAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.updateManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.UpdateManyCategoryAndReturnOutputType>>(
      action: 'updateManyCategoryAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.UpdateManyCategoryAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Category> upsert({
    required _i3.CategoryWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.CategoryCreateInput, _i3.CategoryUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.CategoryUpdateInput, _i3.CategoryUncheckedUpdateInput>
        update,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Category>(
      action: 'upsertOneCategory',
      result: result,
      factory: (e) => _i2.Category.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Category?> delete({
    required _i3.CategoryWhereUniqueInput where,
    _i3.CategorySelect? select,
    _i3.CategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Category?>(
      action: 'deleteOneCategory',
      result: result,
      factory: (e) => e != null ? _i2.Category.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.CategoryWhereInput? where,
    int? limit,
  }) {
    final args = {
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.CategoryGroupByOutputType>> groupBy({
    _i3.CategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryOrderByWithAggregationInput>,
            _i3.CategoryOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.CategoryScalar>, _i3.CategoryScalar>
        by,
    _i3.CategoryScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.CategoryGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.CategoryGroupByOutputType>>(
      action: 'groupByCategory',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.CategoryGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateCategory> aggregate({
    _i3.CategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CategoryOrderByWithRelationInput>,
            _i3.CategoryOrderByWithRelationInput>?
        orderBy,
    _i3.CategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateCategorySelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Category',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateCategory>(
      action: 'aggregateCategory',
      result: result,
      factory: (e) => _i3.AggregateCategory.fromJson(e),
    );
  }
}

class StoryCategoryDelegate {
  const StoryCategoryDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.StoryCategory?> findUnique({
    required _i3.StoryCategoryWhereUniqueInput where,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoryCategory?>(
      action: 'findUniqueStoryCategory',
      result: result,
      factory: (e) => e != null ? _i2.StoryCategory.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.StoryCategory> findUniqueOrThrow({
    required _i3.StoryCategoryWhereUniqueInput where,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoryCategory>(
      action: 'findUniqueStoryCategoryOrThrow',
      result: result,
      factory: (e) => _i2.StoryCategory.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.StoryCategory?> findFirst({
    _i3.StoryCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryCategoryOrderByWithRelationInput>,
            _i3.StoryCategoryOrderByWithRelationInput>?
        orderBy,
    _i3.StoryCategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoryCategoryScalar, Iterable<_i3.StoryCategoryScalar>>?
        distinct,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoryCategory?>(
      action: 'findFirstStoryCategory',
      result: result,
      factory: (e) => e != null ? _i2.StoryCategory.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.StoryCategory> findFirstOrThrow({
    _i3.StoryCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryCategoryOrderByWithRelationInput>,
            _i3.StoryCategoryOrderByWithRelationInput>?
        orderBy,
    _i3.StoryCategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoryCategoryScalar, Iterable<_i3.StoryCategoryScalar>>?
        distinct,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoryCategory>(
      action: 'findFirstStoryCategoryOrThrow',
      result: result,
      factory: (e) => _i2.StoryCategory.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.StoryCategory>> findMany({
    _i3.StoryCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryCategoryOrderByWithRelationInput>,
            _i3.StoryCategoryOrderByWithRelationInput>?
        orderBy,
    _i3.StoryCategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoryCategoryScalar, Iterable<_i3.StoryCategoryScalar>>?
        distinct,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.StoryCategory>>(
      action: 'findManyStoryCategory',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.StoryCategory.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.StoryCategory> create({
    required _i1.PrismaUnion<_i3.StoryCategoryCreateInput,
            _i3.StoryCategoryUncheckedCreateInput>
        data,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoryCategory>(
      action: 'createOneStoryCategory',
      result: result,
      factory: (e) => _i2.StoryCategory.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.StoryCategoryCreateManyInput,
              Iterable<_i3.StoryCategoryCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyStoryCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyStoryCategoryAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.StoryCategoryCreateManyInput,
            Iterable<_i3.StoryCategoryCreateManyInput>>
        data,
    _i3.CreateManyStoryCategoryAndReturnOutputTypeSelect? select,
    _i3.CreateManyStoryCategoryAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyStoryCategoryAndReturnOutputType>>(
      action: 'createManyStoryCategoryAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyStoryCategoryAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.StoryCategory?> update({
    required _i1.PrismaUnion<_i3.StoryCategoryUpdateInput,
            _i3.StoryCategoryUncheckedUpdateInput>
        data,
    required _i3.StoryCategoryWhereUniqueInput where,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoryCategory?>(
      action: 'updateOneStoryCategory',
      result: result,
      factory: (e) => e != null ? _i2.StoryCategory.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.StoryCategoryUpdateManyMutationInput,
            _i3.StoryCategoryUncheckedUpdateManyInput>
        data,
    _i3.StoryCategoryWhereInput? where,
    int? limit,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyStoryCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.UpdateManyStoryCategoryAndReturnOutputType>>
      updateManyAndReturn({
    required _i1.PrismaUnion<_i3.StoryCategoryUpdateManyMutationInput,
            _i3.StoryCategoryUncheckedUpdateManyInput>
        data,
    _i3.StoryCategoryWhereInput? where,
    int? limit,
    _i3.UpdateManyStoryCategoryAndReturnOutputTypeSelect? select,
    _i3.UpdateManyStoryCategoryAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.updateManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.UpdateManyStoryCategoryAndReturnOutputType>>(
      action: 'updateManyStoryCategoryAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.UpdateManyStoryCategoryAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.StoryCategory> upsert({
    required _i3.StoryCategoryWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.StoryCategoryCreateInput,
            _i3.StoryCategoryUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.StoryCategoryUpdateInput,
            _i3.StoryCategoryUncheckedUpdateInput>
        update,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoryCategory>(
      action: 'upsertOneStoryCategory',
      result: result,
      factory: (e) => _i2.StoryCategory.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.StoryCategory?> delete({
    required _i3.StoryCategoryWhereUniqueInput where,
    _i3.StoryCategorySelect? select,
    _i3.StoryCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoryCategory?>(
      action: 'deleteOneStoryCategory',
      result: result,
      factory: (e) => e != null ? _i2.StoryCategory.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.StoryCategoryWhereInput? where,
    int? limit,
  }) {
    final args = {
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyStoryCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.StoryCategoryGroupByOutputType>> groupBy({
    _i3.StoryCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryCategoryOrderByWithAggregationInput>,
            _i3.StoryCategoryOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.StoryCategoryScalar>, _i3.StoryCategoryScalar>
        by,
    _i3.StoryCategoryScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.StoryCategoryGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.StoryCategoryGroupByOutputType>>(
      action: 'groupByStoryCategory',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.StoryCategoryGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateStoryCategory> aggregate({
    _i3.StoryCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoryCategoryOrderByWithRelationInput>,
            _i3.StoryCategoryOrderByWithRelationInput>?
        orderBy,
    _i3.StoryCategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateStoryCategorySelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoryCategory',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateStoryCategory>(
      action: 'aggregateStoryCategory',
      result: result,
      factory: (e) => _i3.AggregateStoryCategory.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [],
    'models': [
      {
        'name': 'Story',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'nativeType': null,
            'default': {
              'name': 'uuid',
              'args': [4],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'content',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'image',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'nativeType': null,
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'categories',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'StoryCategory',
            'nativeType': null,
            'relationName': 'StoryToStoryCategory',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Category',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'nativeType': null,
            'default': {
              'name': 'uuid',
              'args': [4],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'icon',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'stories',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'StoryCategory',
            'nativeType': null,
            'relationName': 'CategoryToStoryCategory',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'StoryCategory',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'storyId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'categoryId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'story',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Story',
            'nativeType': null,
            'relationName': 'StoryToStoryCategory',
            'relationFromFields': ['storyId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'category',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Category',
            'nativeType': null,
            'relationName': 'CategoryToStoryCategory',
            'relationFromFields': ['categoryId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': {
          'name': null,
          'fields': [
            'storyId',
            'categoryId',
          ],
        },
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'Story',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Category',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Category',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'name'}
        ],
      },
      {
        'model': 'StoryCategory',
        'type': 'id',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'storyId'},
          {'name': 'categoryId'},
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
        schema:
            'generator client {\n  provider = "dart run orm"\n  output   = "../prisma/prisma_client"\n}\n\ndatasource db {\n  provider = "sqlite"\n  url      = "file:./dev.sqlite"\n}\n\nmodel Story {\n  id        String   @id @default(uuid())\n  title     String\n  content   String\n  image     String\n  createdAt DateTime @default(now())\n\n  categories StoryCategory[]\n}\n\nmodel Category {\n  id   String @id @default(uuid())\n  name String @unique\n  icon String\n\n  stories StoryCategory[]\n}\n\nmodel StoryCategory {\n  storyId    String\n  categoryId String\n\n  story    Story    @relation(fields: [storyId], references: [id], onDelete: Cascade)\n  category Category @relation(fields: [categoryId], references: [id], onDelete: Cascade)\n\n  @@id([storyId, categoryId])\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.url,
            'file:./dev.sqlite',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  StoryDelegate get story => StoryDelegate._(this);

  CategoryDelegate get category => CategoryDelegate._(this);

  StoryCategoryDelegate get storyCategory => StoryCategoryDelegate._(this);
}
