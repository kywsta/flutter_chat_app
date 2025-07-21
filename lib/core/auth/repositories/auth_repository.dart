import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/base/repository.dart';
import 'package:flutter_chat_app/core/error/failures.dart';

abstract class AuthRepository extends Repository {
  final StreamController<UserAuthModel?> _controller = StreamController<UserAuthModel?>();

  Stream<UserAuthModel?> get authStateStream => _controller.stream;

  UserAuthModel? _authState;

  UserAuthModel? get authState => _authState;

  set authState(UserAuthModel? authModel) {
    _authState = authModel;
    _controller.add(authModel);
  }

  Future<Either<UserAuthModel, Failure>> login(
      String userName, String password);

  void logout();
}
