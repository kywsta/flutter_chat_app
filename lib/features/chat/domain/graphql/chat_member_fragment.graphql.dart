import '../../../../core/graphql/schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$chatMember {
  Fragment$chatMember({
    required this.id,
    required this.userId,
    required this.username,
    required this.role,
    this.$__typename = 'ChatMember',
  });

  factory Fragment$chatMember.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$username = json['username'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Fragment$chatMember(
      id: (l$id as String),
      userId: (l$userId as String),
      username: (l$username as String),
      role: fromJson$Enum$ChatMemberRole((l$role as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final String username;

  final Enum$ChatMemberRole role;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$role = role;
    _resultData['role'] = toJson$Enum$ChatMemberRole(l$role);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$username = username;
    final l$role = role;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$username,
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$chatMember || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
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

extension UtilityExtension$Fragment$chatMember on Fragment$chatMember {
  CopyWith$Fragment$chatMember<Fragment$chatMember> get copyWith =>
      CopyWith$Fragment$chatMember(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$chatMember<TRes> {
  factory CopyWith$Fragment$chatMember(
    Fragment$chatMember instance,
    TRes Function(Fragment$chatMember) then,
  ) = _CopyWithImpl$Fragment$chatMember;

  factory CopyWith$Fragment$chatMember.stub(TRes res) =
      _CopyWithStubImpl$Fragment$chatMember;

  TRes call({
    String? id,
    String? userId,
    String? username,
    Enum$ChatMemberRole? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$chatMember<TRes>
    implements CopyWith$Fragment$chatMember<TRes> {
  _CopyWithImpl$Fragment$chatMember(
    this._instance,
    this._then,
  );

  final Fragment$chatMember _instance;

  final TRes Function(Fragment$chatMember) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? username = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$chatMember(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Enum$ChatMemberRole),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$chatMember<TRes>
    implements CopyWith$Fragment$chatMember<TRes> {
  _CopyWithStubImpl$Fragment$chatMember(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    String? username,
    Enum$ChatMemberRole? role,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionchatMember = FragmentDefinitionNode(
  name: NameNode(value: 'chatMember'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ChatMember'),
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
      name: NameNode(value: 'userId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'username'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'role'),
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
const documentNodeFragmentchatMember = DocumentNode(definitions: [
  fragmentDefinitionchatMember,
]);

extension ClientExtension$Fragment$chatMember on graphql.GraphQLClient {
  void writeFragment$chatMember({
    required Fragment$chatMember data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'chatMember',
            document: documentNodeFragmentchatMember,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$chatMember? readFragment$chatMember({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'chatMember',
          document: documentNodeFragmentchatMember,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$chatMember.fromJson(result);
  }
}
