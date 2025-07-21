import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$GetChats {
  factory Variables$Query$GetChats({
    int? first,
    String? after,
  }) =>
      Variables$Query$GetChats._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
      });

  Variables$Query$GetChats._(this._$data);

  factory Variables$Query$GetChats.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$GetChats._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetChats<Variables$Query$GetChats> get copyWith =>
      CopyWith$Variables$Query$GetChats(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetChats ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetChats<TRes> {
  factory CopyWith$Variables$Query$GetChats(
    Variables$Query$GetChats instance,
    TRes Function(Variables$Query$GetChats) then,
  ) = _CopyWithImpl$Variables$Query$GetChats;

  factory CopyWith$Variables$Query$GetChats.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetChats;

  TRes call({
    int? first,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$GetChats<TRes>
    implements CopyWith$Variables$Query$GetChats<TRes> {
  _CopyWithImpl$Variables$Query$GetChats(
    this._instance,
    this._then,
  );

  final Variables$Query$GetChats _instance;

  final TRes Function(Variables$Query$GetChats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$GetChats._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetChats<TRes>
    implements CopyWith$Variables$Query$GetChats<TRes> {
  _CopyWithStubImpl$Variables$Query$GetChats(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
  }) =>
      _res;
}

class Query$GetChats {
  Query$GetChats({
    required this.getChats,
    this.$__typename = 'Query',
  });

  factory Query$GetChats.fromJson(Map<String, dynamic> json) {
    final l$getChats = json['getChats'];
    final l$$__typename = json['__typename'];
    return Query$GetChats(
      getChats: Query$GetChats$getChats.fromJson(
          (l$getChats as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetChats$getChats getChats;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getChats = getChats;
    _resultData['getChats'] = l$getChats.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getChats = getChats;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getChats,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetChats || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getChats = getChats;
    final lOther$getChats = other.getChats;
    if (l$getChats != lOther$getChats) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetChats on Query$GetChats {
  CopyWith$Query$GetChats<Query$GetChats> get copyWith =>
      CopyWith$Query$GetChats(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetChats<TRes> {
  factory CopyWith$Query$GetChats(
    Query$GetChats instance,
    TRes Function(Query$GetChats) then,
  ) = _CopyWithImpl$Query$GetChats;

  factory CopyWith$Query$GetChats.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChats;

  TRes call({
    Query$GetChats$getChats? getChats,
    String? $__typename,
  });
  CopyWith$Query$GetChats$getChats<TRes> get getChats;
}

class _CopyWithImpl$Query$GetChats<TRes>
    implements CopyWith$Query$GetChats<TRes> {
  _CopyWithImpl$Query$GetChats(
    this._instance,
    this._then,
  );

  final Query$GetChats _instance;

  final TRes Function(Query$GetChats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getChats = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChats(
        getChats: getChats == _undefined || getChats == null
            ? _instance.getChats
            : (getChats as Query$GetChats$getChats),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetChats$getChats<TRes> get getChats {
    final local$getChats = _instance.getChats;
    return CopyWith$Query$GetChats$getChats(
        local$getChats, (e) => call(getChats: e));
  }
}

class _CopyWithStubImpl$Query$GetChats<TRes>
    implements CopyWith$Query$GetChats<TRes> {
  _CopyWithStubImpl$Query$GetChats(this._res);

  TRes _res;

  call({
    Query$GetChats$getChats? getChats,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetChats$getChats<TRes> get getChats =>
      CopyWith$Query$GetChats$getChats.stub(_res);
}

const documentNodeQueryGetChats = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetChats'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getChats'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'cursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'memberIds'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isGroup'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'updatedAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'startCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetChats _parserFn$Query$GetChats(Map<String, dynamic> data) =>
    Query$GetChats.fromJson(data);
typedef OnQueryComplete$Query$GetChats = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetChats?,
);

class Options$Query$GetChats extends graphql.QueryOptions<Query$GetChats> {
  Options$Query$GetChats({
    String? operationName,
    Variables$Query$GetChats? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetChats? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetChats? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetChats(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetChats,
          parserFn: _parserFn$Query$GetChats,
        );

  final OnQueryComplete$Query$GetChats? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetChats
    extends graphql.WatchQueryOptions<Query$GetChats> {
  WatchOptions$Query$GetChats({
    String? operationName,
    Variables$Query$GetChats? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetChats? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetChats,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetChats,
        );
}

class FetchMoreOptions$Query$GetChats extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetChats({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetChats? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetChats,
        );
}

extension ClientExtension$Query$GetChats on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetChats>> query$GetChats(
          [Options$Query$GetChats? options]) async =>
      await this.query(options ?? Options$Query$GetChats());
  graphql.ObservableQuery<Query$GetChats> watchQuery$GetChats(
          [WatchOptions$Query$GetChats? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetChats());
  void writeQuery$GetChats({
    required Query$GetChats data,
    Variables$Query$GetChats? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetChats),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetChats? readQuery$GetChats({
    Variables$Query$GetChats? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetChats),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetChats.fromJson(result);
  }
}

class Query$GetChats$getChats {
  Query$GetChats$getChats({
    required this.edges,
    required this.pageInfo,
    required this.totalCount,
    this.$__typename = 'ChatConnection',
  });

  factory Query$GetChats$getChats.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$GetChats$getChats(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$GetChats$getChats$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$GetChats$getChats$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetChats$getChats$edges> edges;

  final Query$GetChats$getChats$pageInfo pageInfo;

  final double totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetChats$getChats || runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetChats$getChats on Query$GetChats$getChats {
  CopyWith$Query$GetChats$getChats<Query$GetChats$getChats> get copyWith =>
      CopyWith$Query$GetChats$getChats(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetChats$getChats<TRes> {
  factory CopyWith$Query$GetChats$getChats(
    Query$GetChats$getChats instance,
    TRes Function(Query$GetChats$getChats) then,
  ) = _CopyWithImpl$Query$GetChats$getChats;

  factory CopyWith$Query$GetChats$getChats.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChats$getChats;

  TRes call({
    List<Query$GetChats$getChats$edges>? edges,
    Query$GetChats$getChats$pageInfo? pageInfo,
    double? totalCount,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$GetChats$getChats$edges> Function(
              Iterable<
                  CopyWith$Query$GetChats$getChats$edges<
                      Query$GetChats$getChats$edges>>)
          _fn);
  CopyWith$Query$GetChats$getChats$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetChats$getChats<TRes>
    implements CopyWith$Query$GetChats$getChats<TRes> {
  _CopyWithImpl$Query$GetChats$getChats(
    this._instance,
    this._then,
  );

  final Query$GetChats$getChats _instance;

  final TRes Function(Query$GetChats$getChats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChats$getChats(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$GetChats$getChats$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetChats$getChats$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$GetChats$getChats$edges> Function(
                  Iterable<
                      CopyWith$Query$GetChats$getChats$edges<
                          Query$GetChats$getChats$edges>>)
              _fn) =>
      call(
          edges: _fn(
              _instance.edges.map((e) => CopyWith$Query$GetChats$getChats$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$GetChats$getChats$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetChats$getChats$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetChats$getChats<TRes>
    implements CopyWith$Query$GetChats$getChats<TRes> {
  _CopyWithStubImpl$Query$GetChats$getChats(this._res);

  TRes _res;

  call({
    List<Query$GetChats$getChats$edges>? edges,
    Query$GetChats$getChats$pageInfo? pageInfo,
    double? totalCount,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$GetChats$getChats$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetChats$getChats$pageInfo.stub(_res);
}

class Query$GetChats$getChats$edges {
  Query$GetChats$getChats$edges({
    required this.cursor,
    required this.node,
    this.$__typename = 'ChatEdge',
  });

  factory Query$GetChats$getChats$edges.fromJson(Map<String, dynamic> json) {
    final l$cursor = json['cursor'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetChats$getChats$edges(
      cursor: (l$cursor as String),
      node: Query$GetChats$getChats$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final Query$GetChats$getChats$edges$node node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cursor,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetChats$getChats$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetChats$getChats$edges
    on Query$GetChats$getChats$edges {
  CopyWith$Query$GetChats$getChats$edges<Query$GetChats$getChats$edges>
      get copyWith => CopyWith$Query$GetChats$getChats$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetChats$getChats$edges<TRes> {
  factory CopyWith$Query$GetChats$getChats$edges(
    Query$GetChats$getChats$edges instance,
    TRes Function(Query$GetChats$getChats$edges) then,
  ) = _CopyWithImpl$Query$GetChats$getChats$edges;

  factory CopyWith$Query$GetChats$getChats$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChats$getChats$edges;

  TRes call({
    String? cursor,
    Query$GetChats$getChats$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetChats$getChats$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetChats$getChats$edges<TRes>
    implements CopyWith$Query$GetChats$getChats$edges<TRes> {
  _CopyWithImpl$Query$GetChats$getChats$edges(
    this._instance,
    this._then,
  );

  final Query$GetChats$getChats$edges _instance;

  final TRes Function(Query$GetChats$getChats$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChats$getChats$edges(
        cursor: cursor == _undefined || cursor == null
            ? _instance.cursor
            : (cursor as String),
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$GetChats$getChats$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetChats$getChats$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetChats$getChats$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetChats$getChats$edges<TRes>
    implements CopyWith$Query$GetChats$getChats$edges<TRes> {
  _CopyWithStubImpl$Query$GetChats$getChats$edges(this._res);

  TRes _res;

  call({
    String? cursor,
    Query$GetChats$getChats$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetChats$getChats$edges$node<TRes> get node =>
      CopyWith$Query$GetChats$getChats$edges$node.stub(_res);
}

class Query$GetChats$getChats$edges$node {
  Query$GetChats$getChats$edges$node({
    required this.id,
    required this.name,
    required this.memberIds,
    required this.isGroup,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'Chat',
  });

  factory Query$GetChats$getChats$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$memberIds = json['memberIds'];
    final l$isGroup = json['isGroup'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$GetChats$getChats$edges$node(
      id: (l$id as String),
      name: (l$name as String),
      memberIds:
          (l$memberIds as List<dynamic>).map((e) => (e as String)).toList(),
      isGroup: (l$isGroup as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final List<String> memberIds;

  final bool isGroup;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$memberIds = memberIds;
    _resultData['memberIds'] = l$memberIds.map((e) => e).toList();
    final l$isGroup = isGroup;
    _resultData['isGroup'] = l$isGroup;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$memberIds = memberIds;
    final l$isGroup = isGroup;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$memberIds.map((v) => v)),
      l$isGroup,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetChats$getChats$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$memberIds = memberIds;
    final lOther$memberIds = other.memberIds;
    if (l$memberIds.length != lOther$memberIds.length) {
      return false;
    }
    for (int i = 0; i < l$memberIds.length; i++) {
      final l$memberIds$entry = l$memberIds[i];
      final lOther$memberIds$entry = lOther$memberIds[i];
      if (l$memberIds$entry != lOther$memberIds$entry) {
        return false;
      }
    }
    final l$isGroup = isGroup;
    final lOther$isGroup = other.isGroup;
    if (l$isGroup != lOther$isGroup) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetChats$getChats$edges$node
    on Query$GetChats$getChats$edges$node {
  CopyWith$Query$GetChats$getChats$edges$node<
          Query$GetChats$getChats$edges$node>
      get copyWith => CopyWith$Query$GetChats$getChats$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetChats$getChats$edges$node<TRes> {
  factory CopyWith$Query$GetChats$getChats$edges$node(
    Query$GetChats$getChats$edges$node instance,
    TRes Function(Query$GetChats$getChats$edges$node) then,
  ) = _CopyWithImpl$Query$GetChats$getChats$edges$node;

  factory CopyWith$Query$GetChats$getChats$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChats$getChats$edges$node;

  TRes call({
    String? id,
    String? name,
    List<String>? memberIds,
    bool? isGroup,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetChats$getChats$edges$node<TRes>
    implements CopyWith$Query$GetChats$getChats$edges$node<TRes> {
  _CopyWithImpl$Query$GetChats$getChats$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetChats$getChats$edges$node _instance;

  final TRes Function(Query$GetChats$getChats$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? memberIds = _undefined,
    Object? isGroup = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChats$getChats$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        memberIds: memberIds == _undefined || memberIds == null
            ? _instance.memberIds
            : (memberIds as List<String>),
        isGroup: isGroup == _undefined || isGroup == null
            ? _instance.isGroup
            : (isGroup as bool),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetChats$getChats$edges$node<TRes>
    implements CopyWith$Query$GetChats$getChats$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetChats$getChats$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<String>? memberIds,
    bool? isGroup,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetChats$getChats$pageInfo {
  Query$GetChats$getChats$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetChats$getChats$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$GetChats$getChats$pageInfo(
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? startCursor;

  final String? endCursor;

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startCursor,
      l$endCursor,
      l$hasNextPage,
      l$hasPreviousPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetChats$getChats$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetChats$getChats$pageInfo
    on Query$GetChats$getChats$pageInfo {
  CopyWith$Query$GetChats$getChats$pageInfo<Query$GetChats$getChats$pageInfo>
      get copyWith => CopyWith$Query$GetChats$getChats$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetChats$getChats$pageInfo<TRes> {
  factory CopyWith$Query$GetChats$getChats$pageInfo(
    Query$GetChats$getChats$pageInfo instance,
    TRes Function(Query$GetChats$getChats$pageInfo) then,
  ) = _CopyWithImpl$Query$GetChats$getChats$pageInfo;

  factory CopyWith$Query$GetChats$getChats$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChats$getChats$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetChats$getChats$pageInfo<TRes>
    implements CopyWith$Query$GetChats$getChats$pageInfo<TRes> {
  _CopyWithImpl$Query$GetChats$getChats$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetChats$getChats$pageInfo _instance;

  final TRes Function(Query$GetChats$getChats$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChats$getChats$pageInfo(
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetChats$getChats$pageInfo<TRes>
    implements CopyWith$Query$GetChats$getChats$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetChats$getChats$pageInfo(this._res);

  TRes _res;

  call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  }) =>
      _res;
}
