import 'package:flutter/material.dart';
import 'package:test/styles/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.kAppIvory,
      primaryColor: AppColors.kAppClay,
      colorScheme: ColorScheme.light(
        primary: AppColors.kAppClay,
        secondary: AppColors.kAppSand,
        surface: AppColors.kAppSilver,
        onPrimary: Colors.white,
        onSecondary: AppColors.kAppBlack,
        onSurface: AppColors.kAppBlack,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.kAppClay,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: AppColors.kAppIvory,
          fontSize: 32,
          fontFamily: "Sora",
          fontWeight: FontWeight.bold,
          height: 1.5,
        ),
        headlineMedium: TextStyle(
          color: AppColors.kAppIvory,
          fontSize: 16,
          fontFamily: "Sora",
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        headlineSmall: TextStyle(
          color: AppColors.kAppSilver,
          fontSize: 14,
          fontFamily: "Sora",
          height: 1.5,
        ),
        bodyMedium: TextStyle(
          color: AppColors.kAppBlack,
          fontSize: 16,
          fontFamily: "Sora",
          fontWeight: FontWeight.w600,
        ),
        bodySmall: TextStyle(
          color: AppColors.kAppSilver,
          fontSize: 12,
          fontFamily: "Sora",
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kAppClay,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      ),
    );
  }
}
