import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = _buildLightTheme();

  static ThemeData darkTheme = _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    return ThemeData.light(useMaterial3: true);
  }

  static ThemeData _buildDarkTheme() {
    return ThemeData.dark(useMaterial3: true);
  }
}