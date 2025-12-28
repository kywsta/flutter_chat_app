import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/constants/network.dart';
import 'package:flutter_chat_app/core/error/failures.dart';
import 'package:flutter_chat_app/core/network/api_call_handler.dart';

abstract class AuthRemoteDataSource {
  Future<Either<UserAuthModel, Failure>> login(
      String userName, String password);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<Either<UserAuthModel, Failure>> login(
      String userName, String password) async {
    final url = NetworkConstants.login;

    return ApiCallHandler.on(() async {
      final response = await dio.post(url, data: {
        'username': userName,
        'password': password,
      });
      return UserAuthModel.fromJson(response.data);
    });
  }
}
