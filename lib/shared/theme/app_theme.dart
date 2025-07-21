import 'package:flutter/material.dart';

final _borderRadius = BorderRadius.circular(10);

const _buttonHeight = 56.0;

class AppTheme {
  static ThemeData lightTheme = _buildLightTheme();

  static ThemeData darkTheme = _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    return _buildTheme(ThemeData.light(useMaterial3: true));
  }

  static ThemeData _buildDarkTheme() {
    return _buildTheme(ThemeData.dark(useMaterial3: true));
  }

  static ThemeData _buildTheme(ThemeData base) {
    return base.copyWith(
      actionIconTheme: ActionIconThemeData(
        backButtonIconBuilder: (BuildContext context) => Icon(Icons.arrow_back),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: _borderRadius,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: _borderRadius,
          ),
          minimumSize: const Size(double.infinity, _buttonHeight),
        ),
      ),
    );
  }
}
