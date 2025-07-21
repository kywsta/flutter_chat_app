import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/set_typing_status.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/repositories/message_repository.dart';

class SetTypingStatusUseCase {
  final MessageRepository messageRepository;

  SetTypingStatusUseCase({required this.messageRepository});

  Future<Either<Mutation$SetTypingStatus, Failure>> call(
      String chatId, bool isTyping) async {
    return await messageRepository.setTypingStatus(chatId, isTyping);
  }
}
