import 'package:flutter_chat_app/core/di/service_locator.dart';
import 'package:flutter_chat_app/core/graphql/graphql_service.dart';
import 'package:flutter_chat_app/features/chat/data/data_sources/chat_remote_data_source.dart';
import 'package:flutter_chat_app/features/chat/data/data_sources/message_remote_data_source.dart';
import 'package:flutter_chat_app/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:flutter_chat_app/features/chat/data/repositories/message_repository_impl.dart';
import 'package:flutter_chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:flutter_chat_app/features/chat/domain/repositories/message_repository.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/get_chat_messages_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/get_chat_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/get_chats_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/set_typing_status_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/subscribe_message_added_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/subscribe_typing_indicator_use_case.dart';
import 'package:flutter_chat_app/features/chat/presentation/cubit/selected_chat_cubit.dart';

void injectChatDataSources() {
  serviceLocator.registerLazySingleton<ChatRemoteDataSource>(() =>
      ChatRemoteDataSourceImpl(
          graphQLService: serviceLocator.get<GraphQLService>()));

  serviceLocator.registerLazySingleton<MessageRemoteDataSource>(() =>
      MessageRemoteDataSourceImpl(
          graphQLService: serviceLocator.get<GraphQLService>()));
}

void injectChatRepositories() {
  serviceLocator.registerLazySingleton<ChatRepository>(() => ChatRepositoryImpl(
      chatRemoteDataSource: serviceLocator.get<ChatRemoteDataSource>()));

  serviceLocator.registerLazySingleton<MessageRepository>(() =>
      MessageRepositoryImpl(
          messageRemoteDataSource:
              serviceLocator.get<MessageRemoteDataSource>()));
}

void injectChatUseCases() {
  serviceLocator.registerLazySingleton<GetChatsUseCase>(() =>
      GetChatsUseCase(chatRepository: serviceLocator.get<ChatRepository>()));

  serviceLocator.registerLazySingleton<GetChatUseCase>(() =>
      GetChatUseCase(chatRepository: serviceLocator.get<ChatRepository>()));

  serviceLocator.registerLazySingleton<SendMessageUseCase>(() =>
      SendMessageUseCase(
          messageRepository: serviceLocator.get<MessageRepository>()));

  serviceLocator.registerLazySingleton<SetTypingStatusUseCase>(() =>
      SetTypingStatusUseCase(
          messageRepository: serviceLocator.get<MessageRepository>()));

  serviceLocator.registerLazySingleton<GetChatMessagesUseCase>(() =>
      GetChatMessagesUseCase(
          messageRepository: serviceLocator.get<MessageRepository>()));

  serviceLocator.registerLazySingleton<SubscribeMessageAddedUseCase>(() =>
      SubscribeMessageAddedUseCase(
          messageRepository: serviceLocator.get<MessageRepository>()));

  serviceLocator.registerLazySingleton<SubscribeTypingIndicatorUseCase>(() =>
      SubscribeTypingIndicatorUseCase(
          messageRepository: serviceLocator.get<MessageRepository>()));
}

void injectChatBlocs() {
  serviceLocator
      .registerLazySingleton<SelectedChatCubit>(() => SelectedChatCubit());
}
