import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/auth/repositories/auth_repository.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/features/auth/data/data_sources/auth_remote_data_source.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource dataSource;

  AuthRepositoryImpl({required this.dataSource});

  @override
  Future<Either<UserAuthModel, Failure>> login(
      String userName, String password) async {
    return await on(() async => await dataSource.login(userName, password));
  }

  @override
  Future<void> logout() async {
    // Do something like clear the token from the local storage
    return;
  }
}
