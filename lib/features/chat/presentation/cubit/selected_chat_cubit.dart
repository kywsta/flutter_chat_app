import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chats.graphql.dart';

class SelectedChatCubit extends Cubit<Query$GetChats$getChats$edges$node?> {
  SelectedChatCubit() : super(null);

  void setSelectedChat(Query$GetChats$getChats$edges$node chat) {
    emit(chat);
  }

  void clearSelectedChat() {
    emit(null);
  }
}
