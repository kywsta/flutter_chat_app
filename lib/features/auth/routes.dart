import 'package:flutter_chat_app/core/navigation/app_router.dart';
import 'package:flutter_chat_app/features/auth/presentation/login_page.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static const login = '/login';

  static final routes = [
    GoRoute(
      path: login,
      builder: (context, state) => const LoginPage(),
    ),
  ];

  static void navigateToLogin() {
    AppRouter().router.go(login);
  }
}

extension AuthRoutesExtension on AppRouter {
  void navigateToLogin() {
    router.go(AuthRoutes.login);
  }
}
