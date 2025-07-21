import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/auth/use_cases/login_use_case.dart';
import 'package:flutter_chat_app/core/di/service_locator.dart';
import 'package:flutter_chat_app/core/navigation/app_router.dart';
import 'package:flutter_chat_app/features/auth/presentation/bloc/login_bloc.dart';
import 'package:flutter_chat_app/features/auth/presentation/login_page.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static const login = '/login';

  static final routes = [
    GoRoute(
      path: login,
      builder: (context, state) => BlocProvider(
        create: (context) => LoginBloc(
          loginUseCase: serviceLocator.get<LoginUseCase>(),
        ),
        child: const LoginPage(),
      ),
    ),
  ];
}

extension AuthRoutesExtension on AppRouter {
  void navigateToLogin() {
    router.push(AuthRoutes.login);
  }
}
