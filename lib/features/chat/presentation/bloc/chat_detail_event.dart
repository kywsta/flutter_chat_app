part of 'chat_detail_bloc.dart';

abstract class ChatDetailEvent extends Equatable {
  const ChatDetailEvent();

  @override
  List<Object> get props => [];
}

class GetChatMessages extends ChatDetailEvent {}

class SendMessage extends ChatDetailEvent {
  final String message;

  const SendMessage({required this.message});

  @override
  List<Object> get props => [message];
}

class SetTypingStatus extends ChatDetailEvent {
  final bool isTyping;

  const SetTypingStatus({required this.isTyping});

  @override
  List<Object> get props => [isTyping];
}

class MessageAdded extends ChatDetailEvent {
  final Fragment$message message;

  const MessageAdded({required this.message});

  @override
  List<Object> get props => [message];
}

class TypingIndicatorReceived extends ChatDetailEvent {
  final Subscription$TypingIndicator$typingIndicator typingIndicator;

  const TypingIndicatorReceived({required this.typingIndicator});

  @override
  List<Object> get props => [typingIndicator];
}
