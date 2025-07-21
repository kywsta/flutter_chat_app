import '../../../../core/graphql/schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$message {
  Fragment$message({
    required this.id,
    required this.chatId,
    required this.userId,
    required this.content,
    required this.type,
    this.replyToId,
    required this.createdAt,
    this.updatedAt,
    this.$__typename = 'Message',
  });

  factory Fragment$message.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$chatId = json['chatId'];
    final l$userId = json['userId'];
    final l$content = json['content'];
    final l$type = json['type'];
    final l$replyToId = json['replyToId'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Fragment$message(
      id: (l$id as String),
      chatId: (l$chatId as String),
      userId: (l$userId as String),
      content: (l$content as String),
      type: fromJson$Enum$MessageType((l$type as String)),
      replyToId: (l$replyToId as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String chatId;

  final String userId;

  final String content;

  final Enum$MessageType type;

  final String? replyToId;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$chatId = chatId;
    _resultData['chatId'] = l$chatId;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$type = type;
    _resultData['type'] = toJson$Enum$MessageType(l$type);
    final l$replyToId = replyToId;
    _resultData['replyToId'] = l$replyToId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$chatId = chatId;
    final l$userId = userId;
    final l$content = content;
    final l$type = type;
    final l$replyToId = replyToId;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$chatId,
      l$userId,
      l$content,
      l$type,
      l$replyToId,
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
    if (other is! Fragment$message || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$chatId = chatId;
    final lOther$chatId = other.chatId;
    if (l$chatId != lOther$chatId) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyToId = replyToId;
    final lOther$replyToId = other.replyToId;
    if (l$replyToId != lOther$replyToId) {
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

extension UtilityExtension$Fragment$message on Fragment$message {
  CopyWith$Fragment$message<Fragment$message> get copyWith =>
      CopyWith$Fragment$message(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$message<TRes> {
  factory CopyWith$Fragment$message(
    Fragment$message instance,
    TRes Function(Fragment$message) then,
  ) = _CopyWithImpl$Fragment$message;

  factory CopyWith$Fragment$message.stub(TRes res) =
      _CopyWithStubImpl$Fragment$message;

  TRes call({
    String? id,
    String? chatId,
    String? userId,
    String? content,
    Enum$MessageType? type,
    String? replyToId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$message<TRes>
    implements CopyWith$Fragment$message<TRes> {
  _CopyWithImpl$Fragment$message(
    this._instance,
    this._then,
  );

  final Fragment$message _instance;

  final TRes Function(Fragment$message) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? chatId = _undefined,
    Object? userId = _undefined,
    Object? content = _undefined,
    Object? type = _undefined,
    Object? replyToId = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$message(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        chatId: chatId == _undefined || chatId == null
            ? _instance.chatId
            : (chatId as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$MessageType),
        replyToId: replyToId == _undefined
            ? _instance.replyToId
            : (replyToId as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$message<TRes>
    implements CopyWith$Fragment$message<TRes> {
  _CopyWithStubImpl$Fragment$message(this._res);

  TRes _res;

  call({
    String? id,
    String? chatId,
    String? userId,
    String? content,
    Enum$MessageType? type,
    String? replyToId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionmessage = FragmentDefinitionNode(
  name: NameNode(value: 'message'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Message'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'chatId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'userId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'replyToId'),
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
);
const documentNodeFragmentmessage = DocumentNode(definitions: [
  fragmentDefinitionmessage,
]);

extension ClientExtension$Fragment$message on graphql.GraphQLClient {
  void writeFragment$message({
    required Fragment$message data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'message',
            document: documentNodeFragmentmessage,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$message? readFragment$message({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'message',
          document: documentNodeFragmentmessage,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$message.fromJson(result);
  }
}
