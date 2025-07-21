import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$GetChat {
  factory Variables$Query$GetChat({required String chatId}) =>
      Variables$Query$GetChat._({
        r'chatId': chatId,
      });

  Variables$Query$GetChat._(this._$data);

  factory Variables$Query$GetChat.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$chatId = data['chatId'];
    result$data['chatId'] = (l$chatId as String);
    return Variables$Query$GetChat._(result$data);
  }

  Map<String, dynamic> _$data;

  String get chatId => (_$data['chatId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$chatId = chatId;
    result$data['chatId'] = l$chatId;
    return result$data;
  }

  CopyWith$Variables$Query$GetChat<Variables$Query$GetChat> get copyWith =>
      CopyWith$Variables$Query$GetChat(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetChat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$chatId = chatId;
    final lOther$chatId = other.chatId;
    if (l$chatId != lOther$chatId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$chatId = chatId;
    return Object.hashAll([l$chatId]);
  }
}

abstract class CopyWith$Variables$Query$GetChat<TRes> {
  factory CopyWith$Variables$Query$GetChat(
    Variables$Query$GetChat instance,
    TRes Function(Variables$Query$GetChat) then,
  ) = _CopyWithImpl$Variables$Query$GetChat;

  factory CopyWith$Variables$Query$GetChat.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetChat;

  TRes call({String? chatId});
}

class _CopyWithImpl$Variables$Query$GetChat<TRes>
    implements CopyWith$Variables$Query$GetChat<TRes> {
  _CopyWithImpl$Variables$Query$GetChat(
    this._instance,
    this._then,
  );

  final Variables$Query$GetChat _instance;

  final TRes Function(Variables$Query$GetChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? chatId = _undefined}) => _then(Variables$Query$GetChat._({
        ..._instance._$data,
        if (chatId != _undefined && chatId != null)
          'chatId': (chatId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetChat<TRes>
    implements CopyWith$Variables$Query$GetChat<TRes> {
  _CopyWithStubImpl$Variables$Query$GetChat(this._res);

  TRes _res;

  call({String? chatId}) => _res;
}

class Query$GetChat {
  Query$GetChat({
    this.getChat,
    this.$__typename = 'Query',
  });

  factory Query$GetChat.fromJson(Map<String, dynamic> json) {
    final l$getChat = json['getChat'];
    final l$$__typename = json['__typename'];
    return Query$GetChat(
      getChat: l$getChat == null
          ? null
          : Query$GetChat$getChat.fromJson((l$getChat as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetChat$getChat? getChat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getChat = getChat;
    _resultData['getChat'] = l$getChat?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getChat = getChat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getChat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetChat || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getChat = getChat;
    final lOther$getChat = other.getChat;
    if (l$getChat != lOther$getChat) {
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

extension UtilityExtension$Query$GetChat on Query$GetChat {
  CopyWith$Query$GetChat<Query$GetChat> get copyWith => CopyWith$Query$GetChat(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetChat<TRes> {
  factory CopyWith$Query$GetChat(
    Query$GetChat instance,
    TRes Function(Query$GetChat) then,
  ) = _CopyWithImpl$Query$GetChat;

  factory CopyWith$Query$GetChat.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChat;

  TRes call({
    Query$GetChat$getChat? getChat,
    String? $__typename,
  });
  CopyWith$Query$GetChat$getChat<TRes> get getChat;
}

class _CopyWithImpl$Query$GetChat<TRes>
    implements CopyWith$Query$GetChat<TRes> {
  _CopyWithImpl$Query$GetChat(
    this._instance,
    this._then,
  );

  final Query$GetChat _instance;

  final TRes Function(Query$GetChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getChat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChat(
        getChat: getChat == _undefined
            ? _instance.getChat
            : (getChat as Query$GetChat$getChat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetChat$getChat<TRes> get getChat {
    final local$getChat = _instance.getChat;
    return local$getChat == null
        ? CopyWith$Query$GetChat$getChat.stub(_then(_instance))
        : CopyWith$Query$GetChat$getChat(
            local$getChat, (e) => call(getChat: e));
  }
}

class _CopyWithStubImpl$Query$GetChat<TRes>
    implements CopyWith$Query$GetChat<TRes> {
  _CopyWithStubImpl$Query$GetChat(this._res);

  TRes _res;

  call({
    Query$GetChat$getChat? getChat,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetChat$getChat<TRes> get getChat =>
      CopyWith$Query$GetChat$getChat.stub(_res);
}

const documentNodeQueryGetChat = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetChat'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'chatId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getChat'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'chatId'),
            value: VariableNode(name: NameNode(value: 'chatId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'lastMessageId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
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
]);
Query$GetChat _parserFn$Query$GetChat(Map<String, dynamic> data) =>
    Query$GetChat.fromJson(data);
typedef OnQueryComplete$Query$GetChat = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetChat?,
);

class Options$Query$GetChat extends graphql.QueryOptions<Query$GetChat> {
  Options$Query$GetChat({
    String? operationName,
    required Variables$Query$GetChat variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetChat? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetChat? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$GetChat(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetChat,
          parserFn: _parserFn$Query$GetChat,
        );

  final OnQueryComplete$Query$GetChat? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetChat
    extends graphql.WatchQueryOptions<Query$GetChat> {
  WatchOptions$Query$GetChat({
    String? operationName,
    required Variables$Query$GetChat variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetChat? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetChat,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetChat,
        );
}

class FetchMoreOptions$Query$GetChat extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetChat({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetChat variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetChat,
        );
}

extension ClientExtension$Query$GetChat on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetChat>> query$GetChat(
          Options$Query$GetChat options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetChat> watchQuery$GetChat(
          WatchOptions$Query$GetChat options) =>
      this.watchQuery(options);
  void writeQuery$GetChat({
    required Query$GetChat data,
    required Variables$Query$GetChat variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetChat),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetChat? readQuery$GetChat({
    required Variables$Query$GetChat variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetChat),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetChat.fromJson(result);
  }
}

class Query$GetChat$getChat {
  Query$GetChat$getChat({
    required this.name,
    required this.memberIds,
    required this.isGroup,
    this.lastMessageId,
    required this.id,
    required this.updatedAt,
    this.$__typename = 'Chat',
  });

  factory Query$GetChat$getChat.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$memberIds = json['memberIds'];
    final l$isGroup = json['isGroup'];
    final l$lastMessageId = json['lastMessageId'];
    final l$id = json['id'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$GetChat$getChat(
      name: (l$name as String),
      memberIds:
          (l$memberIds as List<dynamic>).map((e) => (e as String)).toList(),
      isGroup: (l$isGroup as bool),
      lastMessageId: (l$lastMessageId as String?),
      id: (l$id as String),
      updatedAt: DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<String> memberIds;

  final bool isGroup;

  final String? lastMessageId;

  final String id;

  final DateTime updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$memberIds = memberIds;
    _resultData['memberIds'] = l$memberIds.map((e) => e).toList();
    final l$isGroup = isGroup;
    _resultData['isGroup'] = l$isGroup;
    final l$lastMessageId = lastMessageId;
    _resultData['lastMessageId'] = l$lastMessageId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$memberIds = memberIds;
    final l$isGroup = isGroup;
    final l$lastMessageId = lastMessageId;
    final l$id = id;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$memberIds.map((v) => v)),
      l$isGroup,
      l$lastMessageId,
      l$id,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetChat$getChat || runtimeType != other.runtimeType) {
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
    final l$lastMessageId = lastMessageId;
    final lOther$lastMessageId = other.lastMessageId;
    if (l$lastMessageId != lOther$lastMessageId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetChat$getChat on Query$GetChat$getChat {
  CopyWith$Query$GetChat$getChat<Query$GetChat$getChat> get copyWith =>
      CopyWith$Query$GetChat$getChat(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetChat$getChat<TRes> {
  factory CopyWith$Query$GetChat$getChat(
    Query$GetChat$getChat instance,
    TRes Function(Query$GetChat$getChat) then,
  ) = _CopyWithImpl$Query$GetChat$getChat;

  factory CopyWith$Query$GetChat$getChat.stub(TRes res) =
      _CopyWithStubImpl$Query$GetChat$getChat;

  TRes call({
    String? name,
    List<String>? memberIds,
    bool? isGroup,
    String? lastMessageId,
    String? id,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetChat$getChat<TRes>
    implements CopyWith$Query$GetChat$getChat<TRes> {
  _CopyWithImpl$Query$GetChat$getChat(
    this._instance,
    this._then,
  );

  final Query$GetChat$getChat _instance;

  final TRes Function(Query$GetChat$getChat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? memberIds = _undefined,
    Object? isGroup = _undefined,
    Object? lastMessageId = _undefined,
    Object? id = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetChat$getChat(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        memberIds: memberIds == _undefined || memberIds == null
            ? _instance.memberIds
            : (memberIds as List<String>),
        isGroup: isGroup == _undefined || isGroup == null
            ? _instance.isGroup
            : (isGroup as bool),
        lastMessageId: lastMessageId == _undefined
            ? _instance.lastMessageId
            : (lastMessageId as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetChat$getChat<TRes>
    implements CopyWith$Query$GetChat$getChat<TRes> {
  _CopyWithStubImpl$Query$GetChat$getChat(this._res);

  TRes _res;

  call({
    String? name,
    List<String>? memberIds,
    bool? isGroup,
    String? lastMessageId,
    String? id,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;
}
