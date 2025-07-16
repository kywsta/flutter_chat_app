import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/core/auth/models/user_auth_model.dart';

class AuthSession extends ChangeNotifier {
  static final AuthSession _singleton = AuthSession._internal();

  factory AuthSession() {
    return _singleton;
  }

  AuthSession._internal();

  UserAuthModel? _userAuthModel;

  UserAuthModel? get userAuthModel => _userAuthModel;

  void setAuthSession(UserAuthModel userAuthModel) {
    _userAuthModel = userAuthModel;
    notifyListeners();
  }

  void clearAuthSession() {
    _userAuthModel = null;
    notifyListeners();
  }

  bool get isAuthenticated => _userAuthModel != null;

  String? get authToken => _userAuthModel?.token;

  String? get userId => _userAuthModel?.user.id;

  String? get userName => _userAuthModel?.user.username;

  String? get email => _userAuthModel?.user.email;
}
