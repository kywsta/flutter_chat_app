import '../../../../core/graphql/schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$SendMessage {
  factory Variables$Mutation$SendMessage(
          {required Input$SendMessageInput sendMessageInput}) =>
      Variables$Mutation$SendMessage._({
        r'sendMessageInput': sendMessageInput,
      });

  Variables$Mutation$SendMessage._(this._$data);

  factory Variables$Mutation$SendMessage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$sendMessageInput = data['sendMessageInput'];
    result$data['sendMessageInput'] = Input$SendMessageInput.fromJson(
        (l$sendMessageInput as Map<String, dynamic>));
    return Variables$Mutation$SendMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SendMessageInput get sendMessageInput =>
      (_$data['sendMessageInput'] as Input$SendMessageInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sendMessageInput = sendMessageInput;
    result$data['sendMessageInput'] = l$sendMessageInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SendMessage<Variables$Mutation$SendMessage>
      get copyWith => CopyWith$Variables$Mutation$SendMessage(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SendMessage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sendMessageInput = sendMessageInput;
    final lOther$sendMessageInput = other.sendMessageInput;
    if (l$sendMessageInput != lOther$sendMessageInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sendMessageInput = sendMessageInput;
    return Object.hashAll([l$sendMessageInput]);
  }
}

abstract class CopyWith$Variables$Mutation$SendMessage<TRes> {
  factory CopyWith$Variables$Mutation$SendMessage(
    Variables$Mutation$SendMessage instance,
    TRes Function(Variables$Mutation$SendMessage) then,
  ) = _CopyWithImpl$Variables$Mutation$SendMessage;

  factory CopyWith$Variables$Mutation$SendMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendMessage;

  TRes call({Input$SendMessageInput? sendMessageInput});
}

class _CopyWithImpl$Variables$Mutation$SendMessage<TRes>
    implements CopyWith$Variables$Mutation$SendMessage<TRes> {
  _CopyWithImpl$Variables$Mutation$SendMessage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendMessage _instance;

  final TRes Function(Variables$Mutation$SendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sendMessageInput = _undefined}) =>
      _then(Variables$Mutation$SendMessage._({
        ..._instance._$data,
        if (sendMessageInput != _undefined && sendMessageInput != null)
          'sendMessageInput': (sendMessageInput as Input$SendMessageInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendMessage<TRes>
    implements CopyWith$Variables$Mutation$SendMessage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendMessage(this._res);

  TRes _res;

  call({Input$SendMessageInput? sendMessageInput}) => _res;
}

class Mutation$SendMessage {
  Mutation$SendMessage({
    required this.sendMessage,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendMessage.fromJson(Map<String, dynamic> json) {
    final l$sendMessage = json['sendMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$SendMessage(
      sendMessage: Mutation$SendMessage$sendMessage.fromJson(
          (l$sendMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SendMessage$sendMessage sendMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sendMessage = sendMessage;
    _resultData['sendMessage'] = l$sendMessage.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sendMessage = sendMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sendMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendMessage || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sendMessage = sendMessage;
    final lOther$sendMessage = other.sendMessage;
    if (l$sendMessage != lOther$sendMessage) {
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

extension UtilityExtension$Mutation$SendMessage on Mutation$SendMessage {
  CopyWith$Mutation$SendMessage<Mutation$SendMessage> get copyWith =>
      CopyWith$Mutation$SendMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendMessage<TRes> {
  factory CopyWith$Mutation$SendMessage(
    Mutation$SendMessage instance,
    TRes Function(Mutation$SendMessage) then,
  ) = _CopyWithImpl$Mutation$SendMessage;

  factory CopyWith$Mutation$SendMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendMessage;

  TRes call({
    Mutation$SendMessage$sendMessage? sendMessage,
    String? $__typename,
  });
  CopyWith$Mutation$SendMessage$sendMessage<TRes> get sendMessage;
}

class _CopyWithImpl$Mutation$SendMessage<TRes>
    implements CopyWith$Mutation$SendMessage<TRes> {
  _CopyWithImpl$Mutation$SendMessage(
    this._instance,
    this._then,
  );

  final Mutation$SendMessage _instance;

  final TRes Function(Mutation$SendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sendMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendMessage(
        sendMessage: sendMessage == _undefined || sendMessage == null
            ? _instance.sendMessage
            : (sendMessage as Mutation$SendMessage$sendMessage),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SendMessage$sendMessage<TRes> get sendMessage {
    final local$sendMessage = _instance.sendMessage;
    return CopyWith$Mutation$SendMessage$sendMessage(
        local$sendMessage, (e) => call(sendMessage: e));
  }
}

class _CopyWithStubImpl$Mutation$SendMessage<TRes>
    implements CopyWith$Mutation$SendMessage<TRes> {
  _CopyWithStubImpl$Mutation$SendMessage(this._res);

  TRes _res;

  call({
    Mutation$SendMessage$sendMessage? sendMessage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SendMessage$sendMessage<TRes> get sendMessage =>
      CopyWith$Mutation$SendMessage$sendMessage.stub(_res);
}

const documentNodeMutationSendMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendMessage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sendMessageInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'SendMessageInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sendMessage'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'sendMessageInput')),
          )
        ],
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
            name: NameNode(value: 'createdAt'),
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
Mutation$SendMessage _parserFn$Mutation$SendMessage(
        Map<String, dynamic> data) =>
    Mutation$SendMessage.fromJson(data);
typedef OnMutationCompleted$Mutation$SendMessage = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendMessage?,
);

class Options$Mutation$SendMessage
    extends graphql.MutationOptions<Mutation$SendMessage> {
  Options$Mutation$SendMessage({
    String? operationName,
    required Variables$Mutation$SendMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendMessage? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendMessage>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$SendMessage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendMessage,
          parserFn: _parserFn$Mutation$SendMessage,
        );

  final OnMutationCompleted$Mutation$SendMessage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendMessage
    extends graphql.WatchQueryOptions<Mutation$SendMessage> {
  WatchOptions$Mutation$SendMessage({
    String? operationName,
    required Variables$Mutation$SendMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
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
          document: documentNodeMutationSendMessage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendMessage,
        );
}

extension ClientExtension$Mutation$SendMessage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendMessage>> mutate$SendMessage(
          Options$Mutation$SendMessage options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendMessage> watchMutation$SendMessage(
          WatchOptions$Mutation$SendMessage options) =>
      this.watchMutation(options);
}

class Mutation$SendMessage$sendMessage {
  Mutation$SendMessage$sendMessage({
    required this.id,
    required this.createdAt,
    this.$__typename = 'Message',
  });

  factory Mutation$SendMessage$sendMessage.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Mutation$SendMessage$sendMessage(
      id: (l$id as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendMessage$sendMessage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Mutation$SendMessage$sendMessage
    on Mutation$SendMessage$sendMessage {
  CopyWith$Mutation$SendMessage$sendMessage<Mutation$SendMessage$sendMessage>
      get copyWith => CopyWith$Mutation$SendMessage$sendMessage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendMessage$sendMessage<TRes> {
  factory CopyWith$Mutation$SendMessage$sendMessage(
    Mutation$SendMessage$sendMessage instance,
    TRes Function(Mutation$SendMessage$sendMessage) then,
  ) = _CopyWithImpl$Mutation$SendMessage$sendMessage;

  factory CopyWith$Mutation$SendMessage$sendMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendMessage$sendMessage;

  TRes call({
    String? id,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SendMessage$sendMessage<TRes>
    implements CopyWith$Mutation$SendMessage$sendMessage<TRes> {
  _CopyWithImpl$Mutation$SendMessage$sendMessage(
    this._instance,
    this._then,
  );

  final Mutation$SendMessage$sendMessage _instance;

  final TRes Function(Mutation$SendMessage$sendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendMessage$sendMessage(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendMessage$sendMessage<TRes>
    implements CopyWith$Mutation$SendMessage$sendMessage<TRes> {
  _CopyWithStubImpl$Mutation$SendMessage$sendMessage(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}
