import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';

class TodoThemeData {
  static ThemeData get themeData {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroudColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroudColor,
        scrolledUnderElevation: 0.0,
      ),
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: backgroudColor,
      ),
      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: titleTextColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
