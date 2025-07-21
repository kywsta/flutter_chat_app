import 'package:flutter/material.dart';
import 'package:flutter_chat_app/features/chat/routes.dart';
import 'package:flutter_chat_app/features/home/presentation/home_page.dart';
import 'package:flutter_chat_app/features/home/presentation/landing_page.dart';
import 'package:go_router/go_router.dart';

final _chatsNavigatorKey = GlobalKey<NavigatorState>();
final _profileNavigatorKey = GlobalKey<NavigatorState>();
final _settingsNavigatorKey = GlobalKey<NavigatorState>();

class HomeRoutes {
  static const landing = '/';
  static const home = ChatRoutes.chats;
  static const profile = '/profile';
  static const settings = '/settings';

  static final routes = [
    GoRoute(
      path: landing,
      builder: (context, state) => const LandingPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomePage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _chatsNavigatorKey,
          routes: [
            ...ChatRoutes.shellRoutes,
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _profileNavigatorKey,
          routes: [
            GoRoute(
              path: profile,
              builder: (context, state) => const ChildPage(pageName: 'Profile'),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _settingsNavigatorKey,
          routes: [
            GoRoute(
              path: settings,
              builder: (context, state) =>
                  const ChildPage(pageName: 'Settings'),
            ),
          ],
        )
      ],
    )
  ];
}
