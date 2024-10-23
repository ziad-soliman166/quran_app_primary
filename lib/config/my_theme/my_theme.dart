import 'package:flutter/material.dart';
import 'package:quran_application_primary/core/colors_manager.dart';

class myTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: colorsManager.lightPrimary,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: colorsManager.lightPrimary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ))),
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
        headlineMedium: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        bodyLarge: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 21),
        displaySmall: TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 21),
      ),
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        color: colorsManager.lightPrimary.withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 14,
      ),
      dividerColor: colorsManager.lightPrimary,
      iconTheme:
          const IconThemeData(color: Colors.white, size: 30, weight: 100));
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  static ThemeData darkTheme = ThemeData(
    primaryColor: colorsManager.darkPrimary,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: colorsManager.darkPrimary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ))),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: colorsManager.yellow,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 36,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    textTheme: const TextTheme(
      labelMedium: TextStyle(
        color: Colors.white,
        fontSize: 21,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
          color: colorsManager.yellow,
          fontWeight: FontWeight.w400,
          fontSize: 25),
      headlineMedium: TextStyle(
          color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
      headlineSmall: TextStyle(
          color: colorsManager.yellow,
          fontSize: 16,
          fontWeight: FontWeight.w400),
      bodyLarge: TextStyle(
          color: colorsManager.yellow,
          fontWeight: FontWeight.w500,
          fontSize: 21),
      displaySmall: TextStyle(
        color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 21),
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      color: colorsManager.darkPrimary.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 14,
    ),
    dividerColor: colorsManager.yellow,
    iconTheme:
        const IconThemeData(color: colorsManager.yellow, size: 30, weight: 100),
  );
}
