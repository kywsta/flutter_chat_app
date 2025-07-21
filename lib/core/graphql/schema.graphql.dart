class Input$CreateChatInput {
  factory Input$CreateChatInput({
    required String name,
    required List<String> memberIds,
    bool? isGroup,
  }) =>
      Input$CreateChatInput._({
        r'name': name,
        r'memberIds': memberIds,
        if (isGroup != null) r'isGroup': isGroup,
      });

  Input$CreateChatInput._(this._$data);

  factory Input$CreateChatInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$memberIds = data['memberIds'];
    result$data['memberIds'] =
        (l$memberIds as List<dynamic>).map((e) => (e as String)).toList();
    if (data.containsKey('isGroup')) {
      final l$isGroup = data['isGroup'];
      result$data['isGroup'] = (l$isGroup as bool);
    }
    return Input$CreateChatInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  List<String> get memberIds => (_$data['memberIds'] as List<String>);

  bool? get isGroup => (_$data['isGroup'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$memberIds = memberIds;
    result$data['memberIds'] = l$memberIds.map((e) => e).toList();
    if (_$data.containsKey('isGroup')) {
      final l$isGroup = isGroup;
      result$data['isGroup'] = (l$isGroup as bool);
    }
    return result$data;
  }

  CopyWith$Input$CreateChatInput<Input$CreateChatInput> get copyWith =>
      CopyWith$Input$CreateChatInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateChatInput || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('isGroup') != other._$data.containsKey('isGroup')) {
      return false;
    }
    if (l$isGroup != lOther$isGroup) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$memberIds = memberIds;
    final l$isGroup = isGroup;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$memberIds.map((v) => v)),
      _$data.containsKey('isGroup') ? l$isGroup : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateChatInput<TRes> {
  factory CopyWith$Input$CreateChatInput(
    Input$CreateChatInput instance,
    TRes Function(Input$CreateChatInput) then,
  ) = _CopyWithImpl$Input$CreateChatInput;

  factory CopyWith$Input$CreateChatInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateChatInput;

  TRes call({
    String? name,
    List<String>? memberIds,
    bool? isGroup,
  });
}

class _CopyWithImpl$Input$CreateChatInput<TRes>
    implements CopyWith$Input$CreateChatInput<TRes> {
  _CopyWithImpl$Input$CreateChatInput(
    this._instance,
    this._then,
  );

  final Input$CreateChatInput _instance;

  final TRes Function(Input$CreateChatInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? memberIds = _undefined,
    Object? isGroup = _undefined,
  }) =>
      _then(Input$CreateChatInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (memberIds != _undefined && memberIds != null)
          'memberIds': (memberIds as List<String>),
        if (isGroup != _undefined && isGroup != null)
          'isGroup': (isGroup as bool),
      }));
}

class _CopyWithStubImpl$Input$CreateChatInput<TRes>
    implements CopyWith$Input$CreateChatInput<TRes> {
  _CopyWithStubImpl$Input$CreateChatInput(this._res);

  TRes _res;

  call({
    String? name,
    List<String>? memberIds,
    bool? isGroup,
  }) =>
      _res;
}

class Input$SendMessageInput {
  factory Input$SendMessageInput({
    required String chatId,
    required String content,
    Enum$MessageType? type,
    String? replyToId,
  }) =>
      Input$SendMessageInput._({
        r'chatId': chatId,
        r'content': content,
        if (type != null) r'type': type,
        if (replyToId != null) r'replyToId': replyToId,
      });

  Input$SendMessageInput._(this._$data);

