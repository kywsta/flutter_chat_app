part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class Authenticated extends AuthState {
  final UserAuthModel userAuthModel;

  const Authenticated({required this.userAuthModel});

  @override
  List<Object> get props => [userAuthModel];
}

class Unauthenticated extends AuthState {}
