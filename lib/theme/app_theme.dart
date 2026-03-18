import 'package:flutter/material.dart';
import 'package:study_mate/theme/app_colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.appBarBackground,
        foregroundColor: Colors.black,
      ),
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: AppColors.bottomNavBackground,
        indicatorColor: AppColors.primary,
        iconTheme: WidgetStatePropertyAll(IconThemeData(color: Colors.black)),
        labelTextStyle: WidgetStatePropertyAll(TextStyle(color: Colors.black)),
      ),
    );
  }
}
