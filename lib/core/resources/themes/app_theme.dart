import 'package:flutter/material.dart';
import 'package:movie_app/core/resources/constant/app_colors.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    scaffoldBackgroundColor: AppColors.primaryBackground,

    // Bottom nav bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.secondaryBackground,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.primaryText,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
