import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/auth/repositories/auth_repository.dart';

class GetAuthStateStreamUseCase {
  final AuthRepository repository;

  GetAuthStateStreamUseCase({required this.repository});

  Stream<UserAuthModel?> call() {
    return repository.authStateStream;
  }
}
