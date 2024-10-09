import 'package:flutter/material.dart';

import '../config/my_theme/my_theme.dart';
import '../core/routes_manager.dart';
import '../presentation/hadith_details_screen/hadith_details_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/quran_details_screen/quran_details_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';

class quranApp extends StatelessWidget {
  const quranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: "Quran App",
      routes: {
        routeManager.splashScreen: (_) => SplashScreen(),
        routeManager.homeScreen: (_) => homeScreen(),
        routeManager.quranDetailsScreen: (_) => quranDetailsScreen(),
        routeManager.hadithDetailsScreen: (_) => hadithDetailsScreen(),
      },
      initialRoute: routeManager.splashScreen,
    );
  }
}
