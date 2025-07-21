import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/chat/data/data_sources/chat_remote_data_source.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chat.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chats.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl extends ChatRepository {
  final ChatRemoteDataSource chatRemoteDataSource;

  ChatRepositoryImpl({required this.chatRemoteDataSource});

  @override
  Future<Either<Query$GetChat, Failure>> getChat(String chatId) async {
    return await onGql(() => chatRemoteDataSource.getChat(chatId));
  }

  @override
  Future<Either<Query$GetChats, Failure>> getChats(
      int? first, String? after) async {
    return await onGql(() => chatRemoteDataSource.getChats(first, after));
  }
}
