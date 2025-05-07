// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class StoriesDelegate {
  const StoriesDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Stories?> findUnique({
    required _i3.StoriesWhereUniqueInput where,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Stories?>(
      action: 'findUniqueStories',
      result: result,
      factory: (e) => e != null ? _i2.Stories.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Stories> findUniqueOrThrow({
    required _i3.StoriesWhereUniqueInput where,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Stories>(
      action: 'findUniqueStoriesOrThrow',
      result: result,
      factory: (e) => _i2.Stories.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Stories?> findFirst({
    _i3.StoriesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoriesOrderByWithRelationInput>,
            _i3.StoriesOrderByWithRelationInput>?
        orderBy,
    _i3.StoriesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoriesScalar, Iterable<_i3.StoriesScalar>>? distinct,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Stories?>(
      action: 'findFirstStories',
      result: result,
      factory: (e) => e != null ? _i2.Stories.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Stories> findFirstOrThrow({
    _i3.StoriesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoriesOrderByWithRelationInput>,
            _i3.StoriesOrderByWithRelationInput>?
        orderBy,
    _i3.StoriesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoriesScalar, Iterable<_i3.StoriesScalar>>? distinct,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Stories>(
      action: 'findFirstStoriesOrThrow',
      result: result,
      factory: (e) => _i2.Stories.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Stories>> findMany({
    _i3.StoriesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoriesOrderByWithRelationInput>,
            _i3.StoriesOrderByWithRelationInput>?
        orderBy,
    _i3.StoriesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoriesScalar, Iterable<_i3.StoriesScalar>>? distinct,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Stories>>(
      action: 'findManyStories',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Stories.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Stories> create({
    required _i1
        .PrismaUnion<_i3.StoriesCreateInput, _i3.StoriesUncheckedCreateInput>
        data,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Stories>(
      action: 'createOneStories',
      result: result,
      factory: (e) => _i2.Stories.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.StoriesCreateManyInput,
              Iterable<_i3.StoriesCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyStories',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyStoriesAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.StoriesCreateManyInput,
            Iterable<_i3.StoriesCreateManyInput>>
        data,
    _i3.CreateManyStoriesAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyStoriesAndReturnOutputType>>(
      action: 'createManyStoriesAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyStoriesAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Stories?> update({
    required _i1
        .PrismaUnion<_i3.StoriesUpdateInput, _i3.StoriesUncheckedUpdateInput>
        data,
    required _i3.StoriesWhereUniqueInput where,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Stories?>(
      action: 'updateOneStories',
      result: result,
      factory: (e) => e != null ? _i2.Stories.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.StoriesUpdateManyMutationInput,
            _i3.StoriesUncheckedUpdateManyInput>
        data,
    _i3.StoriesWhereInput? where,
    int? limit,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyStories',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.UpdateManyStoriesAndReturnOutputType>>
      updateManyAndReturn({
    required _i1.PrismaUnion<_i3.StoriesUpdateManyMutationInput,
            _i3.StoriesUncheckedUpdateManyInput>
        data,
    _i3.StoriesWhereInput? where,
    int? limit,
    _i3.UpdateManyStoriesAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.updateManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.UpdateManyStoriesAndReturnOutputType>>(
      action: 'updateManyStoriesAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.UpdateManyStoriesAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Stories> upsert({
    required _i3.StoriesWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.StoriesCreateInput, _i3.StoriesUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.StoriesUpdateInput, _i3.StoriesUncheckedUpdateInput>
        update,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Stories>(
      action: 'upsertOneStories',
      result: result,
      factory: (e) => _i2.Stories.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Stories?> delete({
    required _i3.StoriesWhereUniqueInput where,
    _i3.StoriesSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Stories?>(
      action: 'deleteOneStories',
      result: result,
      factory: (e) => e != null ? _i2.Stories.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.StoriesWhereInput? where,
    int? limit,
  }) {
    final args = {
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Stories',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyStories',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.StoriesGroupByOutputType>> groupBy({
    _i3.StoriesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoriesOrderByWithAggregationInput>,
            _i3.StoriesOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.StoriesScalar>, _i3.StoriesScalar> by,
    _i3.StoriesScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.StoriesGroupByOutputTypeSelect? select,
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
      modelName: 'Stories',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.StoriesGroupByOutputType>>(
      action: 'groupByStories',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.StoriesGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateStories> aggregate({
    _i3.StoriesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoriesOrderByWithRelationInput>,
            _i3.StoriesOrderByWithRelationInput>?
        orderBy,
    _i3.StoriesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateStoriesSelect? select,
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
      modelName: 'Stories',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateStories>(
      action: 'aggregateStories',
      result: result,
      factory: (e) => _i3.AggregateStories.fromJson(e),
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
        'name': 'Stories',
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
            'type': 'Int',
            'nativeType': null,
            'default': {
              'name': 'autoincrement',
              'args': [],
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
            'name': 'text',
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
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      }
    ],
    'types': [],
    'indexes': [
      {
        'model': 'Stories',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      }
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
            '// This is your Prisma schema file,\n// learn more about it in the docs: https://pris.ly/d/prisma-schema\n\ngenerator client {\n  provider = "dart run orm"\n}\n\ndatasource db {\n  provider = "sqlite"\n  url      = "file:./prisma/dev.sqlite"\n}\n\nmodel Stories {\n  id    Int    @id @default(autoincrement())\n  title String\n  text  String\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.url,
            'file:./prisma/dev.sqlite',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  StoriesDelegate get stories => StoriesDelegate._(this);
}
