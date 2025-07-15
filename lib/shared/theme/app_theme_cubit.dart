import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/shared/theme/app_theme.dart';

class AppThemeCubit extends Cubit<ThemeData> {
  AppThemeCubit() : super(AppTheme.lightTheme);

  void toggleTheme() {
    emit(state == AppTheme.lightTheme
        ? AppTheme.darkTheme
        : AppTheme.lightTheme);
  }
}