  factory Input$SendMessageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$chatId = data['chatId'];
    result$data['chatId'] = (l$chatId as String);
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = fromJson$Enum$MessageType((l$type as String));
    }
    if (data.containsKey('replyToId')) {
      final l$replyToId = data['replyToId'];
      result$data['replyToId'] = (l$replyToId as String?);
    }
    return Input$SendMessageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get chatId => (_$data['chatId'] as String);

  String get content => (_$data['content'] as String);

  Enum$MessageType? get type => (_$data['type'] as Enum$MessageType?);

  String? get replyToId => (_$data['replyToId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$chatId = chatId;
    result$data['chatId'] = l$chatId;
    final l$content = content;
    result$data['content'] = l$content;
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          toJson$Enum$MessageType((l$type as Enum$MessageType));
    }
    if (_$data.containsKey('replyToId')) {
      final l$replyToId = replyToId;
      result$data['replyToId'] = l$replyToId;
    }
    return result$data;
  }

  CopyWith$Input$SendMessageInput<Input$SendMessageInput> get copyWith =>
      CopyWith$Input$SendMessageInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SendMessageInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$chatId = chatId;
    final lOther$chatId = other.chatId;
    if (l$chatId != lOther$chatId) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyToId = replyToId;
    final lOther$replyToId = other.replyToId;
    if (_$data.containsKey('replyToId') !=
        other._$data.containsKey('replyToId')) {
      return false;
    }
    if (l$replyToId != lOther$replyToId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$chatId = chatId;
    final l$content = content;
    final l$type = type;
    final l$replyToId = replyToId;
    return Object.hashAll([
      l$chatId,
      l$content,
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('replyToId') ? l$replyToId : const {},
    ]);
  }
}

abstract class CopyWith$Input$SendMessageInput<TRes> {
  factory CopyWith$Input$SendMessageInput(
    Input$SendMessageInput instance,
    TRes Function(Input$SendMessageInput) then,
  ) = _CopyWithImpl$Input$SendMessageInput;

  factory CopyWith$Input$SendMessageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SendMessageInput;

  TRes call({
    String? chatId,
    String? content,
    Enum$MessageType? type,
    String? replyToId,
  });
}

class _CopyWithImpl$Input$SendMessageInput<TRes>
    implements CopyWith$Input$SendMessageInput<TRes> {
  _CopyWithImpl$Input$SendMessageInput(
    this._instance,
    this._then,
  );

  final Input$SendMessageInput _instance;

  final TRes Function(Input$SendMessageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? chatId = _undefined,
    Object? content = _undefined,
    Object? type = _undefined,
    Object? replyToId = _undefined,
  }) =>
      _then(Input$SendMessageInput._({
        ..._instance._$data,
        if (chatId != _undefined && chatId != null)
          'chatId': (chatId as String),
        if (content != _undefined && content != null)
          'content': (content as String),
        if (type != _undefined && type != null)
          'type': (type as Enum$MessageType),
        if (replyToId != _undefined) 'replyToId': (replyToId as String?),
      }));
}

class _CopyWithStubImpl$Input$SendMessageInput<TRes>
    implements CopyWith$Input$SendMessageInput<TRes> {
  _CopyWithStubImpl$Input$SendMessageInput(this._res);

  TRes _res;

  call({
    String? chatId,
    String? content,
    Enum$MessageType? type,
    String? replyToId,
  }) =>
      _res;
}

class Input$AddMemberInput {
  factory Input$AddMemberInput({
    required String chatId,
    required String userId,
    Enum$ChatMemberRole? role,
  }) =>
      Input$AddMemberInput._({
        r'chatId': chatId,
        r'userId': userId,
        if (role != null) r'role': role,
      });

  Input$AddMemberInput._(this._$data);

  factory Input$AddMemberInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$chatId = data['chatId'];
    result$data['chatId'] = (l$chatId as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = fromJson$Enum$ChatMemberRole((l$role as String));
    }
    return Input$AddMemberInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get chatId => (_$data['chatId'] as String);

  String get userId => (_$data['userId'] as String);

  Enum$ChatMemberRole? get role => (_$data['role'] as Enum$ChatMemberRole?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$chatId = chatId;
    result$data['chatId'] = l$chatId;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] =
          toJson$Enum$ChatMemberRole((l$role as Enum$ChatMemberRole));
    }
    return result$data;
  }

  CopyWith$Input$AddMemberInput<Input$AddMemberInput> get copyWith =>
      CopyWith$Input$AddMemberInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AddMemberInput || runtimeType != other.runtimeType) {
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
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$chatId = chatId;
    final l$userId = userId;
    final l$role = role;
    return Object.hashAll([
      l$chatId,
      l$userId,
      _$data.containsKey('role') ? l$role : const {},
    ]);
  }
}

