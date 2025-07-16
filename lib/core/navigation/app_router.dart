import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/features/auth/routes.dart';
import 'package:flutter_chat_app/features/home/routes.dart';
import 'package:go_router/go_router.dart';

class AppNavigatorKey {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;
}

class AppRouter {
  static final AppRouter _instance = AppRouter._();

  AppRouter._();

  factory AppRouter() => _instance;

  final router = GoRouter(
    navigatorKey: AppNavigatorKey.navigatorKey,
    routes: [
      ...HomeRoutes.routes,
      ...AuthRoutes.routes,
    ],
  );
}
