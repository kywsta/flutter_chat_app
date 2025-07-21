import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/auth/repositories/auth_repository.dart';
import 'package:flutter_chat_app/core/error/failures.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase({required this.repository});

  Future<Either<UserAuthModel, Failure>> call(
      String userName, String password) async {
    return await repository.login(userName, password);
  }
}
