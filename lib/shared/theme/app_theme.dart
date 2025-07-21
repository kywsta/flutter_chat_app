import 'package:flutter/material.dart';

final _borderRadius = BorderRadius.circular(10);

const _buttonHeight = 56.0;

class AppTheme {
  static ThemeData lightTheme = _buildLightTheme();

  static ThemeData darkTheme = _buildDarkTheme();

  static ThemeData _buildLightTheme() {
    return _buildTheme(ThemeData.light(useMaterial3: true), Brightness.light);
  }

  static ThemeData _buildDarkTheme() {
    return _buildTheme(ThemeData.dark(useMaterial3: true), Brightness.dark);
  }

  static ThemeData _buildTheme(ThemeData base, Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: brightness,
    );

    return base.copyWith(
      colorScheme: colorScheme,
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
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surfaceContainer,
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onSurface,
      ),
    );
  }
}
