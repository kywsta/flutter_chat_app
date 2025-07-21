import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/auth/use_cases/login_use_case.dart';
import 'package:flutter_chat_app/core/error/failures.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc({required this.loginUseCase}) : super(LoginInitial()) {
    on<LoginRequested>(_onLoginRequestedEvent);
  }

  Future<void> _onLoginRequestedEvent(
    LoginRequested event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    final result = await loginUseCase.call(
      event.userName,
      event.password,
    );
    result.fold(
      (userAuthModel) {
        emit(LoginSuccess());
      },
      (failure) => emit(LoginFail(failure: failure)),
    );
  }
}
