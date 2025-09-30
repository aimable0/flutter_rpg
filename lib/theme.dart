import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class AppColors {
  static Color primaryColor = const Color.fromRGBO(162, 29, 19, 1);
  static Color primaryAccent = const Color.fromRGBO(120, 14, 14, 1);
  static Color secondaryColor = const Color.fromRGBO(45, 45, 45, 1);
  static Color secondaryAccent = const Color.fromRGBO(35, 35, 35, 1);
  static Color titleColor = const Color.fromRGBO(200, 200, 200, 1);
  static Color textColor = const Color.fromRGBO(150, 150, 150, 1);
  static Color successColor = const Color.fromRGBO(9, 149, 110, 1);
  static Color highlightColor = const Color.fromRGBO(212, 172, 13, 1);
}

ThemeData primarytheme = ThemeData(
  // seed color
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),

  // scaffold theme (body)
  scaffoldBackgroundColor: AppColors.secondaryAccent,

  // appbar theme
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),

  // texttheme.
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 18,
      letterSpacing: 2,
      fontWeight: FontWeight.bold,
    ),
  ),

  // cardtheme.
  cardTheme: CardThemeData(
    color: AppColors.secondaryColor.withOpacity(0.5),
    shape: RoundedRectangleBorder(),
    shadowColor: Colors.transparent, // not sure what's happening here
    margin: EdgeInsets.only(bottom: 16),
  ),

  // input data them
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.secondaryColor.withOpacity(0.5),
    border: InputBorder.none,
    prefixIconColor: AppColors.textColor,
    labelStyle: TextStyle(color: AppColors.textColor),
  ),
);
