import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$SetTypingStatus {
  factory Variables$Mutation$SetTypingStatus({
    required String chatId,
    required bool isTyping,
  }) =>
      Variables$Mutation$SetTypingStatus._({
        r'chatId': chatId,
        r'isTyping': isTyping,
      });

  Variables$Mutation$SetTypingStatus._(this._$data);

  factory Variables$Mutation$SetTypingStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$chatId = data['chatId'];
    result$data['chatId'] = (l$chatId as String);
    final l$isTyping = data['isTyping'];
    result$data['isTyping'] = (l$isTyping as bool);
    return Variables$Mutation$SetTypingStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get chatId => (_$data['chatId'] as String);

  bool get isTyping => (_$data['isTyping'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$chatId = chatId;
    result$data['chatId'] = l$chatId;
    final l$isTyping = isTyping;
    result$data['isTyping'] = l$isTyping;
    return result$data;
  }

  CopyWith$Variables$Mutation$SetTypingStatus<
          Variables$Mutation$SetTypingStatus>
      get copyWith => CopyWith$Variables$Mutation$SetTypingStatus(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SetTypingStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$chatId = chatId;
    final lOther$chatId = other.chatId;
    if (l$chatId != lOther$chatId) {
      return false;
    }
    final l$isTyping = isTyping;
    final lOther$isTyping = other.isTyping;
    if (l$isTyping != lOther$isTyping) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$chatId = chatId;
    final l$isTyping = isTyping;
    return Object.hashAll([
      l$chatId,
      l$isTyping,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SetTypingStatus<TRes> {
  factory CopyWith$Variables$Mutation$SetTypingStatus(
    Variables$Mutation$SetTypingStatus instance,
    TRes Function(Variables$Mutation$SetTypingStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$SetTypingStatus;

  factory CopyWith$Variables$Mutation$SetTypingStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetTypingStatus;

  TRes call({
    String? chatId,
    bool? isTyping,
  });
}

class _CopyWithImpl$Variables$Mutation$SetTypingStatus<TRes>
    implements CopyWith$Variables$Mutation$SetTypingStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$SetTypingStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetTypingStatus _instance;

  final TRes Function(Variables$Mutation$SetTypingStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? chatId = _undefined,
    Object? isTyping = _undefined,
  }) =>
      _then(Variables$Mutation$SetTypingStatus._({
        ..._instance._$data,
        if (chatId != _undefined && chatId != null)
          'chatId': (chatId as String),
        if (isTyping != _undefined && isTyping != null)
          'isTyping': (isTyping as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetTypingStatus<TRes>
    implements CopyWith$Variables$Mutation$SetTypingStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetTypingStatus(this._res);

  TRes _res;

  call({
    String? chatId,
    bool? isTyping,
  }) =>
      _res;
}

class Mutation$SetTypingStatus {
  Mutation$SetTypingStatus({
    required this.setTypingStatus,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetTypingStatus.fromJson(Map<String, dynamic> json) {
    final l$setTypingStatus = json['setTypingStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$SetTypingStatus(
      setTypingStatus: (l$setTypingStatus as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool setTypingStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setTypingStatus = setTypingStatus;
    _resultData['setTypingStatus'] = l$setTypingStatus;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setTypingStatus = setTypingStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setTypingStatus,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetTypingStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setTypingStatus = setTypingStatus;
    final lOther$setTypingStatus = other.setTypingStatus;
    if (l$setTypingStatus != lOther$setTypingStatus) {
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

extension UtilityExtension$Mutation$SetTypingStatus
    on Mutation$SetTypingStatus {
  CopyWith$Mutation$SetTypingStatus<Mutation$SetTypingStatus> get copyWith =>
      CopyWith$Mutation$SetTypingStatus(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetTypingStatus<TRes> {
  factory CopyWith$Mutation$SetTypingStatus(
    Mutation$SetTypingStatus instance,
    TRes Function(Mutation$SetTypingStatus) then,
  ) = _CopyWithImpl$Mutation$SetTypingStatus;

  factory CopyWith$Mutation$SetTypingStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetTypingStatus;

  TRes call({
    bool? setTypingStatus,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SetTypingStatus<TRes>
    implements CopyWith$Mutation$SetTypingStatus<TRes> {
  _CopyWithImpl$Mutation$SetTypingStatus(
    this._instance,
    this._then,
  );

  final Mutation$SetTypingStatus _instance;

  final TRes Function(Mutation$SetTypingStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setTypingStatus = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetTypingStatus(
        setTypingStatus:
            setTypingStatus == _undefined || setTypingStatus == null
                ? _instance.setTypingStatus
                : (setTypingStatus as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetTypingStatus<TRes>
    implements CopyWith$Mutation$SetTypingStatus<TRes> {
  _CopyWithStubImpl$Mutation$SetTypingStatus(this._res);

  TRes _res;

  call({
    bool? setTypingStatus,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSetTypingStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetTypingStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'chatId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isTyping')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'setTypingStatus'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'chatId'),
            value: VariableNode(name: NameNode(value: 'chatId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isTyping'),
            value: VariableNode(name: NameNode(value: 'isTyping')),
          ),
        ],
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
]);
Mutation$SetTypingStatus _parserFn$Mutation$SetTypingStatus(
        Map<String, dynamic> data) =>
    Mutation$SetTypingStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$SetTypingStatus = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SetTypingStatus?,
);

class Options$Mutation$SetTypingStatus
    extends graphql.MutationOptions<Mutation$SetTypingStatus> {
  Options$Mutation$SetTypingStatus({
    String? operationName,
    required Variables$Mutation$SetTypingStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetTypingStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetTypingStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetTypingStatus>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$SetTypingStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetTypingStatus,
          parserFn: _parserFn$Mutation$SetTypingStatus,
        );

  final OnMutationCompleted$Mutation$SetTypingStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetTypingStatus
    extends graphql.WatchQueryOptions<Mutation$SetTypingStatus> {
  WatchOptions$Mutation$SetTypingStatus({
    String? operationName,
    required Variables$Mutation$SetTypingStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetTypingStatus? typedOptimisticResult,
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
          document: documentNodeMutationSetTypingStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetTypingStatus,
        );
}

extension ClientExtension$Mutation$SetTypingStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetTypingStatus>> mutate$SetTypingStatus(
          Options$Mutation$SetTypingStatus options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetTypingStatus>
      watchMutation$SetTypingStatus(
              WatchOptions$Mutation$SetTypingStatus options) =>
          this.watchMutation(options);
}
