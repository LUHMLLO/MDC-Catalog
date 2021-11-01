import 'package:flutter/material.dart';

abstract class AppColors {
  static const light = Color(0xFFffffff);
  static const dark = Color(0xFF454545);
}

abstract class AppTheme {
  static ThemeData light() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        backgroundColor: Colors.red[400],
        scaffoldBackgroundColor: Colors.red[400],
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.dark),
        ),
        iconTheme: const IconThemeData(color: AppColors.dark),
      );

  static ThemeData dark() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        backgroundColor: Colors.red[400],
        scaffoldBackgroundColor: Colors.red[400],
        cardColor: AppColors.light,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.light),
        ),
        iconTheme: const IconThemeData(color: AppColors.dark),
      );
}
