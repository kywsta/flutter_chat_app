part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFail extends LoginState {
  final Failure failure;

  const LoginFail({required this.failure});

  @override
  List<Object> get props => [failure];
}
