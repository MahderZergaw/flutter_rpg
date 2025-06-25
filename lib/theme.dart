import 'package:flutter/material.dart';

class AppColors{
 
 static Color primaryColor = const Color.fromRGBO(162, 29, 19, 1);
  static Color primaryAccent = const Color.fromRGBO(120, 14, 14, 1);
  static Color secondaryColor = const Color.fromRGBO(45, 45, 45, 1);
  static Color secondaryAccent = const Color.fromRGBO(35, 35, 35, 1);
  static Color titleColor = const Color.fromRGBO(200, 200, 200, 1);
  static Color textColor = const Color.fromRGBO(150, 150, 150, 1);
  static Color successColor = const Color.fromRGBO(9, 149, 110, 1);
  static Color highlightColor = const Color.fromRGBO(212, 172, 13, 1);

}
ThemeData primaryTheme =ThemeData(

  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor
    ),

  //scaffold 
  
  scaffoldBackgroundColor:
   AppColors.secondaryAccent,

   //appbar

  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    centerTitle: true,

  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.titleColor,
      letterSpacing: 1,
      fontSize: 16,
    ),
    titleMedium: TextStyle(
      color: AppColors.titleColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      letterSpacing: 1,
          ),
      headlineMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      )    
  ),
  cardTheme: CardThemeData(
   surfaceTintColor: Colors.transparent,
   color: AppColors.secondaryColor.withOpacity(0.5),
   shadowColor: Colors.transparent,
   shape: RoundedRectangleBorder(),
   margin:const EdgeInsets.only(bottom: 16),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: InputBorder.none,
    filled: true,
    fillColor: AppColors.secondaryColor.withOpacity(0.5),
    prefixIconColor: AppColors.textColor,
    labelStyle: TextStyle(color: AppColors.textColor),
  ),
);

