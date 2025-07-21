import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/di/service_locator.dart';
import 'package:flutter_chat_app/core/navigation/app_router.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chats.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/get_chat_messages_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/get_chats_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/send_message_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/set_typing_status_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/subscribe_message_added_use_case.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/subscribe_typing_indicator_use_case.dart';
import 'package:flutter_chat_app/features/chat/presentation/bloc/chat_detail_bloc.dart';
import 'package:flutter_chat_app/features/chat/presentation/bloc/chat_list_bloc.dart';
import 'package:flutter_chat_app/features/chat/presentation/cubit/selected_chat_cubit.dart';
import 'package:flutter_chat_app/features/chat/presentation/pages/chat_detail_screen.dart';
import 'package:flutter_chat_app/features/chat/presentation/pages/chats_screen.dart';
import 'package:go_router/go_router.dart';

class ChatRoutes {
  static const String chats = '/chats';
  static const String chatDetail = '/chats/:chatId';

  static final routes = [
    GoRoute(
      path: chats,
      builder: (context, state) => BlocProvider(
        create: (context) => ChatListBloc(
          getChatsUseCase: serviceLocator.get<GetChatsUseCase>(),
        )..add(GetChatsEvent()),
        child: const ChatsScreen(),
      ),
    ),
    GoRoute(
      path: chatDetail,
      builder: (context, state) => BlocProvider(
        key: ValueKey(state.pathParameters['chatId']),
        create: (context) => ChatDetailBloc(
          chat: context.read<SelectedChatCubit>().state!,
          getChatMessagesUseCase: serviceLocator.get<GetChatMessagesUseCase>(),
          sendMessageUseCase: serviceLocator.get<SendMessageUseCase>(),
          setTypingStatusUseCase: serviceLocator.get<SetTypingStatusUseCase>(),
          subscribeMessageAddedUseCase:
              serviceLocator.get<SubscribeMessageAddedUseCase>(),
          subscribeTypingIndicatorUseCase:
              serviceLocator.get<SubscribeTypingIndicatorUseCase>(),
        )..add(GetChatMessages()),
        child: const ChatDetailScreen(),
      ),
    )
  ];
}

extension ChatRoutesExtension on AppRouter {
  void navigateToChats() {
    router.go(ChatRoutes.chats);
  }

  void navigateToChatDetail(Query$GetChats$getChats$edges$node chat) {
    serviceLocator.get<SelectedChatCubit>().setSelectedChat(chat);
    router.push(ChatRoutes.chatDetail.replaceFirst(':chatId', chat.id));
  }
}
