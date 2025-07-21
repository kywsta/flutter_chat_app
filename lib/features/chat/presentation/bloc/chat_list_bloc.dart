import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chats.graphql.dart';
import 'package:flutter_chat_app/features/chat/domain/use_cases/get_chats_use_case.dart';

part 'chat_list_event.dart';
part 'chat_list_state.dart';

class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  final GetChatsUseCase getChatsUseCase;

  ChatListBloc({required this.getChatsUseCase}) : super(ChatListState()) {
    on<GetChatsEvent>(_onGetChats);
  }

  Future<void> _onGetChats(
      GetChatsEvent event, Emitter<ChatListState> emit) async {
    if (state.hasReachedMax) return;

    final result = await getChatsUseCase(20, state.cursor);

    result.fold((data) {
      final newChats = data.getChats.edges.map((e) => e.node).toList();
      final hasReachedMax = !data.getChats.pageInfo.hasNextPage;
      final cursor = data.getChats.pageInfo.endCursor;

      emit(state.copyWith(
        status: ChatListStatus.loaded,
        chats: [...state.chats, ...newChats],
        hasReachedMax: hasReachedMax,
        cursor: cursor,
      ));
    }, (failure) {
      emit(state.copyWith(
        loadingFailure: failure,
      ));
    });
  }
}
