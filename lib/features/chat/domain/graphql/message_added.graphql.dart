import 'dart:async';
import 'message_fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Subscription$MessageAdded {
  factory Variables$Subscription$MessageAdded({required String chatId}) =>
      Variables$Subscription$MessageAdded._({
        r'chatId': chatId,
      });

  Variables$Subscription$MessageAdded._(this._$data);

  factory Variables$Subscription$MessageAdded.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$chatId = data['chatId'];
    result$data['chatId'] = (l$chatId as String);
    return Variables$Subscription$MessageAdded._(result$data);
  }

  Map<String, dynamic> _$data;

  String get chatId => (_$data['chatId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$chatId = chatId;
    result$data['chatId'] = l$chatId;
    return result$data;
  }

  CopyWith$Variables$Subscription$MessageAdded<
          Variables$Subscription$MessageAdded>
      get copyWith => CopyWith$Variables$Subscription$MessageAdded(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Subscription$MessageAdded ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Subscription$MessageAdded<TRes> {
  factory CopyWith$Variables$Subscription$MessageAdded(
    Variables$Subscription$MessageAdded instance,
    TRes Function(Variables$Subscription$MessageAdded) then,
  ) = _CopyWithImpl$Variables$Subscription$MessageAdded;

  factory CopyWith$Variables$Subscription$MessageAdded.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$MessageAdded;

  TRes call({String? chatId});
}

class _CopyWithImpl$Variables$Subscription$MessageAdded<TRes>
    implements CopyWith$Variables$Subscription$MessageAdded<TRes> {
  _CopyWithImpl$Variables$Subscription$MessageAdded(
    this._instance,
    this._then,
  );

  final Variables$Subscription$MessageAdded _instance;

  final TRes Function(Variables$Subscription$MessageAdded) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? chatId = _undefined}) =>
      _then(Variables$Subscription$MessageAdded._({
        ..._instance._$data,
        if (chatId != _undefined && chatId != null)
          'chatId': (chatId as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$MessageAdded<TRes>
    implements CopyWith$Variables$Subscription$MessageAdded<TRes> {
  _CopyWithStubImpl$Variables$Subscription$MessageAdded(this._res);

  TRes _res;

  call({String? chatId}) => _res;
}

class Subscription$MessageAdded {
  Subscription$MessageAdded({required this.messageAdded});

  factory Subscription$MessageAdded.fromJson(Map<String, dynamic> json) {
    final l$messageAdded = json['messageAdded'];
    return Subscription$MessageAdded(
        messageAdded: Fragment$message.fromJson(
            (l$messageAdded as Map<String, dynamic>)));
  }

  final Fragment$message messageAdded;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$messageAdded = messageAdded;
    _resultData['messageAdded'] = l$messageAdded.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$messageAdded = messageAdded;
    return Object.hashAll([l$messageAdded]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$MessageAdded ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$messageAdded = messageAdded;
    final lOther$messageAdded = other.messageAdded;
    if (l$messageAdded != lOther$messageAdded) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$MessageAdded
    on Subscription$MessageAdded {
  CopyWith$Subscription$MessageAdded<Subscription$MessageAdded> get copyWith =>
      CopyWith$Subscription$MessageAdded(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$MessageAdded<TRes> {
  factory CopyWith$Subscription$MessageAdded(
    Subscription$MessageAdded instance,
    TRes Function(Subscription$MessageAdded) then,
  ) = _CopyWithImpl$Subscription$MessageAdded;

  factory CopyWith$Subscription$MessageAdded.stub(TRes res) =
      _CopyWithStubImpl$Subscription$MessageAdded;

  TRes call({Fragment$message? messageAdded});
  CopyWith$Fragment$message<TRes> get messageAdded;
}

class _CopyWithImpl$Subscription$MessageAdded<TRes>
    implements CopyWith$Subscription$MessageAdded<TRes> {
  _CopyWithImpl$Subscription$MessageAdded(
    this._instance,
    this._then,
  );

  final Subscription$MessageAdded _instance;

  final TRes Function(Subscription$MessageAdded) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? messageAdded = _undefined}) => _then(
      Subscription$MessageAdded(
          messageAdded: messageAdded == _undefined || messageAdded == null
              ? _instance.messageAdded
              : (messageAdded as Fragment$message)));

  CopyWith$Fragment$message<TRes> get messageAdded {
    final local$messageAdded = _instance.messageAdded;
    return CopyWith$Fragment$message(
        local$messageAdded, (e) => call(messageAdded: e));
  }
}

class _CopyWithStubImpl$Subscription$MessageAdded<TRes>
    implements CopyWith$Subscription$MessageAdded<TRes> {
  _CopyWithStubImpl$Subscription$MessageAdded(this._res);

  TRes _res;

  call({Fragment$message? messageAdded}) => _res;

  CopyWith$Fragment$message<TRes> get messageAdded =>
      CopyWith$Fragment$message.stub(_res);
}

const documentNodeSubscriptionMessageAdded = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'MessageAdded'),
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
        name: NameNode(value: 'messageAdded'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'chatId'),
            value: VariableNode(name: NameNode(value: 'chatId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'message'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionmessage,
]);
Subscription$MessageAdded _parserFn$Subscription$MessageAdded(
        Map<String, dynamic> data) =>
    Subscription$MessageAdded.fromJson(data);

class Options$Subscription$MessageAdded
    extends graphql.SubscriptionOptions<Subscription$MessageAdded> {
  Options$Subscription$MessageAdded({
    String? operationName,
    required Variables$Subscription$MessageAdded variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$MessageAdded? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionMessageAdded,
          parserFn: _parserFn$Subscription$MessageAdded,
        );
}

class WatchOptions$Subscription$MessageAdded
    extends graphql.WatchQueryOptions<Subscription$MessageAdded> {
  WatchOptions$Subscription$MessageAdded({
    String? operationName,
    required Variables$Subscription$MessageAdded variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$MessageAdded? typedOptimisticResult,
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
          document: documentNodeSubscriptionMessageAdded,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$MessageAdded,
        );
}

class FetchMoreOptions$Subscription$MessageAdded
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$MessageAdded({
    required graphql.UpdateQuery updateQuery,
    required Variables$Subscription$MessageAdded variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeSubscriptionMessageAdded,
        );
}

extension ClientExtension$Subscription$MessageAdded on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$MessageAdded>> subscribe$MessageAdded(
          Options$Subscription$MessageAdded options) =>
      this.subscribe(options);
  graphql.ObservableQuery<Subscription$MessageAdded>
      watchSubscription$MessageAdded(
              WatchOptions$Subscription$MessageAdded options) =>
          this.watchQuery(options);
}
