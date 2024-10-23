import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage = 'en';

  void changeAppTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    saveTheme(newTheme);
    notifyListeners();
  }

  bool isLightTheme() {
    return currentTheme == ThemeMode.light;
  }

  void changeAppLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  void saveTheme(ThemeMode themeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', themeMode == ThemeMode.light ? 'light' : 'dark');
  }

  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString('theme');
    currentTheme = (theme == 'dark') ? ThemeMode.dark : ThemeMode.light;
    notifyListeners(); // Notify listeners after loading the theme
  }
}
