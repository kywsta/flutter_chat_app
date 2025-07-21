import 'package:flutter/widgets.dart';
import 'package:flutter_chat_app/core/auth/bloc/auth_bloc.dart';
import 'package:flutter_chat_app/core/navigation/router_refresh_listenable.dart';
import 'package:flutter_chat_app/features/auth/routes.dart';
import 'package:flutter_chat_app/features/home/routes.dart';
import 'package:go_router/go_router.dart';

class AppNavigatorKey {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;
}

class AppRouter {
  final GoRouter router;

  AppRouter(AuthBloc authBloc)
      : router = GoRouter(
          navigatorKey: AppNavigatorKey.navigatorKey,
          routes: [
            ...AuthRoutes.routes,
            ...HomeRoutes.routes,
          ],
          redirect: (context, state) {
            debugPrint("Current path: ${state.fullPath}");
            final authState = authBloc.state;
            final isAuthenticated = authState is Authenticated;

            if (!isAuthenticated &&
                (state.fullPath != HomeRoutes.landing &&
                    state.fullPath != AuthRoutes.login)) {
              debugPrint("Not authenticated, redirecting to landing");
              return HomeRoutes.landing;
            }

            if (state.topRoute?.path == AuthRoutes.login && isAuthenticated) {
              debugPrint("Login success, redirecting to chats");
              return HomeRoutes.chats;
            }

            return null;
          },
          refreshListenable: RouterRefreshListenable(authBloc.stream),
        );
}
