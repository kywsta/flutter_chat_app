import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chat_messages.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/repositories/message_repository.dart';

class GetChatMessagesUseCase {
  final MessageRepository messageRepository;

  GetChatMessagesUseCase({required this.messageRepository});

  Future<Either<Query$GetChatMessages, Failure>> call(
      String chatId, int last, String? before) async {
    return await messageRepository.getChatMessages(chatId, last, before);
  }
}
