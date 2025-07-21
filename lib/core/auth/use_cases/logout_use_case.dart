import 'package:flutter_chat_app/core/auth/repositories/auth_repository.dart';

class LogoutUseCase {
  final AuthRepository repository;

  LogoutUseCase({required this.repository});

  void call() {
    repository.logout();
  }
}
