import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/auth/use_cases/login_use_case.dart';
import 'package:flutter_chat_app/core/auth/use_cases/logout_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_chat_app/core/error/failures.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final LogoutUseCase logoutUseCase;

  AuthBloc({required this.loginUseCase, required this.logoutUseCase})
      : super(AuthInitial()) {
    on<LoginRequested>(_onLoginEvent);
    on<LogoutRequested>(_onLogoutEvent);
  }

  Future<void> _onLoginEvent(
      LoginRequested event, Emitter<AuthState> emit) async {
    final result = await loginUseCase(event.userName, event.password);
    result.fold(
      (userAuthModel) {
        emit(Authenticated(userAuthModel: userAuthModel));
      },
      (failure) => emit(LoginFail(failure: failure)),
    );
  }

  void _onLogoutEvent(LogoutRequested event, Emitter<AuthState> emit) {
    logoutUseCase();

    emit(Unauthenticated());
  }
}
