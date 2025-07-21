import 'package:flutter_chat_app/core/graphql/graphql_service.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chat.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chats.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class ChatRemoteDataSource {
  Future<QueryResult<Query$GetChat>> getChat(String chatId);
  Future<QueryResult<Query$GetChats>> getChats(int? first, String? after);
}

class ChatRemoteDataSourceImpl extends ChatRemoteDataSource {
  final GraphQLService graphQLService;

  ChatRemoteDataSourceImpl({required this.graphQLService});

  @override
  Future<QueryResult<Query$GetChat>> getChat(String chatId) async {
    return graphQLService.client.query$GetChat(Options$Query$GetChat(
        variables: Variables$Query$GetChat(chatId: chatId)));
  }

  @override
  Future<QueryResult<Query$GetChats>> getChats(int? first, String? after) async {
    return graphQLService.client.query$GetChats(Options$Query$GetChats(
        variables: Variables$Query$GetChats(
      first: first,
      after: after,
    )));
  }
}
