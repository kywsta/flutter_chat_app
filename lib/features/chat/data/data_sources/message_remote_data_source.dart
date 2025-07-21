import 'package:flutter_chat_app/core/graphql/graphql_service.dart';
import 'package:flutter_chat_app/core/graphql/schema.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chat_messages.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/message_added.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/send_message.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/set_typing_status.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/typing_indicator.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class MessageRemoteDataSource {
  Future<QueryResult<Query$GetChatMessages>> getChatMessages(
      String chatId, int last, String? before);
  Future<QueryResult<Mutation$SendMessage>> sendMessage(
      String chatId, String message);
  Future<QueryResult<Mutation$SetTypingStatus>> setTypingStatus(
      String chatId, bool isTyping);
  Stream<QueryResult<Subscription$MessageAdded>> subscribeMessageAdded(
      String chatId);
  Stream<QueryResult<Subscription$TypingIndicator>> subscribeTypingIndicator(
      String chatId);
}

class MessageRemoteDataSourceImpl implements MessageRemoteDataSource {
  final GraphQLService graphQLService;

  MessageRemoteDataSourceImpl({required this.graphQLService});

  @override
  Future<QueryResult<Query$GetChatMessages>> getChatMessages(
      String chatId, int last, String? before) {
    return graphQLService.client.query$GetChatMessages(
      Options$Query$GetChatMessages(
        variables: Variables$Query$GetChatMessages(
            chatId: chatId, last: last, before: before),
      ),
    );
  }

  @override
  Future<QueryResult<Mutation$SendMessage>> sendMessage(
      String chatId, String message) {
    return graphQLService.client.mutate$SendMessage(
      Options$Mutation$SendMessage(
        variables: Variables$Mutation$SendMessage(
            sendMessageInput:
                Input$SendMessageInput(chatId: chatId, content: message)),
      ),
    );
  }

  @override
  Future<QueryResult<Mutation$SetTypingStatus>> setTypingStatus(
      String chatId, bool isTyping) {
    return graphQLService.client.mutate$SetTypingStatus(
      Options$Mutation$SetTypingStatus(
        variables: Variables$Mutation$SetTypingStatus(
            chatId: chatId, isTyping: isTyping),
      ),
    );
  }

  @override
  Stream<QueryResult<Subscription$MessageAdded>> subscribeMessageAdded(
      String chatId) {
    return graphQLService.client.subscribe$MessageAdded(
      Options$Subscription$MessageAdded(
        variables: Variables$Subscription$MessageAdded(chatId: chatId),
      ),
    );
  }

  @override
  Stream<QueryResult<Subscription$TypingIndicator>> subscribeTypingIndicator(
      String chatId) {
    return graphQLService.client.subscribe$TypingIndicator(
      Options$Subscription$TypingIndicator(
        variables: Variables$Subscription$TypingIndicator(chatId: chatId),
      ),
    );
  }
}
