import 'package:flutter/material.dart';
import 'package:quran_application_primary/core/colors_manager.dart';

class myTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 36,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    textTheme: const TextTheme(
      labelMedium: TextStyle(
        color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w400, fontSize: 25),
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      color: colorsManager.goldColor.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 14,
    ),
    dividerColor: colorsManager.goldColor,
  );
}
