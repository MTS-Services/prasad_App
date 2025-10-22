import 'package:flutter/material.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'app_colors.dart';

ThemeData themeData() {
  return ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: AppColors.whiteColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      selectedLabelStyle: AppTextStyles.medium12,
      unselectedLabelStyle: AppTextStyles.medium12,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.bottomNaviTextColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      iconTheme: IconThemeData(color: AppColors.whiteColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.whiteColor,
        foregroundColor: AppColors.blackColor,
        side: const BorderSide(color: AppColors.borderColorGrey, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whiteColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.borderColorBlue),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.borderColorBlue),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.borderColorBlue),
      ),
      hintStyle: const TextStyle(color: AppColors.borderColorBlue),
    ),
  );
}
