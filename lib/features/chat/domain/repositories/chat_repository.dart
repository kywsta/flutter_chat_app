import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/base/repository.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chat.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chats.graphql.dart';

abstract class ChatRepository extends Repository {
  Future<Either<Query$GetChat, Failure>> getChat(String chatId);
  Future<Either<Query$GetChats, Failure>> getChats(int? first, String? after);
}
