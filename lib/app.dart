import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/navigation/app_router.dart';
import 'package:flutter_chat_app/shared/theme/app_theme_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppThemeCubit()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            routerConfig: AppRouter().router,
            debugShowCheckedModeBanner: false,
            theme: context.watch<AppThemeCubit>().state,
          );
        },
      ),
    );
  }
}