abstract class CopyWith$Input$AddMemberInput<TRes> {
  factory CopyWith$Input$AddMemberInput(
    Input$AddMemberInput instance,
    TRes Function(Input$AddMemberInput) then,
  ) = _CopyWithImpl$Input$AddMemberInput;

  factory CopyWith$Input$AddMemberInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddMemberInput;

  TRes call({
    String? chatId,
    String? userId,
    Enum$ChatMemberRole? role,
  });
}

class _CopyWithImpl$Input$AddMemberInput<TRes>
    implements CopyWith$Input$AddMemberInput<TRes> {
  _CopyWithImpl$Input$AddMemberInput(
    this._instance,
    this._then,
  );

  final Input$AddMemberInput _instance;

  final TRes Function(Input$AddMemberInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? chatId = _undefined,
    Object? userId = _undefined,
    Object? role = _undefined,
  }) =>
      _then(Input$AddMemberInput._({
        ..._instance._$data,
        if (chatId != _undefined && chatId != null)
          'chatId': (chatId as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (role != _undefined && role != null)
          'role': (role as Enum$ChatMemberRole),
      }));
}

class _CopyWithStubImpl$Input$AddMemberInput<TRes>
    implements CopyWith$Input$AddMemberInput<TRes> {
  _CopyWithStubImpl$Input$AddMemberInput(this._res);

  TRes _res;

  call({
    String? chatId,
    String? userId,
    Enum$ChatMemberRole? role,
  }) =>
      _res;
}

enum Enum$MessageType {
  TEXT,
  IMAGE,
  FILE,
  SYSTEM,
  $unknown;

  factory Enum$MessageType.fromJson(String value) =>
      fromJson$Enum$MessageType(value);

  String toJson() => toJson$Enum$MessageType(this);
}

String toJson$Enum$MessageType(Enum$MessageType e) {
  switch (e) {
    case Enum$MessageType.TEXT:
      return r'TEXT';
    case Enum$MessageType.IMAGE:
      return r'IMAGE';
    case Enum$MessageType.FILE:
      return r'FILE';
    case Enum$MessageType.SYSTEM:
      return r'SYSTEM';
    case Enum$MessageType.$unknown:
      return r'$unknown';
  }
}

Enum$MessageType fromJson$Enum$MessageType(String value) {
  switch (value) {
    case r'TEXT':
      return Enum$MessageType.TEXT;
    case r'IMAGE':
      return Enum$MessageType.IMAGE;
    case r'FILE':
      return Enum$MessageType.FILE;
    case r'SYSTEM':
      return Enum$MessageType.SYSTEM;
    default:
      return Enum$MessageType.$unknown;
  }
}

enum Enum$ChatMemberRole {
  ADMIN,
  MEMBER,
  $unknown;

  factory Enum$ChatMemberRole.fromJson(String value) =>
      fromJson$Enum$ChatMemberRole(value);

  String toJson() => toJson$Enum$ChatMemberRole(this);
}

String toJson$Enum$ChatMemberRole(Enum$ChatMemberRole e) {
  switch (e) {
    case Enum$ChatMemberRole.ADMIN:
      return r'ADMIN';
    case Enum$ChatMemberRole.MEMBER:
      return r'MEMBER';
    case Enum$ChatMemberRole.$unknown:
      return r'$unknown';
  }
}

Enum$ChatMemberRole fromJson$Enum$ChatMemberRole(String value) {
  switch (value) {
    case r'ADMIN':
      return Enum$ChatMemberRole.ADMIN;
    case r'MEMBER':
      return Enum$ChatMemberRole.MEMBER;
    default:
      return Enum$ChatMemberRole.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
