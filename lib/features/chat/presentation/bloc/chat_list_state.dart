part of 'chat_list_bloc.dart';

enum ChatListStatus {
  initial,
  loaded,
}

class ChatListState extends Equatable {
  final ChatListStatus status;
  final List<Query$GetChats$getChats$edges$node> chats;
  final bool hasReachedMax;
  final String? cursor;

  final Failure? loadingFailure;

  const ChatListState({
    this.status = ChatListStatus.initial,
    this.chats = const [],
    this.hasReachedMax = false,
    this.cursor,
    this.loadingFailure,
  });

  @override
  List<Object?> get props =>
      [status, chats, hasReachedMax, cursor, loadingFailure];

  ChatListState copyWith({
    ChatListStatus? status,
    List<Query$GetChats$getChats$edges$node>? chats,
    bool? hasReachedMax,
    String? cursor,
    Failure? loadingFailure,
  }) {
    return ChatListState(
      status: status ?? this.status,
      chats: chats ?? this.chats,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      cursor: cursor ?? this.cursor,
      loadingFailure: loadingFailure ?? this.loadingFailure,
    );
  }
}
