import 'package:flutter_chat_app/core/auth/bloc/auth_bloc.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';
import 'package:flutter_chat_app/core/di/service_locator.dart';

class AuthSession {
  static final AuthSession _singleton = AuthSession._internal();

  factory AuthSession() {
    return _singleton;
  }

  AuthSession._internal();

  UserAuthModel? get userAuthModel => (serviceLocator.get<AuthBloc>().state
          is Authenticated)
      ? (serviceLocator.get<AuthBloc>().state as Authenticated).userAuthModel
      : null;

  bool get isAuthenticated => userAuthModel != null;

  String? get authToken => userAuthModel?.token;

  String? get userId => userAuthModel?.user.id;

  String? get userName => userAuthModel?.user.username;

  String? get email => userAuthModel?.user.email;
}
