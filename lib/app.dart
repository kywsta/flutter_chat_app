import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/auth/bloc/auth_bloc.dart';
import 'package:flutter_chat_app/core/di/service_locator.dart';
import 'package:flutter_chat_app/core/navigation/app_router.dart';
import 'package:flutter_chat_app/shared/theme/app_theme_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppThemeCubit()),
        BlocProvider(create: (context) => serviceLocator.get<AuthBloc>()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            routerConfig: serviceLocator.get<AppRouter>().router,
            debugShowCheckedModeBanner: false,
            theme: context.watch<AppThemeCubit>().state,
          );
        },
      ),
    );
  }
}
