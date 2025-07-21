import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/chat/data/data_sources/message_remote_data_source.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chat_messages.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/message_added.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/send_message.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/set_typing_status.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/typing_indicator.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/repositories/message_repository.dart';

class MessageRepositoryImpl extends MessageRepository {
  final MessageRemoteDataSource messageRemoteDataSource;

  final Map<String, Stream<Subscription$MessageAdded>> _messageAddedStreams =
      {};
  final Map<String, Stream<Subscription$TypingIndicator>>
      _typingIndicatorStreams = {};

  MessageRepositoryImpl({required this.messageRemoteDataSource});

  @override
  Future<Either<Query$GetChatMessages, Failure>> getChatMessages(
      String chatId, int last, String? before) {
    return onGql(
        () => messageRemoteDataSource.getChatMessages(chatId, last, before));
  }

  @override
  Future<Either<Mutation$SendMessage, Failure>> sendMessage(
      String chatId, String message) {
    return onGql(() => messageRemoteDataSource.sendMessage(chatId, message));
  }

  @override
  Future<Either<Mutation$SetTypingStatus, Failure>> setTypingStatus(
      String chatId, bool isTyping) {
    return onGql(
        () => messageRemoteDataSource.setTypingStatus(chatId, isTyping));
  }

  @override
  Stream<Subscription$MessageAdded> subscribeMessageAdded(String chatId) {
    if (!_messageAddedStreams.containsKey(chatId)) {
      _messageAddedStreams[chatId] = onGqlStream(
              () => messageRemoteDataSource.subscribeMessageAdded(chatId))
          .asBroadcastStream();
    }
    return _messageAddedStreams[chatId]!;
  }

  @override
  Stream<Subscription$TypingIndicator> subscribeTypingIndicator(String chatId) {
    if (!_typingIndicatorStreams.containsKey(chatId)) {
      _typingIndicatorStreams[chatId] = onGqlStream(
              () => messageRemoteDataSource.subscribeTypingIndicator(chatId))
          .asBroadcastStream();
    }
    return _typingIndicatorStreams[chatId]!;
  }
}
