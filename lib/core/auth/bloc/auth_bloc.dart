import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/auth/use_cases/get_auth_state_stream_use_case.dart';
import 'package:flutter_chat_app/core/auth/use_cases/logout_use_case.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetAuthStateStreamUseCase getAuthStateStreamUseCase;
  final LogoutUseCase logoutUseCase;

  AuthBloc(
      {required this.getAuthStateStreamUseCase, required this.logoutUseCase})
      : super(AuthInitial()) {
    on<AuthSubscriptionRequested>(_onAuthSubscriptionRequested);
    on<LogoutRequested>(_onLogoutEvent);
  }

  @override
  void onEvent(AuthEvent event) {
    print('AuthBloc onEvent: $event');
    super.onEvent(event);
  }

  Future<void> _onAuthSubscriptionRequested(
      AuthSubscriptionRequested event, Emitter<AuthState> emit) async {
    return emit.onEach(
      getAuthStateStreamUseCase(),
      onData: (userAuth) {
        if (userAuth != null) {
          emit(Authenticated(userAuthModel: userAuth));
        } else {
          emit(Unauthenticated());
        }
      },
    );
  }

  void _onLogoutEvent(LogoutRequested event, Emitter<AuthState> emit) {
    logoutUseCase();
  }
}
