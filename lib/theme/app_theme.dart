import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/elevated_button_theme.dart';
import '../utils/text_themes.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    primaryColor: AppColors.primary,
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    primaryColor: AppColors.primary,
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
  );
}