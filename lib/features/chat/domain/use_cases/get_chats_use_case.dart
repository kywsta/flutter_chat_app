import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chats.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/repositories/chat_repository.dart';

class GetChatsUseCase {
  final ChatRepository chatRepository;

  GetChatsUseCase({required this.chatRepository});

  Future<Either<Query$GetChats, Failure>> call(int? last, String? after) async {
    return await chatRepository.getChats(last, after);
  }
}
