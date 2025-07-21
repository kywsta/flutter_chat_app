part of 'chat_detail_bloc.dart';

enum ChatDetailStatus {
  initial,
  firstPageLoaded,
  loaded,
}

class TypingUser {
  final String userId;
  final String userName;
  DateTime lastUpdate;

  TypingUser({
    required this.userId,
    required this.userName,
    required this.lastUpdate,
  });
}

class ChatDetailState extends Equatable {
  final Query$GetChats$getChats$edges$node chat;

  final ChatDetailStatus status;
  final List<Fragment$message> messages;
  final bool hasReachedMax;
  final String? cursor;

  final Failure? loadingMessagesFailure;

  final bool sendingMessage;
  final Failure? sendMessageFailure;

  final List<TypingUser> typingUsers;

  const ChatDetailState({
    required this.chat,
    this.status = ChatDetailStatus.initial,
    this.messages = const [],
    this.hasReachedMax = false,
    this.cursor,
    this.loadingMessagesFailure,
    this.sendingMessage = false,
    this.sendMessageFailure,
    this.typingUsers = const [],
  });

  @override
  List<Object?> get props => [
        chat,
        status,
        messages,
        hasReachedMax,
        cursor,
        loadingMessagesFailure,
        sendingMessage,
        sendMessageFailure,
        typingUsers,
      ];

  ChatDetailState copyWith({
    ChatDetailStatus? status,
    List<Fragment$message>? messages,
    bool? hasReachedMax,
    String? cursor,
    Failure? loadingMessagesFailure,
    bool? sendingMessage,
    Failure? sendMessageFailure,
    List<TypingUser>? typingUsers,
  }) {
    return ChatDetailState(
      chat: chat,
      status: status ?? this.status,
      messages: messages ?? this.messages,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      cursor: cursor ?? this.cursor,
      loadingMessagesFailure:
          loadingMessagesFailure ?? this.loadingMessagesFailure,
      sendingMessage: sendingMessage ?? this.sendingMessage,
      sendMessageFailure: sendMessageFailure ?? this.sendMessageFailure,
      typingUsers: typingUsers ?? this.typingUsers,
    );
  }
}
