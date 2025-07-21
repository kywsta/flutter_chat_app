import 'package:flutter_chat_app/features/chat/domain/graphql/message_added.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/repositories/message_repository.dart';

class SubscribeMessageAddedUseCase {
  final MessageRepository messageRepository;

  SubscribeMessageAddedUseCase({required this.messageRepository});

  Stream<Subscription$MessageAdded> call(String chatId) {
    return messageRepository.subscribeMessageAdded(chatId);
  }
}
