import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/core/auth/auth_session.dart';
import 'package:flutter_chat_app/core/constants/network.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  static final GraphQLService _instance = GraphQLService._internal();
  factory GraphQLService() => _instance;
  GraphQLService._internal();

  GraphQLClient? _client;

  GraphQLClient get client {
    if (_client == null) {
      _initializeClient();
    }
    return _client!;
  }

  void _initializeClient() {
    final HttpLink httpLink = HttpLink(NetworkConstants.graphqlEndpoint);

    final WebSocketLink websocketLink = WebSocketLink(
      NetworkConstants.graphqlSubscriptionEndpoint,
      subProtocol: GraphQLProtocol.graphqlTransportWs,
      config: SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: const Duration(seconds: 30),
        initialPayload: () async {
          final token = AuthSession().authToken;

          if(token != null) {
            debugPrint('Connecting with token: $token');
            return {'Authorization': 'Bearer $token'};
          }

          debugPrint('No token found to connect with websocket');
          return {};
        },
      ),
    );

    final AuthLink authLink = AuthLink(
      getToken: () async {
        final token = AuthSession().authToken;
        return token != null ? 'Bearer $token' : null;
      },
    );

    final Link link = Link.split(
      (request) => request.isSubscription,
      websocketLink,
      authLink.concat(httpLink),
    );

    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.noCache,
        ),
      ),
    );
  }

  void reinitializeClient() {
    _client = null;
    _initializeClient();
  }

  Future<QueryResult<T>> query<T>(String query,
      [Map<String, dynamic> variables = const {}]) {
    return client.query(
      QueryOptions(
        document: gql(query),
        variables: variables,
      ),
    );
  }

  Future<QueryResult<T>> mutate<T>(String mutation,
      [Map<String, dynamic> variables = const {}]) {
    return client.mutate(
      MutationOptions(
        document: gql(mutation),
        variables: variables,
      ),
    );
  }

  Stream<QueryResult<T>> subscription<T>(String subscription,
      [Map<String, dynamic> variables = const {}]) {
    return client.subscribe(
      SubscriptionOptions(
        document: gql(subscription),
        variables: variables,
      ),
    );
  }

  // GraphQL Queries
  static const String getUserChatsQuery = '''
    query GetUserChats {
      getUserChats {
        id
        name
        creatorId
        memberIds
        isGroup
        lastMessageId
        createdAt
        updatedAt
      }
    }
  ''';

  static const String getChatMessagesQuery = '''
    query GetChatMessages(\$chatId: String!, \$limit: Int, \$offset: Int) {
      getChatMessages(chatId: \$chatId, limit: \$limit, offset: \$offset) {
        id
        chatId
        userId
        content
        type
        replyToId
        createdAt
        updatedAt
      }
    }
  ''';

  static const String meQuery = '''
    query Me {
      me {
        id
        username
        email
        isActive
        createdAt
      }
    }
  ''';

  // GraphQL Mutations
  static const String sendMessageMutation = '''
    mutation SendMessage(\$input: SendMessageInput!) {
      sendMessage(input: \$input) {
        id
        chatId
        userId
        content
        type
        createdAt
      }
    }
  ''';

  static const String createChatMutation = '''
    mutation CreateChat(\$input: CreateChatInput!) {
      createChat(input: \$input) {
        id
        name
        creatorId
        memberIds
        isGroup
        createdAt
      }
    }
  ''';

  static const String setTypingStatusMutation = '''
    mutation SetTypingStatus(\$chatId: String!, \$isTyping: Boolean!) {
      setTypingStatus(chatId: \$chatId, isTyping: \$isTyping)
    }
  ''';

  // GraphQL Subscriptions
  static const String messageAddedSubscription = '''
    subscription MessageAdded(\$chatId: String!) {
      messageAdded(chatId: \$chatId) {
        id
        chatId
        userId
        content
        type
        createdAt
      }
    }
  ''';

  static const String typingIndicatorSubscription = '''
    subscription TypingIndicator(\$chatId: String!) {
      typingIndicator(chatId: \$chatId) {
        chatId
        userId
        username
        isTyping
      }
    }
  ''';
}
