import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors {
  static const light = Color(0xFFffffff);
  static const dark = Color(0xFF454545);
  static const accent = Color(0xFFf36e6e);
}

abstract class AppTheme {
  static ThemeData light() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        textTheme: GoogleFonts.mulishTextTheme().apply(bodyColor: AppColors.dark),
        backgroundColor: AppColors.accent,
        scaffoldBackgroundColor: AppColors.light,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.dark),
        ),
        iconTheme: const IconThemeData(color: AppColors.dark),
      );

  static ThemeData dark() => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.mulishTextTheme().apply(bodyColor: AppColors.light),
        backgroundColor: AppColors.accent,
        scaffoldBackgroundColor: AppColors.dark,
        cardColor: AppColors.light,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.light),
        ),
        iconTheme: const IconThemeData(color: AppColors.dark),
      );
}
