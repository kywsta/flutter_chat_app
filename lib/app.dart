import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/features/home/presentation/landing_page.dart';
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
          return MaterialApp(
            theme: context.watch<AppThemeCubit>().state,
            home: const LandingPage(),
          );
        },
      ),
    );
  }
}
