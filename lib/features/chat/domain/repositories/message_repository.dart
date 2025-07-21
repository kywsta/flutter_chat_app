import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/base/repository.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chat_messages.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/message_added.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/send_message.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/set_typing_status.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/typing_indicator.graphql.dart';

abstract class MessageRepository extends Repository {
  Future<Either<Mutation$SendMessage, Failure>> sendMessage(
      String chatId, String message);
  Future<Either<Query$GetChatMessages, Failure>> getChatMessages(String chatId, int last, String? before);
  Future<Either<Mutation$SetTypingStatus, Failure>> setTypingStatus(
      String chatId, bool isTyping);
  Stream<Subscription$MessageAdded> subscribeMessageAdded(String chatId);
  Stream<Subscription$TypingIndicator> subscribeTypingIndicator(String chatId);
}
