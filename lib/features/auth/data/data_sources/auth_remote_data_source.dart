import 'package:dio/dio.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/constants/network.dart';

abstract class AuthRemoteDataSource {
  Future<UserAuthModel> login(String userName, String password);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<UserAuthModel> login(String userName, String password) async {
    final url = NetworkConstants.login;

    final response = await dio.post(url, data: {
      'username': userName,
      'password': password,
    });

    return UserAuthModel.fromJson(response.data);
  }
}
